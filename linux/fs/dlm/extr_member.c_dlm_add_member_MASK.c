#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dlm_member {int /*<<< orphan*/  comm_seq; int /*<<< orphan*/  weight; int /*<<< orphan*/  nodeid; } ;
struct dlm_ls {int /*<<< orphan*/  ls_num_nodes; } ;
struct dlm_config_node {int /*<<< orphan*/  comm_seq; int /*<<< orphan*/  weight; int /*<<< orphan*/  nodeid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_ls*,struct dlm_member*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_member*) ; 
 struct dlm_member* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dlm_ls *ls, struct dlm_config_node *node)
{
	struct dlm_member *memb;
	int error;

	memb = FUNC3(sizeof(*memb), GFP_NOFS);
	if (!memb)
		return -ENOMEM;

	error = FUNC1(node->nodeid);
	if (error < 0) {
		FUNC2(memb);
		return error;
	}

	memb->nodeid = node->nodeid;
	memb->weight = node->weight;
	memb->comm_seq = node->comm_seq;
	FUNC0(ls, memb);
	ls->ls_num_nodes++;
	return 0;
}