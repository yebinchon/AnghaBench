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
struct rtllib_device {int /*<<< orphan*/  crypt_info; int /*<<< orphan*/ * pHTInfo; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtllib_device*) ; 

void FUNC6(struct net_device *dev)
{
	struct rtllib_device *ieee = (struct rtllib_device *)
				      FUNC3(dev);

	FUNC1(ieee->pHTInfo);
	ieee->pHTInfo = NULL;
	FUNC5(ieee);

	FUNC2(&ieee->crypt_info);

	FUNC4(ieee);
	FUNC0(dev);
}