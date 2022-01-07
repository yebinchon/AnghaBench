
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn544_i2c_phy {struct i2c_client* i2c_dev; } ;
struct pn544_i2c_fw_frame_response {int status; } ;
struct i2c_client {int dev; } ;
typedef int response ;


 int EACCES ;
 int EBADMSG ;
 int EINVAL ;
 int EIO ;
 int ENODATA ;
 int ENOKEY ;
 int ENOMEM ;
 int ENOTSUPP ;
 int EPROTO ;
 int ETIMEDOUT ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int nfc_err (int *,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pn544_hci_i2c_fw_read_status(struct pn544_i2c_phy *phy)
{
 int r;
 struct pn544_i2c_fw_frame_response response;
 struct i2c_client *client = phy->i2c_dev;

 r = i2c_master_recv(client, (char *) &response, sizeof(response));
 if (r != sizeof(response)) {
  nfc_err(&client->dev, "cannot read fw status\n");
  return -EIO;
 }

 usleep_range(3000, 6000);

 switch (response.status) {
 case 0:
  return 0;
 case 138:
  return response.status;
 case 131:
  return -ETIMEDOUT;
 case 140:
  return -ENODATA;
 case 141:
  return -EACCES;
 case 132:
  return -EPROTO;
 case 134:
  return -EINVAL;
 case 130:
  return -ENOTSUPP;
 case 135:
  return -EBADMSG;
 case 136:
  return -ENOKEY;
 case 129:
  return -EINVAL;
 case 133:
  return -ENOMEM;
 case 137:
  return -EACCES;
 case 128:
 case 139:
  return -EIO;
 default:
  return -EIO;
 }
}
