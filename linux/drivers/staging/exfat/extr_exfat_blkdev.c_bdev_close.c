
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct bd_info_t {int opened; } ;
struct TYPE_2__ {struct bd_info_t bd_info; } ;


 TYPE_1__* EXFAT_SB (struct super_block*) ;

void bdev_close(struct super_block *sb)
{
 struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);

 p_bd->opened = 0;
}
