
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* tag_commands; } ;


 int AHC_NUM_TARGETS ;
 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* aic7xxx_tag_info ;
 int printk (char*,int) ;
 int simple_strtoul (char*,int *,int ) ;

__attribute__((used)) static void
ahc_linux_setup_tag_info_global(char *p)
{
 int tags, i, j;

 tags = simple_strtoul(p + 1, ((void*)0), 0) & 0xff;
 printk("Setting Global Tags= %d\n", tags);

 for (i = 0; i < ARRAY_SIZE(aic7xxx_tag_info); i++) {
  for (j = 0; j < AHC_NUM_TARGETS; j++) {
   aic7xxx_tag_info[i].tag_commands[j] = tags;
  }
 }
}
