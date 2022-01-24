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
struct sbp_target_request {struct sbp_login_descriptor* login; } ;
struct sbp_session {int node_id; int generation; int speed; int /*<<< orphan*/  lock; int /*<<< orphan*/  card; } ;
struct sbp_login_descriptor {struct sbp_session* sess; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 struct fw_card* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_card*) ; 
 int FUNC2 (struct fw_card*,int,int,int,int,unsigned long long,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sbp_target_request *req,
		int tcode, unsigned long long offset, void *payload,
		size_t length)
{
	struct sbp_login_descriptor *login = req->login;
	struct sbp_session *sess = login->sess;
	struct fw_card *card;
	int node_id, generation, speed, ret;

	FUNC3(&sess->lock);
	card = FUNC0(sess->card);
	node_id = sess->node_id;
	generation = sess->generation;
	speed = sess->speed;
	FUNC4(&sess->lock);

	ret = FUNC2(card, tcode, node_id, generation, speed,
			offset, payload, length);

	FUNC1(card);

	return ret;
}