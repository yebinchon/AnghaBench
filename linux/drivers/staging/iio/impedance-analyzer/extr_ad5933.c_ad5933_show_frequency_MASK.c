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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long long u64 ;
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad5933_state {int mclk_hz; int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iio_dev*) ; 
 struct ad5933_state* FUNC7 (struct iio_dev*) ; 
 int FUNC8 (char*,char*,int) ; 
 struct iio_dev_attr* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
				     struct device_attribute *attr,
				     char *buf)
{
	struct iio_dev *indio_dev = FUNC3(dev);
	struct ad5933_state *st = FUNC7(indio_dev);
	struct iio_dev_attr *this_attr = FUNC9(attr);
	int ret;
	unsigned long long freqreg;
	union {
		__be32 d32;
		u8 d8[4];
	} dat;

	ret = FUNC5(indio_dev);
	if (ret)
		return ret;
	ret = FUNC1(st->client, this_attr->address, 3, &dat.d8[1]);
	FUNC6(indio_dev);
	if (ret < 0)
		return ret;

	freqreg = FUNC2(dat.d32) & 0xFFFFFF;

	freqreg = (u64)freqreg * (u64)(st->mclk_hz / 4);
	FUNC4(freqreg, FUNC0(27));

	return FUNC8(buf, "%d\n", (int)freqreg);
}