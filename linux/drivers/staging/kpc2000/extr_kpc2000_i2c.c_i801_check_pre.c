
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct i2c_device {TYPE_1__ adapter; } ;


 int EBUSY ;
 int SMBHSTSTS (struct i2c_device*) ;
 int SMBHSTSTS_HOST_BUSY ;
 int STATUS_FLAGS ;
 int dev_err (int *,char*,int) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int i801_check_pre(struct i2c_device *priv)
{
 int status;

 status = inb_p(SMBHSTSTS(priv));
 if (status & SMBHSTSTS_HOST_BUSY) {
  dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
  return -EBUSY;
 }

 status &= STATUS_FLAGS;
 if (status) {

  outb_p(status, SMBHSTSTS(priv));
  status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
  if (status) {
   dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
   return -EBUSY;
  }
 }
 return 0;
}
