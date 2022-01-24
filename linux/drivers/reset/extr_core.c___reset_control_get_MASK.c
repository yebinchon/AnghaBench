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
struct reset_control {int dummy; } ;
struct device {scalar_t__ of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct reset_control* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct reset_control* FUNC2 (scalar_t__,char const*,int,int,int,int) ; 
 struct reset_control* FUNC3 (struct device*,char const*,int,int,int) ; 

struct reset_control *FUNC4(struct device *dev, const char *id,
					  int index, bool shared, bool optional,
					  bool acquired)
{
	if (FUNC1(shared && acquired))
		return FUNC0(-EINVAL);

	if (dev->of_node)
		return FUNC2(dev->of_node, id, index, shared,
					      optional, acquired);

	return FUNC3(dev, id, shared, optional,
					       acquired);
}