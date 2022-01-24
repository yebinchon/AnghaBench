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
struct sysrq_key_op {int dummy; } ;

/* Variables and functions */
 struct sysrq_key_op** sysrq_key_table ; 
 int FUNC0 (int) ; 

struct sysrq_key_op *FUNC1(int key)
{
        struct sysrq_key_op *op_p = NULL;
        int i;

	i = FUNC0(key);
	if (i != -1)
	        op_p = sysrq_key_table[i];

        return op_p;
}