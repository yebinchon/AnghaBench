
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct rt2x00_dev {int csr_mutex; } ;


 int PHY_CSR10 ;
 int PHY_CSR10_RF_BUSY ;
 int PHY_CSR10_RF_IF_SELECT ;
 int PHY_CSR10_RF_NUMBER_OF_BITS ;
 int PHY_CSR10_RF_VALUE ;
 int PHY_CSR9 ;
 int PHY_CSR9_RF_VALUE ;
 scalar_t__ WAIT_FOR_RF (struct rt2x00_dev*,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2500usb_register_write_lock (struct rt2x00_dev*,int ,scalar_t__) ;
 int rt2x00_rf_write (struct rt2x00_dev*,unsigned int const,int const) ;
 int rt2x00_set_field16 (scalar_t__*,int ,int const) ;

__attribute__((used)) static void rt2500usb_rf_write(struct rt2x00_dev *rt2x00dev,
          const unsigned int word, const u32 value)
{
 u16 reg;

 mutex_lock(&rt2x00dev->csr_mutex);





 if (WAIT_FOR_RF(rt2x00dev, &reg)) {
  reg = 0;
  rt2x00_set_field16(&reg, PHY_CSR9_RF_VALUE, value);
  rt2500usb_register_write_lock(rt2x00dev, PHY_CSR9, reg);

  reg = 0;
  rt2x00_set_field16(&reg, PHY_CSR10_RF_VALUE, value >> 16);
  rt2x00_set_field16(&reg, PHY_CSR10_RF_NUMBER_OF_BITS, 20);
  rt2x00_set_field16(&reg, PHY_CSR10_RF_IF_SELECT, 0);
  rt2x00_set_field16(&reg, PHY_CSR10_RF_BUSY, 1);

  rt2500usb_register_write_lock(rt2x00dev, PHY_CSR10, reg);
  rt2x00_rf_write(rt2x00dev, word, value);
 }

 mutex_unlock(&rt2x00dev->csr_mutex);
}
