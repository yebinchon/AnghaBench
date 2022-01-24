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
struct resource {int start; } ;
struct device_node {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int FUNC0 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 () ; 
 int qebase ; 

__attribute__((used)) static phys_addr_t FUNC3(void)
{
	struct device_node *qe;
	int ret;
	struct resource res;

	if (qebase != -1)
		return qebase;

	qe = FUNC2();
	if (!qe)
		return qebase;

	ret = FUNC0(qe, 0, &res);
	if (!ret)
		qebase = res.start;
	FUNC1(qe);

	return qebase;
}