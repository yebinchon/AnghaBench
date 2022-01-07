
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsit_transport {int name; int t_node; } ;


 int INIT_LIST_HEAD (int *) ;
 int g_transport_list ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int transport_mutex ;

int iscsit_register_transport(struct iscsit_transport *t)
{
 INIT_LIST_HEAD(&t->t_node);

 mutex_lock(&transport_mutex);
 list_add_tail(&t->t_node, &g_transport_list);
 mutex_unlock(&transport_mutex);

 pr_debug("Registered iSCSI transport: %s\n", t->name);

 return 0;
}
