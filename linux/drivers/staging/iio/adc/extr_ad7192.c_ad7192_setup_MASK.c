#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct iio_dev {TYPE_2__* channels; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {TYPE_3__* spi; } ;
struct ad7192_state {int devid; int mode; int conf; int** scale_avail; scalar_t__ int_vref_mv; TYPE_4__ sd; int /*<<< orphan*/  f_order; int /*<<< orphan*/  clock_sel; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int realbits; } ;
struct TYPE_8__ {TYPE_1__ scan_type; } ;

/* Variables and functions */
 int AD7192_CONF_BUF ; 
 int AD7192_CONF_BURN ; 
 int AD7192_CONF_CHOP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AD7192_CONF_REFSEL ; 
 int AD7192_CONF_UNIPOLAR ; 
 int AD7192_ID_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AD7192_MODE_IDLE ; 
 int FUNC2 (int) ; 
 int AD7192_MODE_REJ60 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AD7192_NO_SYNC_FILTER ; 
 int /*<<< orphan*/  AD7192_REG_CONF ; 
 int /*<<< orphan*/  AD7192_REG_ID ; 
 int /*<<< orphan*/  AD7192_REG_MODE ; 
 int FUNC4 (int**) ; 
 int ID_AD7195 ; 
 int FUNC5 (struct ad7192_state*) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC10 (unsigned long long,int) ; 
 int FUNC11 (struct device_node*,char*) ; 
 struct iio_dev* FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct ad7192_state *st, struct device_node *np)
{
	struct iio_dev *indio_dev = FUNC12(st->sd.spi);
	bool rej60_en, refin2_en;
	bool buf_en, bipolar, burnout_curr_en;
	unsigned long long scale_uv;
	int i, ret, id;

	/* reset the serial interface */
	ret = FUNC7(&st->sd, 48);
	if (ret < 0)
		return ret;
	FUNC13(500, 1000); /* Wait for at least 500us */

	/* write/read test for device presence */
	ret = FUNC6(&st->sd, AD7192_REG_ID, 1, &id);
	if (ret)
		return ret;

	id &= AD7192_ID_MASK;

	if (id != st->devid)
		FUNC9(&st->sd.spi->dev, "device ID query failed (0x%X)\n",
			 id);

	st->mode = FUNC3(AD7192_MODE_IDLE) |
		FUNC1(st->clock_sel) |
		FUNC2(480);

	st->conf = FUNC0(0);

	rej60_en = FUNC11(np, "adi,rejection-60-Hz-enable");
	if (rej60_en)
		st->mode |= AD7192_MODE_REJ60;

	refin2_en = FUNC11(np, "adi,refin2-pins-enable");
	if (refin2_en && st->devid != ID_AD7195)
		st->conf |= AD7192_CONF_REFSEL;

	st->conf &= ~AD7192_CONF_CHOP;
	st->f_order = AD7192_NO_SYNC_FILTER;

	buf_en = FUNC11(np, "adi,buffer-enable");
	if (buf_en)
		st->conf |= AD7192_CONF_BUF;

	bipolar = FUNC11(np, "bipolar");
	if (!bipolar)
		st->conf |= AD7192_CONF_UNIPOLAR;

	burnout_curr_en = FUNC11(np,
						"adi,burnout-currents-enable");
	if (burnout_curr_en && buf_en) {
		st->conf |= AD7192_CONF_BURN;
	} else if (burnout_curr_en) {
		FUNC9(&st->sd.spi->dev,
			 "Can't enable burnout currents: see CHOP or buffer\n");
	}

	ret = FUNC8(&st->sd, AD7192_REG_MODE, 3, st->mode);
	if (ret)
		return ret;

	ret = FUNC8(&st->sd, AD7192_REG_CONF, 3, st->conf);
	if (ret)
		return ret;

	ret = FUNC5(st);
	if (ret)
		return ret;

	/* Populate available ADC input ranges */
	for (i = 0; i < FUNC4(st->scale_avail); i++) {
		scale_uv = ((u64)st->int_vref_mv * 100000000)
			>> (indio_dev->channels[0].scan_type.realbits -
			((st->conf & AD7192_CONF_UNIPOLAR) ? 0 : 1));
		scale_uv >>= i;

		st->scale_avail[i][1] = FUNC10(scale_uv, 100000000) * 10;
		st->scale_avail[i][0] = scale_uv;
	}

	return 0;
}