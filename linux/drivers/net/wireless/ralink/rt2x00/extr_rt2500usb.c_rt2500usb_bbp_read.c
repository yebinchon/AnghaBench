
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct rt2x00_dev {int csr_mutex; } ;


 int PHY_CSR7 ;
 int PHY_CSR7_DATA ;
 int PHY_CSR7_READ_CONTROL ;
 int PHY_CSR7_REG_ID ;
 scalar_t__ WAIT_FOR_BBP (struct rt2x00_dev*,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rt2500usb_register_read_lock (struct rt2x00_dev*,int ) ;
 int rt2500usb_register_write_lock (struct rt2x00_dev*,int ,scalar_t__) ;
 int rt2x00_get_field16 (scalar_t__,int ) ;
 int rt2x00_set_field16 (scalar_t__*,int ,unsigned int const) ;

__attribute__((used)) static u8 rt2500usb_bbp_read(struct rt2x00_dev *rt2x00dev,
        const unsigned int word)
{
 u16 reg;
 u8 value;

 mutex_lock(&rt2x00dev->csr_mutex);
 if (WAIT_FOR_BBP(rt2x00dev, &reg)) {
  reg = 0;
  rt2x00_set_field16(&reg, PHY_CSR7_REG_ID, word);
  rt2x00_set_field16(&reg, PHY_CSR7_READ_CONTROL, 1);

  rt2500usb_register_write_lock(rt2x00dev, PHY_CSR7, reg);

  if (WAIT_FOR_BBP(rt2x00dev, &reg))
   reg = rt2500usb_register_read_lock(rt2x00dev, PHY_CSR7);
 }

 value = rt2x00_get_field16(reg, PHY_CSR7_DATA);

 mutex_unlock(&rt2x00dev->csr_mutex);

 return value;
}
