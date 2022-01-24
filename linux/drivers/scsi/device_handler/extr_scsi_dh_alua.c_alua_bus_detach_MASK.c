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
struct alua_port_group {int /*<<< orphan*/  kref; int /*<<< orphan*/  lock; } ;
struct alua_dh_data {int /*<<< orphan*/  node; int /*<<< orphan*/  pg_lock; int /*<<< orphan*/ * sdev; int /*<<< orphan*/  pg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alua_dh_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct alua_port_group* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  release_port_group ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct scsi_device *sdev)
{
	struct alua_dh_data *h = sdev->handler_data;
	struct alua_port_group *pg;

	FUNC6(&h->pg_lock);
	pg = FUNC5(h->pg, FUNC3(&h->pg_lock));
	FUNC4(h->pg, NULL);
	h->sdev = NULL;
	FUNC8(&h->pg_lock);
	if (pg) {
		FUNC7(&pg->lock);
		FUNC2(&h->node);
		FUNC9(&pg->lock);
		FUNC1(&pg->kref, release_port_group);
	}
	sdev->handler_data = NULL;
	FUNC0(h);
}