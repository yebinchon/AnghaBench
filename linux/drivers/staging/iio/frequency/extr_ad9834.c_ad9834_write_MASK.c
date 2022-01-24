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
struct iio_dev_attr {int const address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad9834_state {int control; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg; int /*<<< orphan*/  spi; void* data; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  AD9834_FSEL 136 
 int AD9834_MODE ; 
#define  AD9834_OPBITEN 135 
#define  AD9834_PIN_SW 134 
#define  AD9834_PSEL 133 
 int AD9834_REG_CMD ; 
#define  AD9834_REG_FREQ0 132 
#define  AD9834_REG_FREQ1 131 
#define  AD9834_REG_PHASE0 130 
#define  AD9834_REG_PHASE1 129 
#define  AD9834_RESET 128 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (struct ad9834_state*,int const,unsigned long) ; 
 int FUNC1 (struct ad9834_state*,int const,unsigned long) ; 
 void* FUNC2 (int) ; 
 struct iio_dev* FUNC3 (struct device*) ; 
 struct ad9834_state* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iio_dev_attr* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			    struct device_attribute *attr,
			    const char *buf,
			    size_t len)
{
	struct iio_dev *indio_dev = FUNC3(dev);
	struct ad9834_state *st = FUNC4(indio_dev);
	struct iio_dev_attr *this_attr = FUNC9(attr);
	int ret;
	unsigned long val;

	ret = FUNC5(buf, 10, &val);
	if (ret)
		return ret;

	FUNC6(&st->lock);
	switch ((u32)this_attr->address) {
	case AD9834_REG_FREQ0:
	case AD9834_REG_FREQ1:
		ret = FUNC0(st, this_attr->address, val);
		break;
	case AD9834_REG_PHASE0:
	case AD9834_REG_PHASE1:
		ret = FUNC1(st, this_attr->address, val);
		break;
	case AD9834_OPBITEN:
		if (st->control & AD9834_MODE) {
			ret = -EINVAL;  /* AD9843 reserved mode */
			break;
		}

		if (val)
			st->control |= AD9834_OPBITEN;
		else
			st->control &= ~AD9834_OPBITEN;

		st->data = FUNC2(AD9834_REG_CMD | st->control);
		ret = FUNC8(st->spi, &st->msg);
		break;
	case AD9834_PIN_SW:
		if (val)
			st->control |= AD9834_PIN_SW;
		else
			st->control &= ~AD9834_PIN_SW;
		st->data = FUNC2(AD9834_REG_CMD | st->control);
		ret = FUNC8(st->spi, &st->msg);
		break;
	case AD9834_FSEL:
	case AD9834_PSEL:
		if (!val) {
			st->control &= ~(this_attr->address | AD9834_PIN_SW);
		} else if (val == 1) {
			st->control |= this_attr->address;
			st->control &= ~AD9834_PIN_SW;
		} else {
			ret = -EINVAL;
			break;
		}
		st->data = FUNC2(AD9834_REG_CMD | st->control);
		ret = FUNC8(st->spi, &st->msg);
		break;
	case AD9834_RESET:
		if (val)
			st->control &= ~AD9834_RESET;
		else
			st->control |= AD9834_RESET;

		st->data = FUNC2(AD9834_REG_CMD | st->control);
		ret = FUNC8(st->spi, &st->msg);
		break;
	default:
		ret = -ENODEV;
	}
	FUNC7(&st->lock);

	return ret ? ret : len;
}