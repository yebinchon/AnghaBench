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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct device_node *np)
{
	const __be32 *host_idx;

	host_idx = FUNC1(np, 0, NULL, NULL);
	if (!host_idx)
		return -ENOENT;
	return FUNC0(*host_idx);
}