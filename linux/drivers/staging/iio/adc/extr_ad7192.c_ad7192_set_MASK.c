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
typedef  int /*<<< orphan*/  u32 ;
struct iio_dev_attr {int /*<<< orphan*/  address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7192_state {int /*<<< orphan*/  mode; int /*<<< orphan*/  sd; int /*<<< orphan*/  gpocon; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD7192_GPOCON_BPDSW ; 
 int /*<<< orphan*/  AD7192_MODE_ACX ; 
#define  AD7192_REG_GPOCON 129 
#define  AD7192_REG_MODE 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const,int,int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 int FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ad7192_state* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (char const*,int*) ; 
 struct iio_dev_attr* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			  struct device_attribute *attr,
			  const char *buf,
			  size_t len)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct ad7192_state *st = FUNC4(indio_dev);
	struct iio_dev_attr *this_attr = FUNC6(attr);
	int ret;
	bool val;

	ret = FUNC5(buf, &val);
	if (ret < 0)
		return ret;

	ret = FUNC2(indio_dev);
	if (ret)
		return ret;

	switch ((u32)this_attr->address) {
	case AD7192_REG_GPOCON:
		if (val)
			st->gpocon |= AD7192_GPOCON_BPDSW;
		else
			st->gpocon &= ~AD7192_GPOCON_BPDSW;

		FUNC0(&st->sd, AD7192_REG_GPOCON, 1, st->gpocon);
		break;
	case AD7192_REG_MODE:
		if (val)
			st->mode |= AD7192_MODE_ACX;
		else
			st->mode &= ~AD7192_MODE_ACX;

		FUNC0(&st->sd, AD7192_REG_MODE, 3, st->mode);
		break;
	default:
		ret = -EINVAL;
	}

	FUNC3(indio_dev);

	return ret ? ret : len;
}