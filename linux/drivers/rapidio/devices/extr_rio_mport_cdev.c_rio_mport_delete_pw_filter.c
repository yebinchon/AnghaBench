
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_mport_pw_filter {int priv_node; int md_node; } ;


 int kfree (struct rio_mport_pw_filter*) ;
 int list_del (int *) ;

__attribute__((used)) static void rio_mport_delete_pw_filter(struct rio_mport_pw_filter *pw_filter)
{
 list_del(&pw_filter->md_node);
 list_del(&pw_filter->priv_node);
 kfree(pw_filter);
}
