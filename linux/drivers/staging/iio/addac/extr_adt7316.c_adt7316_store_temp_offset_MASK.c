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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int (* write ) (int /*<<< orphan*/ ,int,scalar_t__) ;int /*<<< orphan*/  client; } ;
struct adt7316_chip_info {TYPE_1__ bus; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 int FUNC0 (char const*,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC2(struct adt7316_chip_info *chip,
					 int offset_addr,
					 const char *buf,
					 size_t len)
{
	int data;
	u8 val;
	int ret;

	ret = FUNC0(buf, 10, &data);
	if (ret || data > 127 || data < -128)
		return -EINVAL;

	if (data < 0)
		data += 256;

	val = (u8)data;

	ret = chip->bus.write(chip->bus.client, offset_addr, val);
	if (ret)
		return -EIO;

	return len;
}