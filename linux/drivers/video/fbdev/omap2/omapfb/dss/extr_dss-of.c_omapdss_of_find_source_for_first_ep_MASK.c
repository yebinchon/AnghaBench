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
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct omap_dss_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct omap_dss_device* FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*) ; 

struct omap_dss_device *
FUNC5(struct device_node *node)
{
	struct device_node *ep;
	struct device_node *src_port;
	struct omap_dss_device *src;

	ep = FUNC3(node);
	if (!ep)
		return FUNC0(-EINVAL);

	src_port = FUNC4(ep);
	if (!src_port) {
		FUNC1(ep);
		return FUNC0(-EINVAL);
	}

	FUNC1(ep);

	src = FUNC2(src_port);

	FUNC1(src_port);

	return src ? src : FUNC0(-EPROBE_DEFER);
}