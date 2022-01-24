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
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct device_node *FUNC1(struct device *dev)
{
	return FUNC0(dev->of_node, 0);
}