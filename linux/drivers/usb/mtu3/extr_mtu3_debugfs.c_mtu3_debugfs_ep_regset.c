
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3_ep {int epnum; int is_in; } ;
struct mtu3 {int mac_base; int dev; } ;
struct dentry {int dummy; } ;
struct debugfs_reg32 {char* name; int offset; } ;


 int GFP_KERNEL ;
 int MU3D_EP_RXCR0 (int) ;
 int MU3D_EP_RXCR1 (int) ;
 int MU3D_EP_RXCR2 (int) ;
 int MU3D_EP_TXCR0 (int) ;
 int MU3D_EP_TXCR1 (int) ;
 int MU3D_EP_TXCR2 (int) ;
 int USB_QMU_RQCPR (int) ;
 int USB_QMU_RQCSR (int) ;
 int USB_QMU_RQHIAR (int) ;
 int USB_QMU_RQSAR (int) ;
 int USB_QMU_TQCPR (int) ;
 int USB_QMU_TQCSR (int) ;
 int USB_QMU_TQHIAR (int) ;
 int USB_QMU_TQSAR (int) ;
 struct debugfs_reg32* devm_kcalloc (int ,int,int,int ) ;
 int mtu3_debugfs_regset (struct mtu3*,int ,struct debugfs_reg32*,int,char*,struct dentry*) ;

__attribute__((used)) static void mtu3_debugfs_ep_regset(struct mtu3 *mtu, struct mtu3_ep *mep,
       struct dentry *parent)
{
 struct debugfs_reg32 *regs;
 int epnum = mep->epnum;
 int in = mep->is_in;

 regs = devm_kcalloc(mtu->dev, 7, sizeof(*regs), GFP_KERNEL);
 if (!regs)
  return;

 regs[0].name = in ? "TCR0" : "RCR0";
 regs[0].offset = in ? MU3D_EP_TXCR0(epnum) : MU3D_EP_RXCR0(epnum);
 regs[1].name = in ? "TCR1" : "RCR1";
 regs[1].offset = in ? MU3D_EP_TXCR1(epnum) : MU3D_EP_RXCR1(epnum);
 regs[2].name = in ? "TCR2" : "RCR2";
 regs[2].offset = in ? MU3D_EP_TXCR2(epnum) : MU3D_EP_RXCR2(epnum);
 regs[3].name = in ? "TQHIAR" : "RQHIAR";
 regs[3].offset = in ? USB_QMU_TQHIAR(epnum) : USB_QMU_RQHIAR(epnum);
 regs[4].name = in ? "TQCSR" : "RQCSR";
 regs[4].offset = in ? USB_QMU_TQCSR(epnum) : USB_QMU_RQCSR(epnum);
 regs[5].name = in ? "TQSAR" : "RQSAR";
 regs[5].offset = in ? USB_QMU_TQSAR(epnum) : USB_QMU_RQSAR(epnum);
 regs[6].name = in ? "TQCPR" : "RQCPR";
 regs[6].offset = in ? USB_QMU_TQCPR(epnum) : USB_QMU_RQCPR(epnum);

 mtu3_debugfs_regset(mtu, mtu->mac_base, regs, 7, "ep-regs", parent);
}
