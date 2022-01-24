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
struct scsi_device {struct alua_dh_data* handler_data; } ;
struct alua_port_group {int /*<<< orphan*/  kref; } ;
struct alua_dh_data {int /*<<< orphan*/  pg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alua_port_group*,struct scsi_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct alua_port_group* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  release_port_group ; 

__attribute__((used)) static void FUNC6(struct scsi_device *sdev, bool force)
{
	struct alua_dh_data *h = sdev->handler_data;
	struct alua_port_group *pg;

	FUNC4();
	pg = FUNC3(h->pg);
	if (!pg || !FUNC1(&pg->kref)) {
		FUNC5();
		return;
	}
	FUNC5();

	FUNC0(pg, sdev, NULL, force);
	FUNC2(&pg->kref, release_port_group);
}