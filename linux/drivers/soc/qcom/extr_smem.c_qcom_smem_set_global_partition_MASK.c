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
struct smem_ptable_entry {int /*<<< orphan*/  cacheline; int /*<<< orphan*/  host1; int /*<<< orphan*/  host0; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
struct smem_ptable {struct smem_ptable_entry* entry; int /*<<< orphan*/  num_entries; } ;
struct smem_partition_header {int dummy; } ;
struct qcom_smem {int global_cacheline; struct smem_partition_header* global_partition; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct smem_ptable*) ; 
 int FUNC1 (struct smem_ptable*) ; 
 scalar_t__ SMEM_GLOBAL_HOST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct smem_ptable* FUNC5 (struct qcom_smem*) ; 
 struct smem_partition_header* FUNC6 (struct qcom_smem*,struct smem_ptable_entry*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct qcom_smem *smem)
{
	struct smem_partition_header *header;
	struct smem_ptable_entry *entry;
	struct smem_ptable *ptable;
	bool found = false;
	int i;

	if (smem->global_partition) {
		FUNC2(smem->dev, "Already found the global partition\n");
		return -EINVAL;
	}

	ptable = FUNC5(smem);
	if (FUNC0(ptable))
		return FUNC1(ptable);

	for (i = 0; i < FUNC4(ptable->num_entries); i++) {
		entry = &ptable->entry[i];
		if (!FUNC4(entry->offset))
			continue;
		if (!FUNC4(entry->size))
			continue;

		if (FUNC3(entry->host0) != SMEM_GLOBAL_HOST)
			continue;

		if (FUNC3(entry->host1) == SMEM_GLOBAL_HOST) {
			found = true;
			break;
		}
	}

	if (!found) {
		FUNC2(smem->dev, "Missing entry for global partition\n");
		return -EINVAL;
	}

	header = FUNC6(smem, entry,
				SMEM_GLOBAL_HOST, SMEM_GLOBAL_HOST);
	if (!header)
		return -EINVAL;

	smem->global_partition = header;
	smem->global_cacheline = FUNC4(entry->cacheline);

	return 0;
}