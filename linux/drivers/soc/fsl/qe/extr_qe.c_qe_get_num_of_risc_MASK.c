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
typedef  unsigned int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int* FUNC0 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 () ; 

unsigned int FUNC3(void)
{
	struct device_node *qe;
	int size;
	unsigned int num_of_risc = 0;
	const u32 *prop;

	qe = FUNC2();
	if (!qe)
		return num_of_risc;

	prop = FUNC0(qe, "fsl,qe-num-riscs", &size);
	if (prop && size == sizeof(*prop))
		num_of_risc = *prop;

	FUNC1(qe);

	return num_of_risc;
}