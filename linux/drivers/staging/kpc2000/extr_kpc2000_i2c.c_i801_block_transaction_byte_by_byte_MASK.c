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
union i2c_smbus_data {int* block; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct i2c_device {TYPE_1__ adapter; } ;

/* Variables and functions */
 int ENABLE_INT9 ; 
 int EPROTO ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 int I2C_SMBUS_I2C_BLOCK_DATA ; 
 char I2C_SMBUS_READ ; 
 char I2C_SMBUS_WRITE ; 
 int I801_BLOCK_DATA ; 
 int I801_BLOCK_LAST ; 
 int I801_I2C_BLOCK_DATA ; 
 int I801_I2C_BLOCK_LAST ; 
 int I801_START ; 
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_device*) ; 
 int SMBHSTSTS_BYTE_DONE ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int SMBHSTSTS_INTR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (struct i2c_device*,int,int) ; 
 int FUNC6 (struct i2c_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
{
	int i, len;
	int smbcmd;
	int status;
	int result;
	int timeout;

	result = FUNC6(priv);
	if (result < 0)
		return result;

	len = data->block[0];

	if (read_write == I2C_SMBUS_WRITE) {
		FUNC9(len, FUNC2(priv));
		FUNC9(data->block[1], FUNC0(priv));
	}

	for (i = 1; i <= len; i++) {
		if (i == len && read_write == I2C_SMBUS_READ) {
			if (command == I2C_SMBUS_I2C_BLOCK_DATA)
				smbcmd = I801_I2C_BLOCK_LAST;
			else
				smbcmd = I801_BLOCK_LAST;
		} else {
			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ)
				smbcmd = I801_I2C_BLOCK_DATA;
			else
				smbcmd = I801_BLOCK_DATA;
		}
		FUNC9(smbcmd | ENABLE_INT9, FUNC1(priv));

		if (i == 1)
			FUNC9(FUNC7(FUNC1(priv)) | I801_START, FUNC1(priv));
		/* We will always wait for a fraction of a second! */
		timeout = 0;
		do {
			FUNC10(250, 500);
			status = FUNC8(FUNC3(priv));
		} while ((!(status & SMBHSTSTS_BYTE_DONE)) && (timeout++ < MAX_RETRIES));

		result = FUNC5(priv, status, timeout > MAX_RETRIES);
		if (result < 0)
			return result;
		if (i == 1 && read_write == I2C_SMBUS_READ && command != I2C_SMBUS_I2C_BLOCK_DATA) {
			len = FUNC8(FUNC2(priv));
			if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
				FUNC4(&priv->adapter.dev, "Illegal SMBus block read size %d\n", len);
				/* Recover */
				while (FUNC8(FUNC3(priv)) & SMBHSTSTS_HOST_BUSY)
					FUNC9(SMBHSTSTS_BYTE_DONE, FUNC3(priv));
				FUNC9(SMBHSTSTS_INTR, FUNC3(priv));
				return -EPROTO;
			}
			data->block[0] = len;
		}

		/* Retrieve/store value in SMBBLKDAT */
		if (read_write == I2C_SMBUS_READ)
			data->block[i] = FUNC8(FUNC0(priv));
		if (read_write == I2C_SMBUS_WRITE && i + 1 <= len)
			FUNC9(data->block[i + 1], FUNC0(priv));
		/* signals SMBBLKDAT ready */
		FUNC9(SMBHSTSTS_BYTE_DONE | SMBHSTSTS_INTR, FUNC3(priv));
	}

	return 0;
}