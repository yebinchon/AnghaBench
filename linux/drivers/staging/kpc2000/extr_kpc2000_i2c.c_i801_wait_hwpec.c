
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct i2c_device {TYPE_1__ adapter; } ;


 int MAX_RETRIES ;
 int SMBHSTSTS (struct i2c_device*) ;
 int SMBHSTSTS_INTR ;
 int dev_dbg (int *,char*) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void i801_wait_hwpec(struct i2c_device *priv)
{
 int timeout = 0;
 int status;

 do {
  usleep_range(250, 500);
  status = inb_p(SMBHSTSTS(priv));
 } while ((!(status & SMBHSTSTS_INTR)) && (timeout++ < MAX_RETRIES));

 if (timeout > MAX_RETRIES)
  dev_dbg(&priv->adapter.dev, "PEC Timeout!\n");

 outb_p(status, SMBHSTSTS(priv));
}
