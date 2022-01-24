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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct i2c_device {TYPE_1__ adapter; } ;

/* Variables and functions */
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_device*) ; 
 int SMBHSTSTS_INTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct i2c_device *priv)
{
	int timeout = 0;
	int status;

	do {
		FUNC4(250, 500);
		status = FUNC2(FUNC0(priv));
	} while ((!(status & SMBHSTSTS_INTR)) && (timeout++ < MAX_RETRIES));

	if (timeout > MAX_RETRIES)
		FUNC1(&priv->adapter.dev, "PEC Timeout!\n");

	FUNC3(status, FUNC0(priv));
}