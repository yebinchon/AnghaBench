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
struct rpmsg_endpoint {int dummy; } ;
struct glink_channel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct glink_channel*,void*,int,int) ; 
 struct glink_channel* FUNC1 (struct rpmsg_endpoint*) ; 

__attribute__((used)) static int FUNC2(struct rpmsg_endpoint *ept, void *data, int len)
{
	struct glink_channel *channel = FUNC1(ept);

	return FUNC0(channel, data, len, true);
}