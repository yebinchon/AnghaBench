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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 

__attribute__((used)) static struct net_device *FUNC2(__be32 saddr)
{
	struct net_device *ndev;

	ndev = FUNC0(&init_net, saddr, false);
	if (!ndev)
		return NULL;

	return FUNC1(ndev);
}