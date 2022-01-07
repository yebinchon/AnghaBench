
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct idt_ntb_dev {int mtbl_lock; TYPE_1__* peers; } ;
struct TYPE_4__ {int ntctl; int pcicmdsts; int sts; } ;
struct TYPE_3__ {unsigned char port; int part; } ;


 int IDT_NTCTL_CPEN ;
 int IDT_NTMTBLDATA_VALID ;
 int IDT_NT_NTMTBLADDR ;
 int IDT_NT_NTMTBLDATA ;
 int IDT_PCICMDSTS_BME ;
 int IDT_SWPORTxSTS_LINKUP ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_nt_write (struct idt_ntb_dev*,int ,int ) ;
 int idt_sw_read (struct idt_ntb_dev*,int ) ;
 TYPE_2__* portdata_tbl ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool idt_ntb_peer_link_is_up(struct idt_ntb_dev *ndev, int pidx)
{
 unsigned long irqflags;
 unsigned char port;
 u32 data;


 port = ndev->peers[pidx].port;


 data = idt_sw_read(ndev, portdata_tbl[port].sts);
 if (!(data & IDT_SWPORTxSTS_LINKUP))
  return 0;


 data = idt_sw_read(ndev, portdata_tbl[port].pcicmdsts);
 if (!(data & IDT_PCICMDSTS_BME))
  return 0;


 data = idt_sw_read(ndev, portdata_tbl[port].ntctl);
 if (!(data & IDT_NTCTL_CPEN))
  return 0;


 spin_lock_irqsave(&ndev->mtbl_lock, irqflags);
 idt_nt_write(ndev, IDT_NT_NTMTBLADDR, ndev->peers[pidx].part);
 data = idt_nt_read(ndev, IDT_NT_NTMTBLDATA);
 spin_unlock_irqrestore(&ndev->mtbl_lock, irqflags);

 return !!(data & IDT_NTMTBLDATA_VALID);
}
