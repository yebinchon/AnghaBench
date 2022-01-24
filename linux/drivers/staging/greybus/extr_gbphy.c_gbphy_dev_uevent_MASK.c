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
struct kobj_uevent_env {int dummy; } ;
struct greybus_descriptor_cport {int /*<<< orphan*/  protocol_id; } ;
struct gbphy_device {int /*<<< orphan*/  id; struct gb_bundle* bundle; struct greybus_descriptor_cport* cport_desc; } ;
struct gb_module {int /*<<< orphan*/  module_id; } ;
struct gb_interface {int /*<<< orphan*/  product_id; int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  interface_id; struct gb_host_device* hd; struct gb_module* module; } ;
struct gb_host_device {int /*<<< orphan*/  bus_id; } ;
struct gb_bundle {int /*<<< orphan*/  class; int /*<<< orphan*/  id; struct gb_interface* intf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ,...) ; 
 struct gbphy_device* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct kobj_uevent_env *env)
{
	struct gbphy_device *gbphy_dev = FUNC1(dev);
	struct greybus_descriptor_cport *cport_desc = gbphy_dev->cport_desc;
	struct gb_bundle *bundle = gbphy_dev->bundle;
	struct gb_interface *intf = bundle->intf;
	struct gb_module *module = intf->module;
	struct gb_host_device *hd = intf->hd;

	if (FUNC0(env, "BUS=%u", hd->bus_id))
		return -ENOMEM;
	if (FUNC0(env, "MODULE=%u", module->module_id))
		return -ENOMEM;
	if (FUNC0(env, "INTERFACE=%u", intf->interface_id))
		return -ENOMEM;
	if (FUNC0(env, "GREYBUS_ID=%08x/%08x",
			   intf->vendor_id, intf->product_id))
		return -ENOMEM;
	if (FUNC0(env, "BUNDLE=%u", gbphy_dev->bundle->id))
		return -ENOMEM;
	if (FUNC0(env, "BUNDLE_CLASS=%02x", bundle->class))
		return -ENOMEM;
	if (FUNC0(env, "GBPHY=%u", gbphy_dev->id))
		return -ENOMEM;
	if (FUNC0(env, "PROTOCOL_ID=%02x", cport_desc->protocol_id))
		return -ENOMEM;

	return 0;
}