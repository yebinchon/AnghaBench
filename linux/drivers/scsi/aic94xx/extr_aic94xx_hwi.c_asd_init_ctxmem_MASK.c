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
struct TYPE_2__ {int max_ddbs; int /*<<< orphan*/  ddb_lock; int /*<<< orphan*/  ddb_bitmap; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct asd_ha_struct *asd_ha)
{
	int bitmap_bytes;

	FUNC3(asd_ha);
	FUNC2(asd_ha);
	FUNC1(asd_ha);

	/* The kernel wants bitmaps to be unsigned long sized. */
	bitmap_bytes = (asd_ha->hw_prof.max_ddbs+7)/8;
	bitmap_bytes = FUNC0(bitmap_bytes*8)*sizeof(unsigned long);
	asd_ha->hw_prof.ddb_bitmap = FUNC4(bitmap_bytes, GFP_KERNEL);
	if (!asd_ha->hw_prof.ddb_bitmap)
		return -ENOMEM;
	FUNC5(&asd_ha->hw_prof.ddb_lock);

	return 0;
}