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
struct port100_frame {int /*<<< orphan*/  datalen; } ;

/* Variables and functions */
 int PORT100_FRAME_TAIL_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(void *frame)
{
	struct port100_frame *f = frame;

	return sizeof(struct port100_frame) + FUNC0(f->datalen) +
	       PORT100_FRAME_TAIL_LEN;
}