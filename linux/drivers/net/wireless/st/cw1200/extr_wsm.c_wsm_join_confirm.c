
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_join_cnf {int status; void* max_power_level; void* min_power_level; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 void* WSM_GET32 (struct wsm_buf*) ;
 scalar_t__ WSM_STATUS_SUCCESS ;

__attribute__((used)) static int wsm_join_confirm(struct cw1200_common *priv,
       struct wsm_join_cnf *arg,
       struct wsm_buf *buf)
{
 arg->status = WSM_GET32(buf);
 if (WARN_ON(arg->status) != WSM_STATUS_SUCCESS)
  return -EINVAL;

 arg->min_power_level = WSM_GET32(buf);
 arg->max_power_level = WSM_GET32(buf);

 return 0;

underflow:
 WARN_ON(1);
 return -EINVAL;
}
