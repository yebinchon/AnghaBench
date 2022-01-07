
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int TCMU_BLOCKS_TO_MBS (int ) ;
 int sprintf (char*,char*,int) ;
 int tcmu_global_max_blocks ;

__attribute__((used)) static int tcmu_get_global_max_data_area(char *buffer,
      const struct kernel_param *kp)
{
 return sprintf(buffer, "%d", TCMU_BLOCKS_TO_MBS(tcmu_global_max_blocks));
}
