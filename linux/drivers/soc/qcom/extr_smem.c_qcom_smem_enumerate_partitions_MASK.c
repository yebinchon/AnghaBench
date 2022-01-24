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
typedef  unsigned int u16 ;
struct smem_ptable_entry {int /*<<< orphan*/  cacheline; int /*<<< orphan*/  host1; int /*<<< orphan*/  host0; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
struct smem_ptable {struct smem_ptable_entry* entry; int /*<<< orphan*/  num_entries; } ;
struct smem_partition_header {int dummy; } ;
struct qcom_smem {int* cacheline; struct smem_partition_header** partitions; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct smem_ptable*) ; 
 int FUNC1 (struct smem_ptable*) ; 
 unsigned int SMEM_HOST_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct smem_ptable* FUNC5 (struct qcom_smem*) ; 
 struct smem_partition_header* FUNC6 (struct qcom_smem*,struct smem_ptable_entry*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC7(struct qcom_smem *smem, u16 local_host)
{
	struct smem_partition_header *header;
	struct smem_ptable_entry *entry;
	struct smem_ptable *ptable;
	unsigned int remote_host;
	u16 host0, host1;
	int i;

	ptable = FUNC5(smem);
	if (FUNC0(ptable))
		return FUNC1(ptable);

	for (i = 0; i < FUNC4(ptable->num_entries); i++) {
		entry = &ptable->entry[i];
		if (!FUNC4(entry->offset))
			continue;
		if (!FUNC4(entry->size))
			continue;

		host0 = FUNC3(entry->host0);
		host1 = FUNC3(entry->host1);
		if (host0 == local_host)
			remote_host = host1;
		else if (host1 == local_host)
			remote_host = host0;
		else
			continue;

		if (remote_host >= SMEM_HOST_COUNT) {
			FUNC2(smem->dev, "bad host %hu\n", remote_host);
			return -EINVAL;
		}

		if (smem->partitions[remote_host]) {
			FUNC2(smem->dev, "duplicate host %hu\n", remote_host);
			return -EINVAL;
		}

		header = FUNC6(smem, entry, host0, host1);
		if (!header)
			return -EINVAL;

		smem->partitions[remote_host] = header;
		smem->cacheline[remote_host] = FUNC4(entry->cacheline);
	}

	return 0;
}