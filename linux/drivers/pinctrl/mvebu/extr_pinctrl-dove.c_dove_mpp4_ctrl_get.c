
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_mpp_ctrl_data {int dummy; } ;


 unsigned long CAM_GPIO_SEL ;
 int EINVAL ;
 unsigned long SD0_GPIO_SEL ;
 unsigned long SD1_GPIO_SEL ;
 unsigned long SPI_GPIO_SEL ;
 unsigned long UART1_GPIO_SEL ;
 int mpp4_base ;
 unsigned long readl (int ) ;

__attribute__((used)) static int dove_mpp4_ctrl_get(struct mvebu_mpp_ctrl_data *data, unsigned pid,
         unsigned long *config)
{
 unsigned long mpp4 = readl(mpp4_base);
 unsigned long mask;

 switch (pid) {
 case 24:
  mask = CAM_GPIO_SEL;
  break;
 case 40:
  mask = SD0_GPIO_SEL;
  break;
 case 46:
  mask = SD1_GPIO_SEL;
  break;
 case 58:
  mask = SPI_GPIO_SEL;
  break;
 case 62:
  mask = UART1_GPIO_SEL;
  break;
 default:
  return -EINVAL;
 }

 *config = ((mpp4 & mask) != 0);

 return 0;
}
