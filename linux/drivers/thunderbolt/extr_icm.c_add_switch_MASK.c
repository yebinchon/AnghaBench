#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uuid_t ;
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct tb_switch {int authorized; int security_level; int boot; int rpm; int /*<<< orphan*/  dev; int /*<<< orphan*/  rpm_complete; void* depth; void* link; void* connection_key; void* connection_id; int /*<<< orphan*/  uuid; int /*<<< orphan*/  tb; } ;
struct intel_vss {int flags; } ;
typedef  enum tb_security_level { ____Placeholder_tb_security_level } tb_security_level ;
struct TYPE_4__ {TYPE_1__* remote; } ;
struct TYPE_3__ {TYPE_2__* remote; } ;

/* Variables and functions */
 struct tb_switch* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTEL_VSS_FLAGS_RTD3 ; 
 scalar_t__ FUNC1 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 struct intel_vss* FUNC4 (void* const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC9 (struct tb_switch*) ; 
 int /*<<< orphan*/  FUNC10 (struct tb_switch*,char*) ; 
 int FUNC11 (struct tb_switch*) ; 
 struct tb_switch* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tb_switch*) ; 
 TYPE_1__* FUNC14 (struct tb_switch*) ; 

__attribute__((used)) static struct tb_switch *FUNC15(struct tb_switch *parent_sw, u64 route,
				    const uuid_t *uuid, const u8 *ep_name,
				    size_t ep_name_size, u8 connection_id,
				    u8 connection_key, u8 link, u8 depth,
				    enum tb_security_level security_level,
				    bool authorized, bool boot)
{
	const struct intel_vss *vss;
	struct tb_switch *sw;
	int ret;

	FUNC5(&parent_sw->dev);

	sw = FUNC12(parent_sw->tb, &parent_sw->dev, route);
	if (FUNC1(sw))
		goto out;

	sw->uuid = FUNC3(uuid, sizeof(*uuid), GFP_KERNEL);
	if (!sw->uuid) {
		FUNC10(sw, "cannot allocate memory for switch\n");
		FUNC13(sw);
		goto out;
	}
	sw->connection_id = connection_id;
	sw->connection_key = connection_key;
	sw->link = link;
	sw->depth = depth;
	sw->authorized = authorized;
	sw->security_level = security_level;
	sw->boot = boot;
	FUNC2(&sw->rpm_complete);

	vss = FUNC4(ep_name, ep_name_size);
	if (vss)
		sw->rpm = !!(vss->flags & INTEL_VSS_FLAGS_RTD3);

	/* Link the two switches now */
	FUNC8(route, parent_sw)->remote = FUNC14(sw);
	FUNC14(sw)->remote = FUNC8(route, parent_sw);

	ret = FUNC11(sw);
	if (ret) {
		FUNC8(FUNC9(sw), parent_sw)->remote = NULL;
		FUNC13(sw);
		sw = FUNC0(ret);
	}

out:
	FUNC6(&parent_sw->dev);
	FUNC7(&parent_sw->dev);

	return sw;
}