
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {scalar_t__ state; } ;


 scalar_t__ FSG_STATE_NORMAL ;

__attribute__((used)) static int exception_in_progress(struct fsg_common *common)
{
 return common->state > FSG_STATE_NORMAL;
}
