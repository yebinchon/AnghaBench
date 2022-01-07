
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct i2c_device {TYPE_1__ adapter; } ;


 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int SMBHSTCNT (struct i2c_device*) ;
 int SMBHSTCNT_KILL ;
 int SMBHSTSTS (struct i2c_device*) ;
 int SMBHSTSTS_BUS_ERR ;
 int SMBHSTSTS_DEV_ERR ;
 int SMBHSTSTS_FAILED ;
 int SMBHSTSTS_HOST_BUSY ;
 int STATUS_FLAGS ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int i801_check_post(struct i2c_device *priv, int status, int timeout)
{
 int result = 0;


 if (timeout) {
  dev_err(&priv->adapter.dev, "Transaction timeout\n");

  dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
  outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
  usleep_range(1000, 2000);
  outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL), SMBHSTCNT(priv));


  status = inb_p(SMBHSTSTS(priv));
  if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED))
   dev_err(&priv->adapter.dev, "Failed terminating the transaction\n");
  outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
  return -ETIMEDOUT;
 }

 if (status & SMBHSTSTS_FAILED) {
  result = -EIO;
  dev_err(&priv->adapter.dev, "Transaction failed\n");
 }
 if (status & SMBHSTSTS_DEV_ERR) {
  result = -ENXIO;
  dev_dbg(&priv->adapter.dev, "No response\n");
 }
 if (status & SMBHSTSTS_BUS_ERR) {
  result = -EAGAIN;
  dev_dbg(&priv->adapter.dev, "Lost arbitration\n");
 }

 if (result) {

  outb_p(status & STATUS_FLAGS, SMBHSTSTS(priv));
  status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
  if (status)
   dev_warn(&priv->adapter.dev, "Failed clearing status flags at end of transaction (%02x)\n", status);
 }

 return result;
}
