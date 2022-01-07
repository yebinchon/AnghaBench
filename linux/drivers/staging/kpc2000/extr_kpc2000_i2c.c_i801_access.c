
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int byte; int word; } ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int dev; } ;
struct i2c_device {int features; TYPE_1__ adapter; } ;
struct i2c_adapter {int dummy; } ;
typedef int s32 ;


 int ENABLE_INT9 ;
 int EOPNOTSUPP ;
 int FEATURE_SMBUS_PEC ;
 unsigned short I2C_CLIENT_PEC ;





 char I2C_SMBUS_READ ;

 char I2C_SMBUS_WRITE ;


 int I801_QUICK ;

 int SMBAUXCTL (struct i2c_device*) ;
 int SMBAUXCTL_CRC ;
 int SMBAUXCTL_E32B ;
 int SMBHSTADD (struct i2c_device*) ;
 int SMBHSTCMD (struct i2c_device*) ;
 int SMBHSTDAT0 (struct i2c_device*) ;
 int SMBHSTDAT1 (struct i2c_device*) ;
 int dev_dbg (int *,char*,...) ;
 struct i2c_device* i2c_get_adapdata (struct i2c_adapter*) ;
 int i801_block_transaction (struct i2c_device*,union i2c_smbus_data*,char,int,int) ;
 int i801_transaction (struct i2c_device*,int) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags, char read_write, u8 command, int size, union i2c_smbus_data *data)
{
 int hwpec;
 int block = 0;
 int ret, xact = 0;
 struct i2c_device *priv = i2c_get_adapdata(adap);

 hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC) && size != 132 && size != 133;

 switch (size) {
 case 132:
  dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_QUICK\n");
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
  xact = I801_QUICK;
  break;
 case 135:
  dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE\n");

  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(command, SMBHSTCMD(priv));
  xact = 130;
  break;
 case 134:
  dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE_DATA\n");
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
  outb_p(command, SMBHSTCMD(priv));
  if (read_write == I2C_SMBUS_WRITE)
   outb_p(data->byte, SMBHSTDAT0(priv));
  xact = 129;
  break;
 case 131:
  dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_WORD_DATA\n");
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
  outb_p(command, SMBHSTCMD(priv));
  if (read_write == I2C_SMBUS_WRITE) {
   outb_p(data->word & 0xff, SMBHSTDAT0(priv));
   outb_p((data->word & 0xff00) >> 8, SMBHSTDAT1(priv));
  }
  xact = 128;
  break;
 case 136:
  dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BLOCK_DATA\n");
  outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
  outb_p(command, SMBHSTCMD(priv));
  block = 1;
  break;
 case 133:
  dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_I2C_BLOCK_DATA\n");



  outb_p((addr & 0x7f) << 1, SMBHSTADD(priv));
  if (read_write == I2C_SMBUS_READ) {



   outb_p(command, SMBHSTDAT1(priv));
  } else {
   outb_p(command, SMBHSTCMD(priv));
  }
  block = 1;
  break;
 default:
  dev_dbg(&priv->adapter.dev, "  [acc] Unsupported transaction %d\n", size);
  return -EOPNOTSUPP;
 }

 if (hwpec) {
  dev_dbg(&priv->adapter.dev, "  [acc] hwpec: yes\n");
  outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_CRC, SMBAUXCTL(priv));
 } else {
  dev_dbg(&priv->adapter.dev, "  [acc] hwpec: no\n");
  outb_p(inb_p(SMBAUXCTL(priv)) & (~SMBAUXCTL_CRC), SMBAUXCTL(priv));
 }

 if (block) {

  dev_dbg(&priv->adapter.dev, "  [acc] block: yes\n");
  ret = i801_block_transaction(priv, data, read_write, size, hwpec);
 } else {
  dev_dbg(&priv->adapter.dev, "  [acc] block: no\n");
  ret = i801_transaction(priv, xact | ENABLE_INT9);
 }





 if (hwpec || block) {
  dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
  outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
 }
 if (block) {
  dev_dbg(&priv->adapter.dev, "  [acc] block\n");
  return ret;
 }
 if (ret) {
  dev_dbg(&priv->adapter.dev, "  [acc] ret %d\n", ret);
  return ret;
 }
 if ((read_write == I2C_SMBUS_WRITE) || (xact == I801_QUICK)) {
  dev_dbg(&priv->adapter.dev, "  [acc] I2C_SMBUS_WRITE || I801_QUICK  -> ret 0\n");
  return 0;
 }

 switch (xact & 0x7f) {
 case 130:
 case 129:
  dev_dbg(&priv->adapter.dev, "  [acc] I801_BYTE or I801_BYTE_DATA\n");
  data->byte = inb_p(SMBHSTDAT0(priv));
  break;
 case 128:
  dev_dbg(&priv->adapter.dev, "  [acc] I801_WORD_DATA\n");
  data->word = inb_p(SMBHSTDAT0(priv)) + (inb_p(SMBHSTDAT1(priv)) << 8);
  break;
 }
 return 0;
}
