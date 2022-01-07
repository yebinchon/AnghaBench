
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_connector {int * partner; } ;


 int UCSI_RECIPIENT_SOP ;
 int typec_unregister_partner (int *) ;
 int ucsi_unregister_altmodes (struct ucsi_connector*,int ) ;

__attribute__((used)) static void ucsi_unregister_partner(struct ucsi_connector *con)
{
 if (!con->partner)
  return;

 ucsi_unregister_altmodes(con, UCSI_RECIPIENT_SOP);
 typec_unregister_partner(con->partner);
 con->partner = ((void*)0);
}
