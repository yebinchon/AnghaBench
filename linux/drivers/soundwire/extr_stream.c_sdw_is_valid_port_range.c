
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_port_runtime {int num; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int SDW_VALID_PORT_RANGE (int ) ;
 int dev_err (struct device*,char*,int ) ;

__attribute__((used)) static int sdw_is_valid_port_range(struct device *dev,
       struct sdw_port_runtime *p_rt)
{
 if (!SDW_VALID_PORT_RANGE(p_rt->num)) {
  dev_err(dev,
   "SoundWire: Invalid port number :%d\n", p_rt->num);
  return -EINVAL;
 }

 return 0;
}
