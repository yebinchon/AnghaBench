
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int notify_update (struct vc_data*) ;

void vcs_scr_updated(struct vc_data *vc)
{
 notify_update(vc);
}
