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
typedef  int /*<<< orphan*/  u64 ;
struct se_session {scalar_t__ sess_cmd_map; int /*<<< orphan*/  sess_tag_pool; } ;
struct TYPE_2__ {int map_tag; int map_cpu; int /*<<< orphan*/  tag; } ;
struct sbp_target_request {TYPE_1__ se_cmd; } ;
struct sbp_session {struct se_session* se_sess; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sbp_target_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbp_target_request*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static struct sbp_target_request *FUNC3(struct sbp_session *sess,
	struct fw_card *card, u64 next_orb)
{
	struct se_session *se_sess = sess->se_sess;
	struct sbp_target_request *req;
	int tag, cpu;

	tag = FUNC2(&se_sess->sess_tag_pool, &cpu);
	if (tag < 0)
		return FUNC0(-ENOMEM);

	req = &((struct sbp_target_request *)se_sess->sess_cmd_map)[tag];
	FUNC1(req, 0, sizeof(*req));
	req->se_cmd.map_tag = tag;
	req->se_cmd.map_cpu = cpu;
	req->se_cmd.tag = next_orb;

	return req;
}