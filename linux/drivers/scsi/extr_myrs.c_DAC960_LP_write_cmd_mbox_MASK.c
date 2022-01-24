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
union myrs_cmd_mbox {int /*<<< orphan*/ * words; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(union myrs_cmd_mbox *mem_mbox,
		union myrs_cmd_mbox *mbox)
{
	FUNC1(&mem_mbox->words[1], &mbox->words[1],
	       sizeof(union myrs_cmd_mbox) - sizeof(unsigned int));
	/* Barrier to avoid reordering */
	FUNC2();
	mem_mbox->words[0] = mbox->words[0];
	/* Barrier to force PCI access */
	FUNC0();
}