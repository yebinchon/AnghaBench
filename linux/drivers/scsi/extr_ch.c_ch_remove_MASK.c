#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  minor; } ;
typedef  TYPE_1__ scsi_changer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSI_CHANGER_MAJOR ; 
 int /*<<< orphan*/  ch_destroy ; 
 int /*<<< orphan*/  ch_index_idr ; 
 int /*<<< orphan*/  ch_index_lock ; 
 int /*<<< orphan*/  ch_sysfs_class ; 
 TYPE_1__* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	scsi_changer *ch = FUNC1(dev);

	FUNC5(&ch_index_lock);
	FUNC3(&ch_index_idr, ch->minor);
	FUNC6(&ch_index_lock);

	FUNC2(ch_sysfs_class, FUNC0(SCSI_CHANGER_MAJOR,ch->minor));
	FUNC4(&ch->ref, ch_destroy);
	return 0;
}