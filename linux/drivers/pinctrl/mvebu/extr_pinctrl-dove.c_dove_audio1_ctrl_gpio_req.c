
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 int ENOTSUPP ;
 int dove_audio1_ctrl_get (struct mvebu_mpp_ctrl_data*,unsigned int,unsigned long*) ;

__attribute__((used)) static int dove_audio1_ctrl_gpio_req(struct mvebu_mpp_ctrl_data *data,
         unsigned pid)
{
 unsigned long config;

 dove_audio1_ctrl_get(data, pid, &config);

 switch (config) {
 case 0x02:
 case 0x0e:
  if (pid >= 56)
   return 0;
  return -ENOTSUPP;
 case 0x08:
 case 0x0b:
  if (pid <= 55)
   return 0;
  return -ENOTSUPP;
 case 0x0a:
  return 0;



 }
 return -ENOTSUPP;
}
