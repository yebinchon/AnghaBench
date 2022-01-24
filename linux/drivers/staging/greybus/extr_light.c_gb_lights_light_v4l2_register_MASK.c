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
struct gb_light {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct gb_connection* FUNC1 (struct gb_light*) ; 

__attribute__((used)) static int FUNC2(struct gb_light *light)
{
	struct gb_connection *connection = FUNC1(light);

	FUNC0(&connection->bundle->dev, "no support for v4l2 subdevices\n");
	return 0;
}