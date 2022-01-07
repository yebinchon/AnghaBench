
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int BEACON_BASE_TO_OFFSET (int ) ;
 int rt2800_hw_beacon_base (struct rt2x00_dev*,unsigned int) ;

__attribute__((used)) static inline u8 rt2800_get_beacon_offset(struct rt2x00_dev *rt2x00dev,
       unsigned int index)
{
 return BEACON_BASE_TO_OFFSET(rt2800_hw_beacon_base(rt2x00dev, index));
}
