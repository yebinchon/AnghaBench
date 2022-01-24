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
typedef  int u32 ;
struct qman_fq {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  fq_table ; 
 int num_fqids ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(u32 _num_fqids)
{
	num_fqids = _num_fqids;

	fq_table = FUNC2(FUNC0(sizeof(struct qman_fq *),
				       num_fqids, 2));
	if (!fq_table)
		return -ENOMEM;

	FUNC1("Allocated fq lookup table at %p, entry count %u\n",
		 fq_table, num_fqids * 2);
	return 0;
}