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
struct ntb_transport_client {int (* probe ) (struct device*) ;} ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct ntb_transport_client* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	const struct ntb_transport_client *client;
	int rc;

	FUNC1(dev);

	client = FUNC0(dev->driver);
	rc = client->probe(dev);
	if (rc)
		FUNC2(dev);

	return rc;
}