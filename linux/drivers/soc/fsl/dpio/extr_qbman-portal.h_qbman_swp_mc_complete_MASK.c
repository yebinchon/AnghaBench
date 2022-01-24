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
typedef  int /*<<< orphan*/  u8 ;
struct qbman_swp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct qbman_swp*) ; 
 int /*<<< orphan*/  FUNC2 (struct qbman_swp*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *FUNC3(struct qbman_swp *swp, void *cmd,
					  u8 cmd_verb)
{
	int loopvar = 2000;

	FUNC2(swp, cmd, cmd_verb);

	do {
		cmd = FUNC1(swp);
	} while (!cmd && loopvar--);

	FUNC0(!loopvar);

	return cmd;
}