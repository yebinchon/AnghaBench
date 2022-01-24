#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int dummy; } ;
struct adp8860_bl {TYPE_2__* bl; scalar_t__ en_ambl_sens; scalar_t__ led; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADP8860_MDCR ; 
 int /*<<< orphan*/  NSTBY ; 
 int /*<<< orphan*/  adp8860_bl_attr_group ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct adp8860_bl* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct adp8860_bl *data = FUNC2(client);

	FUNC0(client, ADP8860_MDCR, NSTBY);

	if (data->led)
		FUNC1(client);

	if (data->en_ambl_sens)
		FUNC3(&data->bl->dev.kobj,
			&adp8860_bl_attr_group);

	return 0;
}