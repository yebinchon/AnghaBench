
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int CAPABILITY_VCO_RECALIBRATION ;
 int rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;

__attribute__((used)) static inline bool
rt2x00_has_cap_vco_recalibration(struct rt2x00_dev *rt2x00dev)
{
 return rt2x00_has_cap_flag(rt2x00dev, CAPABILITY_VCO_RECALIBRATION);
}
