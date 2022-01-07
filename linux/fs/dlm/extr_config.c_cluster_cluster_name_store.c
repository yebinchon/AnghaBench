
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_cluster {int cl_cluster_name; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int ci_cluster_name; } ;


 struct dlm_cluster* config_item_to_cluster (struct config_item*) ;
 TYPE_1__ dlm_config ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static ssize_t cluster_cluster_name_store(struct config_item *item,
       const char *buf, size_t len)
{
 struct dlm_cluster *cl = config_item_to_cluster(item);

 strlcpy(dlm_config.ci_cluster_name, buf,
    sizeof(dlm_config.ci_cluster_name));
 strlcpy(cl->cl_cluster_name, buf, sizeof(cl->cl_cluster_name));
 return len;
}
