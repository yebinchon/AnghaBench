#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sas_rphy {struct request_queue* q; int /*<<< orphan*/  dev; } ;
struct request_queue {int dummy; } ;
struct Scsi_Host {int host_no; int /*<<< orphan*/  shost_gendev; TYPE_2__* hostt; int /*<<< orphan*/  transportt; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_8__ {struct request_queue* q; } ;
struct TYPE_7__ {TYPE_1__* f; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  smp_handler; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int FUNC1 (struct request_queue*) ; 
 struct request_queue* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sas_smp_dispatch ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 TYPE_4__* FUNC6 (struct Scsi_Host*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct Scsi_Host *shost, struct sas_rphy *rphy)
{
	struct request_queue *q;

	if (!FUNC7(shost->transportt)->f->smp_handler) {
		FUNC4("%s can't handle SMP requests\n", shost->hostt->name);
		return 0;
	}

	if (rphy) {
		q = FUNC2(&rphy->dev, FUNC3(&rphy->dev),
				sas_smp_dispatch, NULL, 0);
		if (FUNC0(q))
			return FUNC1(q);
		rphy->q = q;
	} else {
		char name[20];

		FUNC5(name, sizeof(name), "sas_host%d", shost->host_no);
		q = FUNC2(&shost->shost_gendev, name,
				sas_smp_dispatch, NULL, 0);
		if (FUNC0(q))
			return FUNC1(q);
		FUNC6(shost)->q = q;
	}

	return 0;
}