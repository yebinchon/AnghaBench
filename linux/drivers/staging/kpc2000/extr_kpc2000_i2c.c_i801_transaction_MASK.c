#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i2c_device {int dummy; } ;

/* Variables and functions */
 int I801_START ; 
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_device*) ; 
 int SMBHSTSTS_HOST_BUSY ; 
 int SMBHSTSTS_INTR ; 
 int FUNC2 (struct i2c_device*,int,int) ; 
 int FUNC3 (struct i2c_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_device *priv, int xact)
{
	int status;
	int result;
	int timeout = 0;

	result = FUNC3(priv);
	if (result < 0)
		return result;
	/* the current contents of SMBHSTCNT can be overwritten, since PEC,
	 * INTREN, SMBSCMD are passed in xact
	 */
	FUNC5(xact | I801_START, FUNC0(priv));

	/* We will always wait for a fraction of a second! */
	do {
		FUNC6(250, 500);
		status = FUNC4(FUNC1(priv));
	} while ((status & SMBHSTSTS_HOST_BUSY) && (timeout++ < MAX_RETRIES));

	result = FUNC2(priv, status, timeout > MAX_RETRIES);
	if (result < 0)
		return result;

	FUNC5(SMBHSTSTS_INTR, FUNC1(priv));
	return 0;
}