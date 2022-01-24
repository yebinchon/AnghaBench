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
 int EAGAIN ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_device*) ; 
 int SMBHSTCNT_KILL ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_device*) ; 
 int SMBHSTSTS_BUS_ERR ; 
 int SMBHSTSTS_DEV_ERR ; 
 int SMBHSTSTS_FAILED ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int STATUS_FLAGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct i2c_device *priv, int status, int timeout)
{
	int result = 0;

	/* If the SMBus is still busy, we give up */
	if (timeout) {
		FUNC3(&priv->adapter.dev, "Transaction timeout\n");
		/* try to stop the current command */
		FUNC2(&priv->adapter.dev, "Terminating the current operation\n");
		FUNC6(FUNC5(FUNC0(priv)) | SMBHSTCNT_KILL, FUNC0(priv));
		FUNC7(1000, 2000);
		FUNC6(FUNC5(FUNC0(priv)) & (~SMBHSTCNT_KILL), FUNC0(priv));

		/* Check if it worked */
		status = FUNC5(FUNC1(priv));
		if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED))
			FUNC3(&priv->adapter.dev, "Failed terminating the transaction\n");
		FUNC6(STATUS_FLAGS, FUNC1(priv));
		return -ETIMEDOUT;
	}

	if (status & SMBHSTSTS_FAILED) {
		result = -EIO;
		FUNC3(&priv->adapter.dev, "Transaction failed\n");
	}
	if (status & SMBHSTSTS_DEV_ERR) {
		result = -ENXIO;
		FUNC2(&priv->adapter.dev, "No response\n");
	}
	if (status & SMBHSTSTS_BUS_ERR) {
		result = -EAGAIN;
		FUNC2(&priv->adapter.dev, "Lost arbitration\n");
	}

	if (result) {
		/* Clear error flags */
		FUNC6(status & STATUS_FLAGS, FUNC1(priv));
		status = FUNC5(FUNC1(priv)) & STATUS_FLAGS;
		if (status)
			FUNC4(&priv->adapter.dev, "Failed clearing status flags at end of transaction (%02x)\n", status);
	}

	return result;
}