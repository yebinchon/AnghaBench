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
struct most_interface {int dummy; } ;
struct comp_channel {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  wq; scalar_t__ access_ref; int /*<<< orphan*/  unlink; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct comp_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct comp_channel*) ; 
 struct comp_channel* FUNC2 (struct most_interface*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct comp_channel*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct most_interface *iface, int channel_id)
{
	struct comp_channel *c;

	if (!iface) {
		FUNC5("Bad interface pointer\n");
		return -EINVAL;
	}

	c = FUNC2(iface, channel_id);
	if (!c)
		return -ENXIO;

	FUNC3(&c->io_mutex);
	FUNC6(&c->unlink);
	c->dev = NULL;
	FUNC7(&c->unlink);
	FUNC0(c);
	if (c->access_ref) {
		FUNC8(c);
		FUNC9(&c->wq);
		FUNC4(&c->io_mutex);
	} else {
		FUNC4(&c->io_mutex);
		FUNC1(c);
	}
	return 0;
}