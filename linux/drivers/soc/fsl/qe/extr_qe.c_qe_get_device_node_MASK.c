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
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static struct device_node *FUNC2(void)
{
	struct device_node *qe;

	/*
	 * Newer device trees have an "fsl,qe" compatible property for the QE
	 * node, but we still need to support older device trees.
	 */
	qe = FUNC0(NULL, NULL, "fsl,qe");
	if (qe)
		return qe;
	return FUNC1(NULL, "qe");
}