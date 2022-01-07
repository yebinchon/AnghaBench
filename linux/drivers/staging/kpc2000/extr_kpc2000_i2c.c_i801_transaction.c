
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device {int dummy; } ;


 int I801_START ;
 int MAX_RETRIES ;
 int SMBHSTCNT (struct i2c_device*) ;
 int SMBHSTSTS (struct i2c_device*) ;
 int SMBHSTSTS_HOST_BUSY ;
 int SMBHSTSTS_INTR ;
 int i801_check_post (struct i2c_device*,int,int) ;
 int i801_check_pre (struct i2c_device*) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int i801_transaction(struct i2c_device *priv, int xact)
{
 int status;
 int result;
 int timeout = 0;

 result = i801_check_pre(priv);
 if (result < 0)
  return result;



 outb_p(xact | I801_START, SMBHSTCNT(priv));


 do {
  usleep_range(250, 500);
  status = inb_p(SMBHSTSTS(priv));
 } while ((status & SMBHSTSTS_HOST_BUSY) && (timeout++ < MAX_RETRIES));

 result = i801_check_post(priv, status, timeout > MAX_RETRIES);
 if (result < 0)
  return result;

 outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
 return 0;
}
