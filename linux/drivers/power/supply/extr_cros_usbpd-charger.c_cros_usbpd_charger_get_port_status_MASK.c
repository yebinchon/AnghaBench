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
struct port_data {scalar_t__ last_update; } ;

/* Variables and functions */
 scalar_t__ CHARGER_CACHE_UPDATE_DELAY ; 
 int FUNC0 (struct port_data*) ; 
 int FUNC1 (struct port_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct port_data*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct port_data *port,
					      bool ratelimit)
{
	int ret;

	if (ratelimit &&
	    FUNC3(port->last_update +
				  CHARGER_CACHE_UPDATE_DELAY))
		return 0;

	ret = FUNC1(port);
	if (ret < 0)
		return ret;

	if (!FUNC2(port))
		ret = FUNC0(port);
	port->last_update = jiffies;

	return ret;
}