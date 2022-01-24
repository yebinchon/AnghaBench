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
struct xenbus_device {int dummy; } ;
struct evtchn_close {int port; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVTCHNOP_close ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_close*) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*,int,char*,int) ; 

int FUNC2(struct xenbus_device *dev, int port)
{
	struct evtchn_close close;
	int err;

	close.port = port;

	err = FUNC0(EVTCHNOP_close, &close);
	if (err)
		FUNC1(dev, err, "freeing event channel %d", port);

	return err;
}