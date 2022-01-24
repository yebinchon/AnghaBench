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
typedef  scalar_t__ int16_t ;
struct TYPE_2__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GNTST_bad_page ; 
 scalar_t__ GNTST_eagain ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,void*,int) ; 
 unsigned int MAX_DELAY ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(unsigned int cmd, void *gop, int16_t *status,
						const char *func)
{
	unsigned delay = 1;

	do {
		FUNC0(FUNC1(cmd, gop, 1));
		if (*status == GNTST_eagain)
			FUNC2(delay++);
	} while ((*status == GNTST_eagain) && (delay < MAX_DELAY));

	if (delay >= MAX_DELAY) {
		FUNC3("%s: %s eagain grant\n", func, current->comm);
		*status = GNTST_bad_page;
	}
}