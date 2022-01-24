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
struct arcxcnn {TYPE_2__* bl; int /*<<< orphan*/  client; } ;
struct TYPE_3__ {scalar_t__ brightness; } ;
struct TYPE_4__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCXCNN_CMD ; 
 int ARCXCNN_CMD_RESET ; 
 int /*<<< orphan*/  ARCXCNN_LEDEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct arcxcnn* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *cl)
{
	struct arcxcnn *lp = FUNC1(cl);

	/* disable all strings (ignore errors) */
	FUNC2(lp->client,
		ARCXCNN_LEDEN, 0x00);
	/* reset the device (ignore errors) */
	FUNC2(lp->client,
		ARCXCNN_CMD, ARCXCNN_CMD_RESET);

	lp->bl->props.brightness = 0;

	FUNC0(lp->bl);

	return 0;
}