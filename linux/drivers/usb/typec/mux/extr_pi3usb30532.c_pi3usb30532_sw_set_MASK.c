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
typedef  int /*<<< orphan*/  u8 ;
struct typec_switch {int dummy; } ;
struct pi3usb30532 {int /*<<< orphan*/  lock; int /*<<< orphan*/  conf; } ;
typedef  enum typec_orientation { ____Placeholder_typec_orientation } typec_orientation ;

/* Variables and functions */
 int /*<<< orphan*/  PI3USB30532_CONF_OPEN ; 
 int /*<<< orphan*/  PI3USB30532_CONF_SWAP ; 
#define  TYPEC_ORIENTATION_NONE 130 
#define  TYPEC_ORIENTATION_NORMAL 129 
#define  TYPEC_ORIENTATION_REVERSE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pi3usb30532*,int /*<<< orphan*/ ) ; 
 struct pi3usb30532* FUNC3 (struct typec_switch*) ; 

__attribute__((used)) static int FUNC4(struct typec_switch *sw,
			      enum typec_orientation orientation)
{
	struct pi3usb30532 *pi = FUNC3(sw);
	u8 new_conf;
	int ret;

	FUNC0(&pi->lock);
	new_conf = pi->conf;

	switch (orientation) {
	case TYPEC_ORIENTATION_NONE:
		new_conf = PI3USB30532_CONF_OPEN;
		break;
	case TYPEC_ORIENTATION_NORMAL:
		new_conf &= ~PI3USB30532_CONF_SWAP;
		break;
	case TYPEC_ORIENTATION_REVERSE:
		new_conf |= PI3USB30532_CONF_SWAP;
		break;
	}

	ret = FUNC2(pi, new_conf);
	FUNC1(&pi->lock);

	return ret;
}