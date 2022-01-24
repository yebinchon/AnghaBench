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
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node const*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node const*,char*,char*,int,struct of_phandle_args*) ; 
 int FUNC3 (struct device_node const*,char*,char*) ; 

__attribute__((used)) static struct device_node *FUNC4(const struct device_node *np)
{
	struct of_phandle_args args;
	int ret, index;

	index = FUNC3(np, "interconnect-names", "dma-mem");
	if (index < 0)
		return FUNC0(np);

	ret = FUNC2(np, "interconnects",
					 "#interconnect-cells",
					 index, &args);
	if (ret < 0)
		return FUNC0(np);

	return FUNC1(args.np);
}