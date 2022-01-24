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
struct smem_private_entry {scalar_t__ canary; int /*<<< orphan*/  padding_data; int /*<<< orphan*/  size; int /*<<< orphan*/  item; } ;
struct smem_partition_header {int /*<<< orphan*/  host1; int /*<<< orphan*/  host0; } ;
struct qcom_smem {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SMEM_PRIVATE_CANARY ; 
 struct smem_private_entry* FUNC1 (struct smem_private_entry*,size_t) ; 
 void* FUNC2 (struct smem_private_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 struct smem_private_entry* FUNC6 (struct smem_partition_header*,size_t) ; 
 struct smem_private_entry* FUNC7 (struct smem_partition_header*) ; 
 struct smem_private_entry* FUNC8 (struct smem_partition_header*) ; 
 struct smem_private_entry* FUNC9 (struct smem_partition_header*) ; 
 struct smem_private_entry* FUNC10 (struct smem_private_entry*) ; 
 void* FUNC11 (struct smem_private_entry*) ; 

__attribute__((used)) static void *FUNC12(struct qcom_smem *smem,
				   struct smem_partition_header *phdr,
				   size_t cacheline,
				   unsigned item,
				   size_t *size)
{
	struct smem_private_entry *e, *end;

	e = FUNC7(phdr);
	end = FUNC9(phdr);

	while (e < end) {
		if (e->canary != SMEM_PRIVATE_CANARY)
			goto invalid_canary;

		if (FUNC4(e->item) == item) {
			if (size != NULL)
				*size = FUNC5(e->size) -
					FUNC4(e->padding_data);

			return FUNC11(e);
		}

		e = FUNC10(e);
	}

	/* Item was not found in the uncached list, search the cached list */

	e = FUNC6(phdr, cacheline);
	end = FUNC8(phdr);

	while (e > end) {
		if (e->canary != SMEM_PRIVATE_CANARY)
			goto invalid_canary;

		if (FUNC4(e->item) == item) {
			if (size != NULL)
				*size = FUNC5(e->size) -
					FUNC4(e->padding_data);

			return FUNC2(e);
		}

		e = FUNC1(e, cacheline);
	}

	return FUNC0(-ENOENT);

invalid_canary:
	FUNC3(smem->dev, "Found invalid canary in hosts %hu:%hu partition\n",
			FUNC4(phdr->host0), FUNC4(phdr->host1));

	return FUNC0(-EINVAL);
}