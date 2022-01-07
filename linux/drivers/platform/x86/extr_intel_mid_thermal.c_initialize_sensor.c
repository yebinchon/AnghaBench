
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_device_info {int direct; scalar_t__ chnl_addr; } ;


 scalar_t__ ADC_DATA_START_ADDR ;
 int GFP_KERNEL ;
 int channel_index ;
 struct thermal_device_info* kzalloc (int,int ) ;

__attribute__((used)) static struct thermal_device_info *initialize_sensor(int index)
{
 struct thermal_device_info *td_info =
  kzalloc(sizeof(struct thermal_device_info), GFP_KERNEL);

 if (!td_info)
  return ((void*)0);


 td_info->chnl_addr = ADC_DATA_START_ADDR + 2 * (channel_index + index);

 if (index == 3)
  td_info->direct = 1;
 return td_info;
}
