
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_cluster {char* cl_cluster_name; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 struct dlm_cluster* config_item_to_cluster (struct config_item*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t cluster_cluster_name_show(struct config_item *item, char *buf)
{
 struct dlm_cluster *cl = config_item_to_cluster(item);
 return sprintf(buf, "%s\n", cl->cl_cluster_name);
}
