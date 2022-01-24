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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {TYPE_1__ dev; } ;
struct ibmvfc_target {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct ibmvfc_target* FUNC0 (struct scsi_target*) ; 
 struct Scsi_Host* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct ibmvfc_target *FUNC4(struct scsi_target *starget)
{
	struct Scsi_Host *shost = FUNC1(starget->dev.parent);
	struct ibmvfc_target *tgt;
	unsigned long flags;

	FUNC2(shost->host_lock, flags);
	tgt = FUNC0(starget);
	FUNC3(shost->host_lock, flags);
	return tgt;
}