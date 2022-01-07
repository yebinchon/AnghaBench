
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int rt; } ;
struct rt2x00_dev {int csr_mutex; TYPE_1__ chip; } ;


 int RF_CSR_CFG ;
 int RF_CSR_CFG_BUSY ;
 int RF_CSR_CFG_BUSY_MT7620 ;
 int RF_CSR_CFG_DATA ;
 int RF_CSR_CFG_DATA_MT7620 ;
 int RF_CSR_CFG_REGNUM ;
 int RF_CSR_CFG_REGNUM_MT7620 ;
 int RF_CSR_CFG_WRITE ;
 int RF_CSR_CFG_WRITE_MT7620 ;

 int WAIT_FOR_RFCSR (struct rt2x00_dev*,int *) ;
 int WAIT_FOR_RFCSR_MT7620 (struct rt2x00_dev*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2800_register_write_lock (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_set_field32 (int *,int ,unsigned int const) ;

__attribute__((used)) static u8 rt2800_rfcsr_read(struct rt2x00_dev *rt2x00dev,
       const unsigned int word)
{
 u32 reg;
 u8 value;

 mutex_lock(&rt2x00dev->csr_mutex);
 switch (rt2x00dev->chip.rt) {
 case 128:
  if (WAIT_FOR_RFCSR_MT7620(rt2x00dev, &reg)) {
   reg = 0;
   rt2x00_set_field32(&reg, RF_CSR_CFG_REGNUM_MT7620,
        word);
   rt2x00_set_field32(&reg, RF_CSR_CFG_WRITE_MT7620, 0);
   rt2x00_set_field32(&reg, RF_CSR_CFG_BUSY_MT7620, 1);

   rt2800_register_write_lock(rt2x00dev, RF_CSR_CFG, reg);

   WAIT_FOR_RFCSR_MT7620(rt2x00dev, &reg);
  }

  value = rt2x00_get_field32(reg, RF_CSR_CFG_DATA_MT7620);
  break;

 default:
  if (WAIT_FOR_RFCSR(rt2x00dev, &reg)) {
   reg = 0;
   rt2x00_set_field32(&reg, RF_CSR_CFG_REGNUM, word);
   rt2x00_set_field32(&reg, RF_CSR_CFG_WRITE, 0);
   rt2x00_set_field32(&reg, RF_CSR_CFG_BUSY, 1);

   rt2800_register_write_lock(rt2x00dev, RF_CSR_CFG, reg);

   WAIT_FOR_RFCSR(rt2x00dev, &reg);
  }

  value = rt2x00_get_field32(reg, RF_CSR_CFG_DATA);
  break;
 }

 mutex_unlock(&rt2x00dev->csr_mutex);

 return value;
}
