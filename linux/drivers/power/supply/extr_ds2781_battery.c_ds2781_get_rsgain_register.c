
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ds2781_device_info {int dummy; } ;


 int DS2781_RSGAIN_MSB ;
 int ds2781_read16 (struct ds2781_device_info*,int *,int ) ;

__attribute__((used)) static int ds2781_get_rsgain_register(struct ds2781_device_info *dev_info,
 u16 *rsgain)
{
 return ds2781_read16(dev_info, rsgain, DS2781_RSGAIN_MSB);
}
