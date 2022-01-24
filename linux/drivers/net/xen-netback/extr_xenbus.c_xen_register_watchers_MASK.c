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
struct xenvif {int dummy; } ;
struct xenbus_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xenbus_device*,struct xenvif*) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*,struct xenvif*) ; 

__attribute__((used)) static void FUNC2(struct xenbus_device *dev,
				  struct xenvif *vif)
{
	FUNC0(dev, vif);
	FUNC1(dev, vif);
}