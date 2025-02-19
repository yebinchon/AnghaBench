
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fsg_opts {TYPE_3__* common; } ;
struct TYPE_4__ {int ci_parent; } ;
struct TYPE_5__ {TYPE_1__ cg_item; } ;
struct fsg_lun_opts {int lun; TYPE_2__ group; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int filesem; } ;


 int fsg_store_file (int ,int *,char const*,size_t) ;
 struct fsg_lun_opts* to_fsg_lun_opts (struct config_item*) ;
 struct fsg_opts* to_fsg_opts (int ) ;

__attribute__((used)) static ssize_t fsg_lun_opts_file_store(struct config_item *item,
           const char *page, size_t len)
{
 struct fsg_lun_opts *opts = to_fsg_lun_opts(item);
 struct fsg_opts *fsg_opts = to_fsg_opts(opts->group.cg_item.ci_parent);

 return fsg_store_file(opts->lun, &fsg_opts->common->filesem, page, len);
}
