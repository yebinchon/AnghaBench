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
struct wa_seg {int /*<<< orphan*/  tr_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct wa_seg *seg)
{
	FUNC1(&seg->tr_urb);

	/* set the remaining memory to 0. */
	FUNC0(((void *)seg) + sizeof(seg->tr_urb), 0,
		sizeof(*seg) - sizeof(seg->tr_urb));
}