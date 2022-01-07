
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int csr_mutex; } ;


 int RF_CSR_CFG0 ;
 int RF_CSR_CFG0_BUSY ;
 int RF_CSR_CFG0_REG_VALUE_BW ;
 int RF_CSR_CFG0_SEL ;
 int RF_CSR_CFG0_STANDBYMODE ;
 scalar_t__ WAIT_FOR_RF (struct rt2x00_dev*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2800_register_write_lock (struct rt2x00_dev*,int ,int) ;
 int rt2x00_rf_write (struct rt2x00_dev*,unsigned int const,int const) ;
 int rt2x00_set_field32 (int*,int ,int const) ;

__attribute__((used)) static void rt2800_rf_write(struct rt2x00_dev *rt2x00dev,
       const unsigned int word, const u32 value)
{
 u32 reg;

 mutex_lock(&rt2x00dev->csr_mutex);





 if (WAIT_FOR_RF(rt2x00dev, &reg)) {
  reg = 0;
  rt2x00_set_field32(&reg, RF_CSR_CFG0_REG_VALUE_BW, value);
  rt2x00_set_field32(&reg, RF_CSR_CFG0_STANDBYMODE, 0);
  rt2x00_set_field32(&reg, RF_CSR_CFG0_SEL, 0);
  rt2x00_set_field32(&reg, RF_CSR_CFG0_BUSY, 1);

  rt2800_register_write_lock(rt2x00dev, RF_CSR_CFG0, reg);
  rt2x00_rf_write(rt2x00dev, word, value);
 }

 mutex_unlock(&rt2x00dev->csr_mutex);
}
