
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int RV3028_CTRL1 ;
 int RV3028_CTRL1_EERD ;
 int RV3028_EEBUSY_POLL ;
 int RV3028_EEBUSY_TIMEOUT ;
 int RV3028_EEPROM_ADDR ;
 int RV3028_EEPROM_CMD ;
 int RV3028_EEPROM_CMD_READ ;
 int RV3028_EEPROM_DATA ;
 int RV3028_STATUS ;
 int RV3028_STATUS_EEBUSY ;
 int regmap_read (void*,int ,int*) ;
 int regmap_read_poll_timeout (void*,int ,int,int,int ,int ) ;
 int regmap_update_bits (void*,int ,int,int) ;
 int regmap_write (void*,int ,int) ;

__attribute__((used)) static int rv3028_eeprom_read(void *priv, unsigned int offset, void *val,
         size_t bytes)
{
 u32 status, ctrl1, data;
 int i, ret, err;
 u8 *buf = val;

 ret = regmap_read(priv, RV3028_CTRL1, &ctrl1);
 if (ret)
  return ret;

 if (!(ctrl1 & RV3028_CTRL1_EERD)) {
  ret = regmap_update_bits(priv, RV3028_CTRL1,
      RV3028_CTRL1_EERD, RV3028_CTRL1_EERD);
  if (ret)
   return ret;

  ret = regmap_read_poll_timeout(priv, RV3028_STATUS, status,
            !(status & RV3028_STATUS_EEBUSY),
            RV3028_EEBUSY_POLL,
            RV3028_EEBUSY_TIMEOUT);
  if (ret)
   goto restore_eerd;
 }

 for (i = 0; i < bytes; i++) {
  ret = regmap_write(priv, RV3028_EEPROM_ADDR, offset + i);
  if (ret)
   goto restore_eerd;

  ret = regmap_write(priv, RV3028_EEPROM_CMD, 0x0);
  if (ret)
   goto restore_eerd;

  ret = regmap_write(priv, RV3028_EEPROM_CMD,
       RV3028_EEPROM_CMD_READ);
  if (ret)
   goto restore_eerd;

  ret = regmap_read_poll_timeout(priv, RV3028_STATUS, status,
            !(status & RV3028_STATUS_EEBUSY),
            RV3028_EEBUSY_POLL,
            RV3028_EEBUSY_TIMEOUT);
  if (ret)
   goto restore_eerd;

  ret = regmap_read(priv, RV3028_EEPROM_DATA, &data);
  if (ret)
   goto restore_eerd;
  buf[i] = data;
 }

restore_eerd:
 if (!(ctrl1 & RV3028_CTRL1_EERD))
 {
  err = regmap_update_bits(priv, RV3028_CTRL1, RV3028_CTRL1_EERD,
      0);
  if (err && !ret)
   ret = err;
 }

 return ret;
}
