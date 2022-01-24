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
struct list_head {int dummy; } ;
struct dasd_mchunk {unsigned long size; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static inline void
FUNC2(struct list_head *chunk_list, void *mem,
		    unsigned long size)
{
	struct dasd_mchunk *chunk;

	FUNC0(chunk_list);
	chunk = (struct dasd_mchunk *) mem;
	chunk->size = size - sizeof(struct dasd_mchunk);
	FUNC1(&chunk->list, chunk_list);
}