
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int conf; } ;
struct dp_altmode {TYPE_1__ data; int alt; } ;


 int DP_CONF_GET_PIN_ASSIGN (int ) ;
 int TYPEC_MODAL_STATE (int ) ;
 int get_count_order (int ) ;
 int typec_altmode_notify (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int dp_altmode_notify(struct dp_altmode *dp)
{
 u8 state = get_count_order(DP_CONF_GET_PIN_ASSIGN(dp->data.conf));

 return typec_altmode_notify(dp->alt, TYPEC_MODAL_STATE(state),
       &dp->data);
}
