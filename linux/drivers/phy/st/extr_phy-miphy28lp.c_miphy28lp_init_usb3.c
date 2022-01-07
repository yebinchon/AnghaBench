
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miphy28lp_phy {scalar_t__ pipebase; int base; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int dev; } ;


 int EINVAL ;
 int MIPHY_CTRL_SYNC_D_EN ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ) ;
 int miphy28lp_configure_usb3 (struct miphy28lp_phy*) ;
 int miphy28lp_setup (struct miphy28lp_phy*,int ) ;
 int miphy_is_ready (struct miphy28lp_phy*) ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static int miphy28lp_init_usb3(struct miphy28lp_phy *miphy_phy)
{
 struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
 int err;

 if ((!miphy_phy->base) || (!miphy_phy->pipebase))
  return -EINVAL;

 dev_info(miphy_dev->dev, "usb3-up mode, addr 0x%p\n", miphy_phy->base);


 err = miphy28lp_setup(miphy_phy, MIPHY_CTRL_SYNC_D_EN);
 if (err) {
  dev_err(miphy_dev->dev, "USB3 phy setup failed\n");
  return err;
 }


 miphy28lp_configure_usb3(miphy_phy);


 writeb_relaxed(0x68, miphy_phy->pipebase + 0x23);
 writeb_relaxed(0x61, miphy_phy->pipebase + 0x24);
 writeb_relaxed(0x68, miphy_phy->pipebase + 0x26);
 writeb_relaxed(0x61, miphy_phy->pipebase + 0x27);
 writeb_relaxed(0x18, miphy_phy->pipebase + 0x29);
 writeb_relaxed(0x61, miphy_phy->pipebase + 0x2a);


 writeb_relaxed(0X67, miphy_phy->pipebase + 0x68);
 writeb_relaxed(0x0d, miphy_phy->pipebase + 0x69);
 writeb_relaxed(0X67, miphy_phy->pipebase + 0x6a);
 writeb_relaxed(0X0d, miphy_phy->pipebase + 0x6b);
 writeb_relaxed(0X67, miphy_phy->pipebase + 0x6c);
 writeb_relaxed(0X0d, miphy_phy->pipebase + 0x6d);
 writeb_relaxed(0X67, miphy_phy->pipebase + 0x6e);
 writeb_relaxed(0X0d, miphy_phy->pipebase + 0x6f);

 return miphy_is_ready(miphy_phy);
}
