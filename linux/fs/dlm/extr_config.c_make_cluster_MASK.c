#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct config_group {int dummy; } ;
struct dlm_spaces {struct config_group group; struct config_group cs_group; struct config_group ss_group; int /*<<< orphan*/  cl_cluster_name; int /*<<< orphan*/  cl_recover_callbacks; int /*<<< orphan*/  cl_new_rsb_count; int /*<<< orphan*/  cl_waitwarn_us; int /*<<< orphan*/  cl_timewarn_cs; int /*<<< orphan*/  cl_protocol; int /*<<< orphan*/  cl_log_info; int /*<<< orphan*/  cl_log_debug; int /*<<< orphan*/  cl_scan_secs; int /*<<< orphan*/  cl_toss_secs; int /*<<< orphan*/  cl_recover_timer; int /*<<< orphan*/  cl_rsbtbl_size; int /*<<< orphan*/  cl_buffer_size; int /*<<< orphan*/  cl_tcp_port; } ;
struct dlm_comms {struct config_group group; struct config_group cs_group; struct config_group ss_group; int /*<<< orphan*/  cl_cluster_name; int /*<<< orphan*/  cl_recover_callbacks; int /*<<< orphan*/  cl_new_rsb_count; int /*<<< orphan*/  cl_waitwarn_us; int /*<<< orphan*/  cl_timewarn_cs; int /*<<< orphan*/  cl_protocol; int /*<<< orphan*/  cl_log_info; int /*<<< orphan*/  cl_log_debug; int /*<<< orphan*/  cl_scan_secs; int /*<<< orphan*/  cl_toss_secs; int /*<<< orphan*/  cl_recover_timer; int /*<<< orphan*/  cl_rsbtbl_size; int /*<<< orphan*/  cl_buffer_size; int /*<<< orphan*/  cl_tcp_port; } ;
struct dlm_cluster {struct config_group group; struct config_group cs_group; struct config_group ss_group; int /*<<< orphan*/  cl_cluster_name; int /*<<< orphan*/  cl_recover_callbacks; int /*<<< orphan*/  cl_new_rsb_count; int /*<<< orphan*/  cl_waitwarn_us; int /*<<< orphan*/  cl_timewarn_cs; int /*<<< orphan*/  cl_protocol; int /*<<< orphan*/  cl_log_info; int /*<<< orphan*/  cl_log_debug; int /*<<< orphan*/  cl_scan_secs; int /*<<< orphan*/  cl_toss_secs; int /*<<< orphan*/  cl_recover_timer; int /*<<< orphan*/  cl_rsbtbl_size; int /*<<< orphan*/  cl_buffer_size; int /*<<< orphan*/  cl_tcp_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  ci_cluster_name; int /*<<< orphan*/  ci_recover_callbacks; int /*<<< orphan*/  ci_new_rsb_count; int /*<<< orphan*/  ci_waitwarn_us; int /*<<< orphan*/  ci_timewarn_cs; int /*<<< orphan*/  ci_protocol; int /*<<< orphan*/  ci_log_info; int /*<<< orphan*/  ci_log_debug; int /*<<< orphan*/  ci_scan_secs; int /*<<< orphan*/  ci_toss_secs; int /*<<< orphan*/  ci_recover_timer; int /*<<< orphan*/  ci_rsbtbl_size; int /*<<< orphan*/  ci_buffer_size; int /*<<< orphan*/  ci_tcp_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCKSPACE_LEN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct config_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  cluster_type ; 
 struct config_group* comm_list ; 
 int /*<<< orphan*/  comms_type ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct config_group*,struct config_group*) ; 
 TYPE_1__ dlm_config ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_spaces*) ; 
 struct dlm_spaces* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct config_group* space_list ; 
 int /*<<< orphan*/  spaces_type ; 

__attribute__((used)) static struct config_group *FUNC6(struct config_group *g,
					 const char *name)
{
	struct dlm_cluster *cl = NULL;
	struct dlm_spaces *sps = NULL;
	struct dlm_comms *cms = NULL;

	cl = FUNC4(sizeof(struct dlm_cluster), GFP_NOFS);
	sps = FUNC4(sizeof(struct dlm_spaces), GFP_NOFS);
	cms = FUNC4(sizeof(struct dlm_comms), GFP_NOFS);

	if (!cl || !sps || !cms)
		goto fail;

	FUNC1(&cl->group, name, &cluster_type);
	FUNC1(&sps->ss_group, "spaces", &spaces_type);
	FUNC1(&cms->cs_group, "comms", &comms_type);

	FUNC2(&sps->ss_group, &cl->group);
	FUNC2(&cms->cs_group, &cl->group);

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
	FUNC5(cl->cl_cluster_name, dlm_config.ci_cluster_name,
	       DLM_LOCKSPACE_LEN);

	space_list = &sps->ss_group;
	comm_list = &cms->cs_group;
	return &cl->group;

 fail:
	FUNC3(cl);
	FUNC3(sps);
	FUNC3(cms);
	return FUNC0(-ENOMEM);
}