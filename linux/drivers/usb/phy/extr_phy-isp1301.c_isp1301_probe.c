
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int type; int set_vbus; int init; int label; int * dev; } ;
struct isp1301 {struct usb_phy phy; int mutex; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_PHY_TYPE_USB2 ;
 struct isp1301* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct isp1301*) ;
 struct i2c_client* isp1301_i2c_client ;
 int isp1301_phy_init ;
 int isp1301_phy_set_vbus ;
 int mutex_init (int *) ;
 int usb_add_phy_dev (struct usb_phy*) ;

__attribute__((used)) static int isp1301_probe(struct i2c_client *client,
    const struct i2c_device_id *i2c_id)
{
 struct isp1301 *isp;
 struct usb_phy *phy;

 isp = devm_kzalloc(&client->dev, sizeof(*isp), GFP_KERNEL);
 if (!isp)
  return -ENOMEM;

 isp->client = client;
 mutex_init(&isp->mutex);

 phy = &isp->phy;
 phy->dev = &client->dev;
 phy->label = DRV_NAME;
 phy->init = isp1301_phy_init;
 phy->set_vbus = isp1301_phy_set_vbus;
 phy->type = USB_PHY_TYPE_USB2;

 i2c_set_clientdata(client, isp);
 usb_add_phy_dev(phy);

 isp1301_i2c_client = client;

 return 0;
}
