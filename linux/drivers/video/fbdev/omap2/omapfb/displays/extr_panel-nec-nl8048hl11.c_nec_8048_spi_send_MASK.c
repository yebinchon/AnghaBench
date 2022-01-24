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
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int FUNC1 (struct spi_device*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi, unsigned char reg_addr,
			unsigned char reg_data)
{
	int ret = 0;
	unsigned int cmd = 0, data = 0;

	cmd = 0x0000 | reg_addr; /* register address write */
	data = 0x0100 | reg_data; /* register data write */
	data = (cmd << 16) | data;

	ret = FUNC1(spi, (unsigned char *)&data, 4);
	if (ret)
		FUNC0("error in spi_write %x\n", data);

	return ret;
}