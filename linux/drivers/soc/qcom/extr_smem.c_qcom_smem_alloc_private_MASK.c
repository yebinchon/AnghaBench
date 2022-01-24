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
struct smem_private_entry {scalar_t__ canary; scalar_t__ padding_hdr; int /*<<< orphan*/  size; void* padding_data; void* item; } ;
struct smem_partition_header {void* host1; void* host0; int /*<<< orphan*/  offset_free_uncached; } ;
struct qcom_smem {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOSPC ; 
 scalar_t__ SMEM_PRIVATE_CANARY ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 struct smem_private_entry* FUNC7 (struct smem_partition_header*) ; 
 void* FUNC8 (struct smem_partition_header*) ; 
 struct smem_private_entry* FUNC9 (struct smem_partition_header*) ; 
 struct smem_private_entry* FUNC10 (struct smem_private_entry*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct qcom_smem *smem,
				   struct smem_partition_header *phdr,
				   unsigned item,
				   size_t size)
{
	struct smem_private_entry *hdr, *end;
	size_t alloc_size;
	void *cached;

	hdr = FUNC7(phdr);
	end = FUNC9(phdr);
	cached = FUNC8(phdr);

	while (hdr < end) {
		if (hdr->canary != SMEM_PRIVATE_CANARY)
			goto bad_canary;
		if (FUNC4(hdr->item) == item)
			return -EEXIST;

		hdr = FUNC10(hdr);
	}

	/* Check that we don't grow into the cached region */
	alloc_size = sizeof(*hdr) + FUNC0(size, 8);
	if ((void *)hdr + alloc_size > cached) {
		FUNC3(smem->dev, "Out of memory\n");
		return -ENOSPC;
	}

	hdr->canary = SMEM_PRIVATE_CANARY;
	hdr->item = FUNC1(item);
	hdr->size = FUNC2(FUNC0(size, 8));
	hdr->padding_data = FUNC1(FUNC6(hdr->size) - size);
	hdr->padding_hdr = 0;

	/*
	 * Ensure the header is written before we advance the free offset, so
	 * that remote processors that does not take the remote spinlock still
	 * gets a consistent view of the linked list.
	 */
	FUNC11();
	FUNC5(&phdr->offset_free_uncached, alloc_size);

	return 0;
bad_canary:
	FUNC3(smem->dev, "Found invalid canary in hosts %hu:%hu partition\n",
		FUNC4(phdr->host0), FUNC4(phdr->host1));

	return -EINVAL;
}