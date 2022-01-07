
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsit_transport {int name; int t_node; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int transport_mutex ;

void iscsit_unregister_transport(struct iscsit_transport *t)
{
 mutex_lock(&transport_mutex);
 list_del(&t->t_node);
 mutex_unlock(&transport_mutex);

 pr_debug("Unregistered iSCSI transport: %s\n", t->name);
}
