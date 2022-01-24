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
struct Scsi_Host {int /*<<< orphan*/  shost_gendev; int /*<<< orphan*/  shost_dev; int /*<<< orphan*/  host_lock; int /*<<< orphan*/  scan_mutex; int /*<<< orphan*/  tmf_work_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SHOST_CANCEL ; 
 int /*<<< orphan*/  SHOST_CANCEL_RECOVERY ; 
 int /*<<< orphan*/  SHOST_DEL ; 
 int /*<<< orphan*/  SHOST_DEL_RECOVERY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 scalar_t__ FUNC8 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct Scsi_Host *shost)
{
	unsigned long flags;

	FUNC4(&shost->scan_mutex);
	FUNC10(shost->host_lock, flags);
	if (FUNC8(shost, SHOST_CANCEL))
		if (FUNC8(shost, SHOST_CANCEL_RECOVERY)) {
			FUNC11(shost->host_lock, flags);
			FUNC5(&shost->scan_mutex);
			return;
		}
	FUNC11(shost->host_lock, flags);

	FUNC6(shost);
	FUNC3(shost->tmf_work_q);
	FUNC7(shost);
	FUNC5(&shost->scan_mutex);
	FUNC9(shost);

	FUNC10(shost->host_lock, flags);
	if (FUNC8(shost, SHOST_DEL))
		FUNC0(FUNC8(shost, SHOST_DEL_RECOVERY));
	FUNC11(shost->host_lock, flags);

	FUNC12(&shost->shost_gendev);
	FUNC2(&shost->shost_dev);
	FUNC1(&shost->shost_gendev);
}