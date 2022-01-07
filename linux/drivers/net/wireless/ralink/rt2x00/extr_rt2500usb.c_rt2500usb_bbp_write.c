
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef scalar_t__ u16 ;
struct rt2x00_dev {int csr_mutex; } ;


 int PHY_CSR7 ;
 int PHY_CSR7_DATA ;
 int PHY_CSR7_READ_CONTROL ;
 int PHY_CSR7_REG_ID ;
 scalar_t__ WAIT_FOR_BBP (struct rt2x00_dev*,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2500usb_register_write_lock (struct rt2x00_dev*,int ,scalar_t__) ;
 int rt2x00_set_field16 (scalar_t__*,int ,unsigned int const) ;

__attribute__((used)) static void rt2500usb_bbp_write(struct rt2x00_dev *rt2x00dev,
    const unsigned int word, const u8 value)
{
 u16 reg;

 mutex_lock(&rt2x00dev->csr_mutex);





 if (WAIT_FOR_BBP(rt2x00dev, &reg)) {
  reg = 0;
  rt2x00_set_field16(&reg, PHY_CSR7_DATA, value);
  rt2x00_set_field16(&reg, PHY_CSR7_REG_ID, word);
  rt2x00_set_field16(&reg, PHY_CSR7_READ_CONTROL, 0);

  rt2500usb_register_write_lock(rt2x00dev, PHY_CSR7, reg);
 }

 mutex_unlock(&rt2x00dev->csr_mutex);
}
