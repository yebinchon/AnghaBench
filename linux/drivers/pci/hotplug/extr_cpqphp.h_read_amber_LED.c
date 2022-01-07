
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct controller {scalar_t__ hpc_reg; } ;


 scalar_t__ LED_CONTROL ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int read_amber_LED(struct controller *ctrl, u8 slot)
{
 u32 led_control;

 led_control = readl(ctrl->hpc_reg + LED_CONTROL);
 led_control &= (0x01010000L << slot);

 return led_control ? 1 : 0;
}
