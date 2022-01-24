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
struct ntb_transport_client {int /*<<< orphan*/  (* remove ) (struct device*) ;} ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct ntb_transport_client* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	const struct ntb_transport_client *client;

	client = FUNC0(dev->driver);
	client->remove(dev);

	FUNC1(dev);

	return 0;
}