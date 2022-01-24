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
typedef  union qm_mr_entry {int dummy; } qm_mr_entry ;
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct qman_portal *p, struct qman_fq *fq,
		   const union qm_mr_entry *msg)
{
	FUNC1("cb_ern() unimplemented");
	FUNC0(1);
}