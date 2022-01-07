
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; } ;
struct idt_ntb_bar {int setup; } ;
struct idt_mw_cfg {int type; unsigned char bar; unsigned char idx; int size_max; int size_align; int addr_align; } ;
typedef enum idt_mw_type { ____Placeholder_idt_mw_type } idt_mw_type ;
struct TYPE_6__ {struct idt_ntb_bar* bars; } ;
struct TYPE_4__ {int dev; } ;


 int BARSETUP_ATRAN ;
 int BARSETUP_SIZE ;
 int BARSETUP_TYPE ;
 int EINVAL ;
 int ENOMEM ;
 struct idt_mw_cfg* ERR_PTR (int ) ;
 int GET_FIELD (int ,int) ;
 int GFP_KERNEL ;
 int IDT_BARSETUP_EN ;
 int IDT_BARSETUP_MODE_CFG ;
 unsigned char IDT_BAR_CNT ;
 int IDT_DIR_SIZE_ALIGN ;
 int IDT_MAX_NR_MWS ;
 int IDT_MW_DIR ;
 int IDT_MW_LUT12 ;
 int IDT_TRANS_ALIGN ;
 int IS_FLD_SET (int ,int,int) ;
 struct idt_mw_cfg* devm_kcalloc (int *,unsigned char,int,int ) ;
 unsigned char idt_get_mw_count (int) ;
 int idt_sw_read (struct idt_ntb_dev*,int ) ;
 int memcpy (struct idt_mw_cfg*,struct idt_mw_cfg*,unsigned char) ;
 TYPE_3__* portdata_tbl ;

__attribute__((used)) static struct idt_mw_cfg *idt_scan_mws(struct idt_ntb_dev *ndev, int port,
           unsigned char *mw_cnt)
{
 struct idt_mw_cfg mws[IDT_MAX_NR_MWS], *ret_mws;
 const struct idt_ntb_bar *bars;
 enum idt_mw_type mw_type;
 unsigned char widx, bidx, en_cnt;
 bool bar_64bit = 0;
 int aprt_size;
 u32 data;


 bars = portdata_tbl[port].bars;


 *mw_cnt = 0;
 for (bidx = 0; bidx < IDT_BAR_CNT; bidx += 1 + bar_64bit) {

  data = idt_sw_read(ndev, bars[bidx].setup);


  if (!(data & IDT_BARSETUP_EN)) {
   bar_64bit = 0;
   continue;
  }


  bar_64bit = IS_FLD_SET(BARSETUP_TYPE, data, 64);


  if (data & IDT_BARSETUP_MODE_CFG)
   continue;


  mw_type = GET_FIELD(BARSETUP_ATRAN, data);
  en_cnt = idt_get_mw_count(mw_type);
  aprt_size = (u64)1 << GET_FIELD(BARSETUP_SIZE, data);


  for (widx = 0; widx < en_cnt; widx++, (*mw_cnt)++) {




   if (*mw_cnt >= IDT_MAX_NR_MWS)
    return ERR_PTR(-EINVAL);


   mws[*mw_cnt].type = mw_type;
   mws[*mw_cnt].bar = bidx;
   mws[*mw_cnt].idx = widx;

   mws[*mw_cnt].addr_align = IDT_TRANS_ALIGN;

   if (mw_type == IDT_MW_DIR)
    mws[*mw_cnt].size_max = aprt_size;
   else if (mw_type == IDT_MW_LUT12)
    mws[*mw_cnt].size_max = aprt_size / 16;
   else
    mws[*mw_cnt].size_max = aprt_size / 32;
   mws[*mw_cnt].size_align = (mw_type == IDT_MW_DIR) ?
    IDT_DIR_SIZE_ALIGN : mws[*mw_cnt].size_max;
  }
 }


 ret_mws = devm_kcalloc(&ndev->ntb.pdev->dev, *mw_cnt, sizeof(*ret_mws),
          GFP_KERNEL);
 if (!ret_mws)
  return ERR_PTR(-ENOMEM);


 memcpy(ret_mws, mws, (*mw_cnt)*sizeof(*ret_mws));

 return ret_mws;
}
