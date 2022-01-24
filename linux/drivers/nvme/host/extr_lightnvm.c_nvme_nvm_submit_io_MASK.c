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
struct request_queue {int dummy; } ;
struct request {struct nvm_rq* end_io_data; } ;
struct nvme_nvm_command {int dummy; } ;
struct nvm_rq {int nr_ppas; } ;
struct nvm_geo {int csecs; } ;
struct nvm_dev {struct request_queue* q; struct nvm_geo geo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct request_queue*,struct request*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_nvm_command*) ; 
 struct nvme_nvm_command* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct request* FUNC6 (struct request_queue*,struct nvm_rq*,struct nvme_nvm_command*) ; 
 int /*<<< orphan*/  nvme_nvm_end_io ; 

__attribute__((used)) static int FUNC7(struct nvm_dev *dev, struct nvm_rq *rqd,
			      void *buf)
{
	struct nvm_geo *geo = &dev->geo;
	struct request_queue *q = dev->q;
	struct nvme_nvm_command *cmd;
	struct request *rq;
	int ret;

	cmd = FUNC5(sizeof(struct nvme_nvm_command), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	rq = FUNC6(q, rqd, cmd);
	if (FUNC0(rq)) {
		ret = FUNC1(rq);
		goto err_free_cmd;
	}

	if (buf) {
		ret = FUNC3(q, rq, buf, geo->csecs * rqd->nr_ppas,
				GFP_KERNEL);
		if (ret)
			goto err_free_cmd;
	}

	rq->end_io_data = rqd;

	FUNC2(q, NULL, rq, 0, nvme_nvm_end_io);

	return 0;

err_free_cmd:
	FUNC4(cmd);
	return ret;
}