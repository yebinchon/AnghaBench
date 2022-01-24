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
 int ENODEV ; 
 char* FUNC0 (struct device_node*,char*,int*) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 

int FUNC4(struct device_node *node, char *modalias, int len)
{
	const char *compatible, *p;
	int cplen;

	compatible = FUNC0(node, "compatible", &cplen);
	if (!compatible || FUNC3(compatible) > cplen)
		return -ENODEV;
	p = FUNC1(compatible, ',');
	FUNC2(modalias, p ? p + 1 : compatible, len);
	return 0;
}