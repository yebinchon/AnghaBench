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
struct q6v5 {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int) ; 

__attribute__((used)) static void FUNC1(struct q6v5 *qproc, struct device **pds,
			    size_t pd_count)
{
	int i;

	for (i = 0; i < pd_count; i++)
		FUNC0(pds[i], false);
}