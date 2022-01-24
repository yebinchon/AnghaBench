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
struct tty_port {struct serdev_controller* client_data; } ;
struct serport {int /*<<< orphan*/  flags; } ;
struct serdev_controller {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERPORT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,int,size_t) ; 
 struct serport* FUNC1 (struct serdev_controller*) ; 
 int FUNC2 (struct serdev_controller*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tty_port *port, const unsigned char *cp,
				const unsigned char *fp, size_t count)
{
	struct serdev_controller *ctrl = port->client_data;
	struct serport *serport = FUNC1(ctrl);
	int ret;

	if (!FUNC3(SERPORT_ACTIVE, &serport->flags))
		return 0;

	ret = FUNC2(ctrl, cp, count);

	FUNC0(&ctrl->dev, ret < 0 || ret > count,
				"receive_buf returns %d (count = %zu)\n",
				ret, count);
	if (ret < 0)
		return 0;
	else if (ret > count)
		return count;

	return ret;
}