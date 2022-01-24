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
struct urb {TYPE_1__* dev; int /*<<< orphan*/  pipe; } ;
struct r8a66597_device {int dummy; } ;
struct r8a66597 {struct r8a66597_device device0; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct r8a66597_device* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct r8a66597_device *
FUNC2(struct r8a66597 *r8a66597, struct urb *urb)
{
	if (FUNC1(urb->pipe) == 0)
		return &r8a66597->device0;

	return FUNC0(&urb->dev->dev);
}