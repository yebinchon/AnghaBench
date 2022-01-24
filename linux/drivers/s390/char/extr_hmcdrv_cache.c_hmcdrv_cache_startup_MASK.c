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
struct TYPE_2__ {size_t len; void* content; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_1__ hmcdrv_cache_file ; 
 int /*<<< orphan*/  hmcdrv_cache_order ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 

int FUNC4(size_t cachesize)
{
	if (cachesize > 0) { /* perform caching ? */
		hmcdrv_cache_order = FUNC1(cachesize);
		hmcdrv_cache_file.content =
			(void *) FUNC0(GFP_KERNEL | GFP_DMA,
						  hmcdrv_cache_order);

		if (!hmcdrv_cache_file.content) {
			FUNC3("Allocating the requested cache size of %zu bytes failed\n",
			       cachesize);
			return -ENOMEM;
		}

		FUNC2("content cache enabled, size is %zu bytes\n",
			 cachesize);
	}

	hmcdrv_cache_file.len = cachesize;
	return 0;
}