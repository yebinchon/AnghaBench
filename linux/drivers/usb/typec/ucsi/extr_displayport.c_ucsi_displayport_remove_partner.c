
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; scalar_t__ conf; } ;
struct ucsi_dp {int initialized; TYPE_1__ data; } ;
struct typec_altmode {int dummy; } ;


 struct ucsi_dp* typec_altmode_get_drvdata (struct typec_altmode*) ;

void ucsi_displayport_remove_partner(struct typec_altmode *alt)
{
 struct ucsi_dp *dp;

 if (!alt)
  return;

 dp = typec_altmode_get_drvdata(alt);
 dp->data.conf = 0;
 dp->data.status = 0;
 dp->initialized = 0;
}
