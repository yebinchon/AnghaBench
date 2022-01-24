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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adapter*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *net, char *command,
				      int total_len)
{
	struct adapter *padapter = (struct adapter *)FUNC1(net);
	u16 link_speed;

	link_speed = FUNC0(padapter) / 10;
	return FUNC2(command, total_len, "LinkSpeed %d",
				 link_speed);
}