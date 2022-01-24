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
struct led_classdev {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_channel {int is_registered; int /*<<< orphan*/ * led; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct led_classdev* FUNC0 (struct gb_channel*) ; 
 struct gb_connection* FUNC1 (struct gb_channel*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct led_classdev*) ; 

__attribute__((used)) static int FUNC3(struct gb_channel *channel)
{
	struct gb_connection *connection = FUNC1(channel);
	struct led_classdev *cdev = FUNC0(channel);
	int ret;

	ret = FUNC2(&connection->bundle->dev, cdev);
	if (ret < 0)
		channel->led = NULL;
	else
		channel->is_registered = true;
	return ret;
}