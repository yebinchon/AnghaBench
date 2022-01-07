
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_info {int dummy; } ;


 int mvs_ioremap (struct mvs_info*,int,int) ;

__attribute__((used)) static int mvs_64xx_ioremap(struct mvs_info *mvi)
{
 if (!mvs_ioremap(mvi, 4, 2))
  return 0;
 return -1;
}
