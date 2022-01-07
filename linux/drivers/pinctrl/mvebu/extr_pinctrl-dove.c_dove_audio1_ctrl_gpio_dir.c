
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int dove_audio1_ctrl_gpio_dir(struct mvebu_mpp_ctrl_data *data,
         unsigned pid, bool input)
{
 if (pid < 52 || pid > 57)
  return -ENOTSUPP;
 return 0;
}
