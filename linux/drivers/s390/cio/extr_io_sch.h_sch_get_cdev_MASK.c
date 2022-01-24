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
struct subchannel {int dummy; } ;
struct io_subchannel_private {struct ccw_device* cdev; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 struct io_subchannel_private* FUNC0 (struct subchannel*) ; 

__attribute__((used)) static inline struct ccw_device *FUNC1(struct subchannel *sch)
{
	struct io_subchannel_private *priv = FUNC0(sch);
	return priv ? priv->cdev : NULL;
}