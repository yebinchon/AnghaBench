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
typedef  int /*<<< orphan*/  u32 ;
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;

/* Variables and functions */
 struct qman_portal* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct qman_portal*,struct qman_fq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qman_portal **p, struct qman_fq *fq, u32 vdqcr)
{
	int ret;

	*p = FUNC0();
	ret = FUNC2(*p, fq, vdqcr);
	FUNC1();
	return ret;
}