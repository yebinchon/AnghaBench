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
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7192_state {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ad7192_state*,unsigned int*) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 struct ad7192_state* FUNC3 (struct iio_dev*) ; 
 scalar_t__ FUNC4 (char*,scalar_t__,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct iio_dev *indio_dev = FUNC2(dev);
	struct ad7192_state *st = FUNC3(indio_dev);
	unsigned int freq_avail[4], i;
	size_t len = 0;

	FUNC1(st, freq_avail);

	for (i = 0; i < FUNC0(freq_avail); i++)
		len += FUNC4(buf + len, PAGE_SIZE - len,
				 "%d.%d ", freq_avail[i] / 1000,
				 freq_avail[i] % 1000);

	buf[len - 1] = '\n';

	return len;
}