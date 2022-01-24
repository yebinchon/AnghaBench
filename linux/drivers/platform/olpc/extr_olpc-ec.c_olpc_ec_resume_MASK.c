#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct olpc_ec_priv {int suspended; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* resume ) (struct platform_device*) ;} ;

/* Variables and functions */
 TYPE_1__* ec_driver ; 
 struct olpc_ec_priv* FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct platform_device *pdev = FUNC2(dev);
	struct olpc_ec_priv *ec = FUNC0(pdev);

	ec->suspended = false;
	return ec_driver->resume ? ec_driver->resume(pdev) : 0;
}