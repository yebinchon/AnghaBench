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
struct iscsi_scan_data {scalar_t__ channel; scalar_t__ id; int /*<<< orphan*/  rescan; int /*<<< orphan*/  lun; } ;
struct iscsi_cls_session {scalar_t__ state; unsigned int target_id; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct iscsi_cls_host {int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_session*,char*) ; 
 unsigned int ISCSI_MAX_TARGET ; 
 scalar_t__ ISCSI_SESSION_LOGGED_IN ; 
 scalar_t__ SCAN_WILD_CARD ; 
 struct iscsi_cls_session* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct Scsi_Host* FUNC3 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct device *dev, void *data)
{
	struct iscsi_scan_data *scan_data = data;
	struct iscsi_cls_session *session;
	struct Scsi_Host *shost;
	struct iscsi_cls_host *ihost;
	unsigned long flags;
	unsigned int id;

	if (!FUNC2(dev))
		return 0;

	session = FUNC1(dev);

	FUNC0(session, "Scanning session\n");

	shost = FUNC3(session);
	ihost = shost->shost_data;

	FUNC4(&ihost->mutex);
	FUNC7(&session->lock, flags);
	if (session->state != ISCSI_SESSION_LOGGED_IN) {
		FUNC8(&session->lock, flags);
		goto user_scan_exit;
	}
	id = session->target_id;
	FUNC8(&session->lock, flags);

	if (id != ISCSI_MAX_TARGET) {
		if ((scan_data->channel == SCAN_WILD_CARD ||
		     scan_data->channel == 0) &&
		    (scan_data->id == SCAN_WILD_CARD ||
		     scan_data->id == id))
			FUNC6(&session->dev, 0, id,
					 scan_data->lun, scan_data->rescan);
	}

user_scan_exit:
	FUNC5(&ihost->mutex);
	FUNC0(session, "Completed session scan\n");
	return 0;
}