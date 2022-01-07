
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int * luns; } ;


 int ARRAY_SIZE (int *) ;

__attribute__((used)) static int _fsg_common_get_max_lun(struct fsg_common *common)
{
 int i = ARRAY_SIZE(common->luns) - 1;

 while (i >= 0 && !common->luns[i])
  --i;

 return i;
}
