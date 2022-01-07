
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_group {int dummy; } ;
struct dlm_spaces {struct config_group group; struct config_group cs_group; struct config_group ss_group; int cl_cluster_name; int cl_recover_callbacks; int cl_new_rsb_count; int cl_waitwarn_us; int cl_timewarn_cs; int cl_protocol; int cl_log_info; int cl_log_debug; int cl_scan_secs; int cl_toss_secs; int cl_recover_timer; int cl_rsbtbl_size; int cl_buffer_size; int cl_tcp_port; } ;
struct dlm_comms {struct config_group group; struct config_group cs_group; struct config_group ss_group; int cl_cluster_name; int cl_recover_callbacks; int cl_new_rsb_count; int cl_waitwarn_us; int cl_timewarn_cs; int cl_protocol; int cl_log_info; int cl_log_debug; int cl_scan_secs; int cl_toss_secs; int cl_recover_timer; int cl_rsbtbl_size; int cl_buffer_size; int cl_tcp_port; } ;
struct dlm_cluster {struct config_group group; struct config_group cs_group; struct config_group ss_group; int cl_cluster_name; int cl_recover_callbacks; int cl_new_rsb_count; int cl_waitwarn_us; int cl_timewarn_cs; int cl_protocol; int cl_log_info; int cl_log_debug; int cl_scan_secs; int cl_toss_secs; int cl_recover_timer; int cl_rsbtbl_size; int cl_buffer_size; int cl_tcp_port; } ;
struct TYPE_2__ {int ci_cluster_name; int ci_recover_callbacks; int ci_new_rsb_count; int ci_waitwarn_us; int ci_timewarn_cs; int ci_protocol; int ci_log_info; int ci_log_debug; int ci_scan_secs; int ci_toss_secs; int ci_recover_timer; int ci_rsbtbl_size; int ci_buffer_size; int ci_tcp_port; } ;


 int DLM_LOCKSPACE_LEN ;
 int ENOMEM ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int cluster_type ;
 struct config_group* comm_list ;
 int comms_type ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int configfs_add_default_group (struct config_group*,struct config_group*) ;
 TYPE_1__ dlm_config ;
 int kfree (struct dlm_spaces*) ;
 struct dlm_spaces* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 struct config_group* space_list ;
 int spaces_type ;

__attribute__((used)) static struct config_group *make_cluster(struct config_group *g,
      const char *name)
{
 struct dlm_cluster *cl = ((void*)0);
 struct dlm_spaces *sps = ((void*)0);
 struct dlm_comms *cms = ((void*)0);

 cl = kzalloc(sizeof(struct dlm_cluster), GFP_NOFS);
 sps = kzalloc(sizeof(struct dlm_spaces), GFP_NOFS);
 cms = kzalloc(sizeof(struct dlm_comms), GFP_NOFS);

 if (!cl || !sps || !cms)
  goto fail;

 config_group_init_type_name(&cl->group, name, &cluster_type);
 config_group_init_type_name(&sps->ss_group, "spaces", &spaces_type);
 config_group_init_type_name(&cms->cs_group, "comms", &comms_type);

 configfs_add_default_group(&sps->ss_group, &cl->group);
 configfs_add_default_group(&cms->cs_group, &cl->group);

 cl->cl_tcp_port = dlm_config.ci_tcp_port;
 cl->cl_buffer_size = dlm_config.ci_buffer_size;
 cl->cl_rsbtbl_size = dlm_config.ci_rsbtbl_size;
 cl->cl_recover_timer = dlm_config.ci_recover_timer;
 cl->cl_toss_secs = dlm_config.ci_toss_secs;
 cl->cl_scan_secs = dlm_config.ci_scan_secs;
 cl->cl_log_debug = dlm_config.ci_log_debug;
 cl->cl_log_info = dlm_config.ci_log_info;
 cl->cl_protocol = dlm_config.ci_protocol;
 cl->cl_timewarn_cs = dlm_config.ci_timewarn_cs;
 cl->cl_waitwarn_us = dlm_config.ci_waitwarn_us;
 cl->cl_new_rsb_count = dlm_config.ci_new_rsb_count;
 cl->cl_recover_callbacks = dlm_config.ci_recover_callbacks;
 memcpy(cl->cl_cluster_name, dlm_config.ci_cluster_name,
        DLM_LOCKSPACE_LEN);

 space_list = &sps->ss_group;
 comm_list = &cms->cs_group;
 return &cl->group;

 fail:
 kfree(cl);
 kfree(sps);
 kfree(cms);
 return ERR_PTR(-ENOMEM);
}
