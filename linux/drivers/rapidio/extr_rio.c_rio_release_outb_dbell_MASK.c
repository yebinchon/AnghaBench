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
struct rio_dev {int dummy; } ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 int FUNC1 (struct resource*) ; 

int FUNC2(struct rio_dev *rdev, struct resource *res)
{
	int rc = FUNC1(res);

	FUNC0(res);

	return rc;
}