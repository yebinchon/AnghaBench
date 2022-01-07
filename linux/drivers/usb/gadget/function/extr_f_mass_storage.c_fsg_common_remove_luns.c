
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int luns; } ;


 int ARRAY_SIZE (int ) ;
 int _fsg_common_remove_luns (struct fsg_common*,int ) ;

void fsg_common_remove_luns(struct fsg_common *common)
{
 _fsg_common_remove_luns(common, ARRAY_SIZE(common->luns));
}
