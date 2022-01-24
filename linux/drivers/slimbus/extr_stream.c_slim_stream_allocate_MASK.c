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
struct slim_stream_runtime {int /*<<< orphan*/  node; struct slim_device* dev; int /*<<< orphan*/  name; } ;
struct slim_device {int /*<<< orphan*/  stream_list_lock; int /*<<< orphan*/  stream_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct slim_stream_runtime* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct slim_stream_runtime*) ; 
 struct slim_stream_runtime* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct slim_stream_runtime *FUNC7(struct slim_device *dev,
						 const char *name)
{
	struct slim_stream_runtime *rt;

	rt = FUNC3(sizeof(*rt), GFP_KERNEL);
	if (!rt)
		return FUNC0(-ENOMEM);

	rt->name = FUNC1(GFP_KERNEL, "slim-%s", name);
	if (!rt->name) {
		FUNC2(rt);
		return FUNC0(-ENOMEM);
	}

	rt->dev = dev;
	FUNC5(&dev->stream_list_lock);
	FUNC4(&rt->node, &dev->stream_list);
	FUNC6(&dev->stream_list_lock);

	return rt;
}