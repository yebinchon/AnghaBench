
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_mei_phy {int send_wq; struct mei_cl_device* cldev; } ;
struct mei_cl_device {int dummy; } ;


 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct nfc_mei_phy* kzalloc (int,int ) ;
 int mei_cldev_set_drvdata (struct mei_cl_device*,struct nfc_mei_phy*) ;

struct nfc_mei_phy *nfc_mei_phy_alloc(struct mei_cl_device *cldev)
{
 struct nfc_mei_phy *phy;

 phy = kzalloc(sizeof(struct nfc_mei_phy), GFP_KERNEL);
 if (!phy)
  return ((void*)0);

 phy->cldev = cldev;
 init_waitqueue_head(&phy->send_wq);
 mei_cldev_set_drvdata(cldev, phy);

 return phy;
}
