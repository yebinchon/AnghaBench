
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_protocol {int protocol_list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnp_lock ;

__attribute__((used)) static void pnp_remove_protocol(struct pnp_protocol *protocol)
{
 mutex_lock(&pnp_lock);
 list_del(&protocol->protocol_list);
 mutex_unlock(&pnp_lock);
}
