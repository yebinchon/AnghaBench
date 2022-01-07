
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ eof; } ;
struct ctl_pkg {TYPE_1__ frame; } ;
struct cfg_error_pkg {int error; } ;





 scalar_t__ TB_CFG_PKG_ERROR ;

__attribute__((used)) static int tb_async_error(const struct ctl_pkg *pkg)
{
 const struct cfg_error_pkg *error = (const struct cfg_error_pkg *)pkg;

 if (pkg->frame.eof != TB_CFG_PKG_ERROR)
  return 0;

 switch (error->error) {
 case 128:
 case 129:
 case 130:
  return 1;

 default:
  return 0;
 }
}
