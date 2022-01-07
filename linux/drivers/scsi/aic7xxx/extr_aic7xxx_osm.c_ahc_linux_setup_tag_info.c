
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int int32_t ;
struct TYPE_3__ {int* tag_commands; } ;


 int AHC_NUM_TARGETS ;
 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* aic7xxx_tag_info ;
 scalar_t__ bootverbose ;
 int printk (char*,int,int,int) ;

__attribute__((used)) static void
ahc_linux_setup_tag_info(u_long arg, int instance, int targ, int32_t value)
{

 if ((instance >= 0) && (targ >= 0)
  && (instance < ARRAY_SIZE(aic7xxx_tag_info))
  && (targ < AHC_NUM_TARGETS)) {
  aic7xxx_tag_info[instance].tag_commands[targ] = value & 0xff;
  if (bootverbose)
   printk("tag_info[%d:%d] = %d\n", instance, targ, value);
 }
}
