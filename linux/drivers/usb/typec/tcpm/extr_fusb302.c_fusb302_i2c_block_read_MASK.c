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
typedef  int u8 ;
struct fusb302_chip {int /*<<< orphan*/  i2c_client; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct fusb302_chip*,char*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct fusb302_chip *chip, u8 address,
				  u8 length, u8 *data)
{
	int ret = 0;

	if (length <= 0)
		return ret;

	ret = FUNC1(chip->i2c_client, address,
					    length, data);
	if (ret < 0) {
		FUNC0(chip, "cannot block read 0x%02x, len=%d, ret=%d",
			    address, length, ret);
		goto done;
	}
	if (ret != length) {
		FUNC0(chip, "only read %d/%d bytes from 0x%02x",
			    ret, length, address);
		ret = -EIO;
	}

done:
	return ret;
}