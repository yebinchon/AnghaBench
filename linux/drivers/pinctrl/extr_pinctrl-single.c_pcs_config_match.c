
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int pcs_config_match(unsigned data, unsigned enable, unsigned disable)
{
 int ret = -EINVAL;

 if (data == enable)
  ret = 1;
 else if (data == disable)
  ret = 0;
 return ret;
}
