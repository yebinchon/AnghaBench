
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rt2x00_dev {int csr_mutex; } ;


 int PHY_CSR3 ;
 int PHY_CSR3_BUSY ;
 int PHY_CSR3_READ_CONTROL ;
 int PHY_CSR3_REGNUM ;
 int PHY_CSR3_VALUE ;
 scalar_t__ WAIT_FOR_BBP (struct rt2x00_dev*,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00_get_field32 (scalar_t__,int ) ;
 int rt2x00_set_field32 (scalar_t__*,int ,unsigned int const) ;
 int rt2x00usb_register_write_lock (struct rt2x00_dev*,int ,scalar_t__) ;

__attribute__((used)) static u8 rt73usb_bbp_read(struct rt2x00_dev *rt2x00dev,
      const unsigned int word)
{
 u32 reg;
 u8 value;

 mutex_lock(&rt2x00dev->csr_mutex);
 if (WAIT_FOR_BBP(rt2x00dev, &reg)) {
  reg = 0;
  rt2x00_set_field32(&reg, PHY_CSR3_REGNUM, word);
  rt2x00_set_field32(&reg, PHY_CSR3_BUSY, 1);
  rt2x00_set_field32(&reg, PHY_CSR3_READ_CONTROL, 1);

  rt2x00usb_register_write_lock(rt2x00dev, PHY_CSR3, reg);

  WAIT_FOR_BBP(rt2x00dev, &reg);
 }

 value = rt2x00_get_field32(reg, PHY_CSR3_VALUE);

 mutex_unlock(&rt2x00dev->csr_mutex);

 return value;
}
