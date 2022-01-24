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
struct asd_ocm_dir_ent {int dummy; } ;
struct asd_ocm_dir {int dummy; } ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * OCMDirEntriesInit ; 
 int /*<<< orphan*/  OCMDirInit ; 
 int OCM_INIT_DIR_ENTRIES ; 
 int OCM_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct asd_ha_struct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC2 (struct asd_ha_struct *asd_ha)
{
	int i;

	/* Zero OCM */
	for (i = 0; i < OCM_MAX_SIZE; i += 4)
		FUNC0(asd_ha, i, 0);

	/* Write Dir */
	FUNC1(asd_ha, &OCMDirInit, 0,
			  sizeof(struct asd_ocm_dir));

	/* Write Dir Entries */
	for (i = 0; i < OCM_INIT_DIR_ENTRIES; i++)
		FUNC1(asd_ha, &OCMDirEntriesInit[i],
				  sizeof(struct asd_ocm_dir) +
				  (i * sizeof(struct asd_ocm_dir_ent))
				  , sizeof(struct asd_ocm_dir_ent));

}