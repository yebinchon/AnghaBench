
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_cluster {int dummy; } ;
struct config_item {int dummy; } ;


 struct dlm_cluster* config_item_to_cluster (struct config_item*) ;
 int kfree (struct dlm_cluster*) ;

__attribute__((used)) static void release_cluster(struct config_item *i)
{
 struct dlm_cluster *cl = config_item_to_cluster(i);
 kfree(cl);
}
