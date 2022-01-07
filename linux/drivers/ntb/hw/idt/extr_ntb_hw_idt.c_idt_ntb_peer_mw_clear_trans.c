
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int peer_cnt; int mw_cnt; int lut_lock; struct idt_mw_cfg* mws; } ;
struct idt_ntb_bar {int limit; int setup; } ;
struct idt_mw_cfg {scalar_t__ type; size_t bar; size_t idx; } ;
struct TYPE_2__ {struct idt_ntb_bar* bars; } ;


 int BARSETUP_TYPE ;
 int EINVAL ;
 scalar_t__ IDT_MW_DIR ;
 int IDT_NT_LUTLDATA ;
 int IDT_NT_LUTMDATA ;
 int IDT_NT_LUTOFFSET ;
 int IDT_NT_LUTUDATA ;
 scalar_t__ IS_FLD_SET (int ,int,int) ;
 int LUTOFFSET_BAR ;
 int LUTOFFSET_INDEX ;
 int SET_FIELD (int ,int ,size_t) ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int) ;
 TYPE_1__ ntdata_tbl ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_peer_mw_clear_trans(struct ntb_dev *ntb, int pidx,
     int widx)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);
 struct idt_mw_cfg *mw_cfg;

 if (pidx < 0 || ndev->peer_cnt <= pidx)
  return -EINVAL;

 if (widx < 0 || ndev->mw_cnt <= widx)
  return -EINVAL;

 mw_cfg = &ndev->mws[widx];


 if (mw_cfg->type == IDT_MW_DIR) {
  const struct idt_ntb_bar *bar = &ntdata_tbl.bars[mw_cfg->bar];
  u32 data;

  data = idt_nt_read(ndev, bar->setup);

  idt_nt_write(ndev, bar->limit, 0);
  if (IS_FLD_SET(BARSETUP_TYPE, data, 64))
   idt_nt_write(ndev, (bar + 1)->limit, 0);
 } else {
  unsigned long irqflags;
  u32 lutoff;

  lutoff = SET_FIELD(LUTOFFSET_INDEX, 0, mw_cfg->idx) |
    SET_FIELD(LUTOFFSET_BAR, 0, mw_cfg->bar);
  spin_lock_irqsave(&ndev->lut_lock, irqflags);
  idt_nt_write(ndev, IDT_NT_LUTOFFSET, lutoff);
  idt_nt_write(ndev, IDT_NT_LUTLDATA, 0);
  idt_nt_write(ndev, IDT_NT_LUTMDATA, 0);
  idt_nt_write(ndev, IDT_NT_LUTUDATA, 0);
  spin_unlock_irqrestore(&ndev->lut_lock, irqflags);
 }

 return 0;
}
