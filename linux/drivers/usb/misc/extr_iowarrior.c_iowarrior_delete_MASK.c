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
struct iowarrior {TYPE_1__* interface; struct iowarrior* read_queue; int /*<<< orphan*/  int_in_urb; struct iowarrior* int_in_buffer; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iowarrior*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC4(struct iowarrior *dev)
{
	FUNC0(&dev->interface->dev, "minor %d\n", dev->minor);
	FUNC1(dev->int_in_buffer);
	FUNC2(dev->int_in_urb);
	FUNC1(dev->read_queue);
	FUNC3(dev->interface);
	FUNC1(dev);
}