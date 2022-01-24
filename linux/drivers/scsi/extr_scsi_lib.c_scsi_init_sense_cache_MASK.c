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
struct kmem_cache {int dummy; } ;
struct Scsi_Host {scalar_t__ unchecked_isa_dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int SLAB_CACHE_DMA ; 
 int SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct kmem_cache* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  scsi_sense_cache ; 
 int /*<<< orphan*/  scsi_sense_cache_mutex ; 
 int /*<<< orphan*/  scsi_sense_isadma_cache ; 

int FUNC5(struct Scsi_Host *shost)
{
	struct kmem_cache *cache;
	int ret = 0;

	FUNC2(&scsi_sense_cache_mutex);
	cache = FUNC4(shost->unchecked_isa_dma);
	if (cache)
		goto exit;

	if (shost->unchecked_isa_dma) {
		scsi_sense_isadma_cache =
			FUNC0("scsi_sense_cache(DMA)",
				SCSI_SENSE_BUFFERSIZE, 0,
				SLAB_HWCACHE_ALIGN | SLAB_CACHE_DMA, NULL);
		if (!scsi_sense_isadma_cache)
			ret = -ENOMEM;
	} else {
		scsi_sense_cache =
			FUNC1("scsi_sense_cache",
				SCSI_SENSE_BUFFERSIZE, 0, SLAB_HWCACHE_ALIGN,
				0, SCSI_SENSE_BUFFERSIZE, NULL);
		if (!scsi_sense_cache)
			ret = -ENOMEM;
	}
 exit:
	FUNC3(&scsi_sense_cache_mutex);
	return ret;
}