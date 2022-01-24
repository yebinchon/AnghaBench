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
struct arena_info {size_t logoff; size_t mapoff; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 size_t SZ_2M ; 
 int FUNC1 (struct arena_info*,size_t,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct arena_info*) ; 

__attribute__((used)) static int FUNC8(struct arena_info *arena)
{
	int ret = -EINVAL;
	void *zerobuf;
	size_t offset = 0;
	size_t chunk_size = SZ_2M;
	size_t mapsize = arena->logoff - arena->mapoff;

	zerobuf = FUNC5(chunk_size, GFP_KERNEL);
	if (!zerobuf)
		return -ENOMEM;

	/*
	 * mapoff should always be at least 512B  aligned. We rely on that to
	 * make sure rw_bytes does error clearing correctly, so make sure that
	 * is the case.
	 */
	FUNC3(FUNC7(arena), !FUNC0(arena->mapoff, 512),
		"arena->mapoff: %#llx is unaligned\n", arena->mapoff);

	while (mapsize) {
		size_t size = FUNC6(mapsize, chunk_size);

		FUNC3(FUNC7(arena), size < 512,
			"chunk size: %#zx is unaligned\n", size);
		ret = FUNC1(arena, arena->mapoff + offset, zerobuf,
				size, 0);
		if (ret)
			goto free;

		offset += size;
		mapsize -= size;
		FUNC2();
	}

 free:
	FUNC4(zerobuf);
	return ret;
}