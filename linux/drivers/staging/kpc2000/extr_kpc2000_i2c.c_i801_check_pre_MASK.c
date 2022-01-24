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
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_device*) ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int STATUS_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_device *priv)
{
	int status;

	status = FUNC2(FUNC0(priv));
	if (status & SMBHSTSTS_HOST_BUSY) {
		FUNC1(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
		return -EBUSY;
	}

	status &= STATUS_FLAGS;
	if (status) {
		//dev_dbg(&priv->adapter.dev, "Clearing status flags (%02x)\n", status);
		FUNC3(status, FUNC0(priv));
		status = FUNC2(FUNC0(priv)) & STATUS_FLAGS;
		if (status) {
			FUNC1(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
			return -EBUSY;
		}
	}
	return 0;
}