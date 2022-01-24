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
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct iio_dev {int modes; int /*<<< orphan*/  buffer; int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  name; int /*<<< orphan*/ * info; TYPE_1__ dev; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ad5933_state {int vref_mv; unsigned long mclk_hz; int /*<<< orphan*/  reg; int /*<<< orphan*/  mclk; int /*<<< orphan*/  poll_time_jiffies; int /*<<< orphan*/  work; int /*<<< orphan*/  ctrl_lb; int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5933_CTRL_EXT_SYSCLK ; 
 int /*<<< orphan*/  AD5933_CTRL_INT_SYSCLK ; 
 unsigned long AD5933_INT_OSC_FREQ_Hz ; 
 int /*<<< orphan*/  AD5933_POLL_TIME_ms ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int INDIO_BUFFER_SOFTWARE ; 
 int INDIO_DIRECT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ad5933_state*) ; 
 int /*<<< orphan*/  ad5933_channels ; 
 int /*<<< orphan*/  ad5933_info ; 
 int FUNC5 (struct iio_dev*) ; 
 int FUNC6 (struct ad5933_state*) ; 
 int /*<<< orphan*/  ad5933_work ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 struct iio_dev* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct iio_dev*) ; 
 int FUNC15 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct ad5933_state* FUNC17 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct ad5933_state *st;
	struct iio_dev *indio_dev;
	unsigned long ext_clk_hz = 0;

	indio_dev = FUNC12(&client->dev, sizeof(*st));
	if (!indio_dev)
		return -ENOMEM;

	st = FUNC17(indio_dev);
	FUNC14(client, indio_dev);
	st->client = client;

	FUNC19(&st->lock);

	st->reg = FUNC13(&client->dev, "vdd");
	if (FUNC2(st->reg))
		return FUNC3(st->reg);

	ret = FUNC21(st->reg);
	if (ret) {
		FUNC10(&client->dev, "Failed to enable specified VDD supply\n");
		return ret;
	}
	ret = FUNC22(st->reg);

	if (ret < 0)
		goto error_disable_reg;

	st->vref_mv = ret / 1000;

	st->mclk = FUNC11(&client->dev, "mclk");
	if (FUNC2(st->mclk) && FUNC3(st->mclk) != -ENOENT) {
		ret = FUNC3(st->mclk);
		goto error_disable_reg;
	}

	if (!FUNC2(st->mclk)) {
		ret = FUNC9(st->mclk);
		if (ret < 0)
			goto error_disable_reg;
		ext_clk_hz = FUNC8(st->mclk);
	}

	if (ext_clk_hz) {
		st->mclk_hz = ext_clk_hz;
		st->ctrl_lb = AD5933_CTRL_EXT_SYSCLK;
	} else {
		st->mclk_hz = AD5933_INT_OSC_FREQ_Hz;
		st->ctrl_lb = AD5933_CTRL_INT_SYSCLK;
	}

	FUNC4(st);
	FUNC1(&st->work, ad5933_work);
	st->poll_time_jiffies = FUNC18(AD5933_POLL_TIME_ms);

	indio_dev->dev.parent = &client->dev;
	indio_dev->info = &ad5933_info;
	indio_dev->name = id->name;
	indio_dev->modes = (INDIO_BUFFER_SOFTWARE | INDIO_DIRECT_MODE);
	indio_dev->channels = ad5933_channels;
	indio_dev->num_channels = FUNC0(ad5933_channels);

	ret = FUNC5(indio_dev);
	if (ret)
		goto error_disable_mclk;

	ret = FUNC6(st);
	if (ret)
		goto error_unreg_ring;

	ret = FUNC15(indio_dev);
	if (ret)
		goto error_unreg_ring;

	return 0;

error_unreg_ring:
	FUNC16(indio_dev->buffer);
error_disable_mclk:
	FUNC7(st->mclk);
error_disable_reg:
	FUNC20(st->reg);

	return ret;
}