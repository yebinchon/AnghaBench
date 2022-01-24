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
struct gb_lights {int lights_count; int /*<<< orphan*/  lights_lock; int /*<<< orphan*/  lights; struct gb_connection* connection; } ;
struct gb_light {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct gb_lights*) ; 
 int FUNC2 (struct gb_lights*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gb_lights *glights)
{
	struct gb_connection *connection = glights->connection;
	int ret;
	int i;

	FUNC4(&glights->lights_lock);
	ret = FUNC1(glights);
	if (ret < 0)
		goto out;

	glights->lights = FUNC3(glights->lights_count,
				  sizeof(struct gb_light), GFP_KERNEL);
	if (!glights->lights) {
		ret = -ENOMEM;
		goto out;
	}

	for (i = 0; i < glights->lights_count; i++) {
		ret = FUNC2(glights, i);
		if (ret < 0) {
			FUNC0(&connection->bundle->dev,
				"Fail to configure lights device\n");
			goto out;
		}
	}

out:
	FUNC5(&glights->lights_lock);
	return ret;
}