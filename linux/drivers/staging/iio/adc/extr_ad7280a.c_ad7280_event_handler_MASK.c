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
typedef  int /*<<< orphan*/  u64 ;
struct iio_dev {int dummy; } ;
struct ad7280_state {int scan_cnt; unsigned int cell_threshhigh; unsigned int cell_threshlow; unsigned int aux_threshhigh; unsigned int aux_threshlow; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int AD7280A_CELL_VOLTAGE_6 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_EV_DIR_FALLING ; 
 int /*<<< orphan*/  IIO_EV_DIR_RISING ; 
 int /*<<< orphan*/  IIO_EV_TYPE_THRESH ; 
 int /*<<< orphan*/  IIO_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IIO_VOLTAGE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC2 (struct ad7280_state*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct ad7280_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct iio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *private)
{
	struct iio_dev *indio_dev = private;
	struct ad7280_state *st = FUNC4(indio_dev);
	unsigned int *channels;
	int i, ret;

	channels = FUNC6(st->scan_cnt, sizeof(*channels), GFP_KERNEL);
	if (!channels)
		return IRQ_HANDLED;

	ret = FUNC2(st, st->scan_cnt, channels);
	if (ret < 0)
		goto out;

	for (i = 0; i < st->scan_cnt; i++) {
		if (((channels[i] >> 23) & 0xF) <= AD7280A_CELL_VOLTAGE_6) {
			if (((channels[i] >> 11) & 0xFFF) >=
			    st->cell_threshhigh) {
				u64 tmp = FUNC0(IIO_VOLTAGE, 1, 0,
							 IIO_EV_DIR_RISING,
							 IIO_EV_TYPE_THRESH,
							 0, 0, 0);
				FUNC5(indio_dev, tmp,
					       FUNC3(indio_dev));
			} else if (((channels[i] >> 11) & 0xFFF) <=
				   st->cell_threshlow) {
				u64 tmp = FUNC0(IIO_VOLTAGE, 1, 0,
							 IIO_EV_DIR_FALLING,
							 IIO_EV_TYPE_THRESH,
							 0, 0, 0);
				FUNC5(indio_dev, tmp,
					       FUNC3(indio_dev));
			}
		} else {
			if (((channels[i] >> 11) & 0xFFF) >=
			    st->aux_threshhigh) {
				u64 tmp = FUNC1(IIO_TEMP, 0,
							IIO_EV_TYPE_THRESH,
							IIO_EV_DIR_RISING);
				FUNC5(indio_dev, tmp,
					       FUNC3(indio_dev));
			} else if (((channels[i] >> 11) & 0xFFF) <=
				st->aux_threshlow) {
				u64 tmp = FUNC1(IIO_TEMP, 0,
							IIO_EV_TYPE_THRESH,
							IIO_EV_DIR_FALLING);
				FUNC5(indio_dev, tmp,
					       FUNC3(indio_dev));
			}
		}
	}

out:
	FUNC7(channels);

	return IRQ_HANDLED;
}