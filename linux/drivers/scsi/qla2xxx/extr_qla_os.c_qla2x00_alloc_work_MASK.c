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
typedef  scalar_t__ uint8_t ;
struct scsi_qla_host {int dummy; } ;
struct qla_work_evt {int type; int /*<<< orphan*/  flags; int /*<<< orphan*/  list; } ;
typedef  enum qla_work_type { ____Placeholder_qla_work_type } qla_work_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QLA_EVT_FLAG_FREE ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 struct qla_work_evt* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct qla_work_evt *
FUNC4(struct scsi_qla_host *vha, enum qla_work_type type)
{
	struct qla_work_evt *e;
	uint8_t bail;

	FUNC1(vha, bail);
	if (bail)
		return NULL;

	e = FUNC3(sizeof(struct qla_work_evt), GFP_ATOMIC);
	if (!e) {
		FUNC2(vha);
		return NULL;
	}

	FUNC0(&e->list);
	e->type = type;
	e->flags = QLA_EVT_FLAG_FREE;
	return e;
}