
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct pn533_i2c_phy {scalar_t__ hard_fault; int aborted; struct pn533* priv; struct i2c_client* i2c_dev; } ;
struct pn533 {struct pn533_i2c_phy* phy; } ;
struct i2c_client {int dummy; } ;


 int DUMP_PREFIX_NONE ;
 int EREMOTEIO ;
 int i2c_master_send (struct i2c_client*,int ,int) ;
 int print_hex_dump_debug (char*,int ,int,int,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pn533_i2c_send_frame(struct pn533 *dev,
    struct sk_buff *out)
{
 struct pn533_i2c_phy *phy = dev->phy;
 struct i2c_client *client = phy->i2c_dev;
 int rc;

 if (phy->hard_fault != 0)
  return phy->hard_fault;

 if (phy->priv == ((void*)0))
  phy->priv = dev;

 phy->aborted = 0;

 print_hex_dump_debug("PN533_i2c TX: ", DUMP_PREFIX_NONE, 16, 1,
        out->data, out->len, 0);

 rc = i2c_master_send(client, out->data, out->len);

 if (rc == -EREMOTEIO) {
  usleep_range(6000, 10000);
  rc = i2c_master_send(client, out->data, out->len);
 }

 if (rc >= 0) {
  if (rc != out->len)
   rc = -EREMOTEIO;
  else
   rc = 0;
 }

 return rc;
}
