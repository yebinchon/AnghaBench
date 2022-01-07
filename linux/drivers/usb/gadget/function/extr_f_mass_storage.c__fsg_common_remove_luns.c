
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int ** luns; } ;


 int fsg_common_remove_lun (int *) ;

__attribute__((used)) static void _fsg_common_remove_luns(struct fsg_common *common, int n)
{
 int i;

 for (i = 0; i < n; ++i)
  if (common->luns[i]) {
   fsg_common_remove_lun(common->luns[i]);
   common->luns[i] = ((void*)0);
  }
}
