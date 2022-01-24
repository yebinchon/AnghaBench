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
struct device {int /*<<< orphan*/  driver; } ;
struct apr_driver {int (* probe ) (struct apr_device*) ;} ;
struct apr_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct apr_device*) ; 
 struct apr_device* FUNC1 (struct device*) ; 
 struct apr_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct apr_device *adev = FUNC1(dev);
	struct apr_driver *adrv = FUNC2(dev->driver);

	return adrv->probe(adev);
}