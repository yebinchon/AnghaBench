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
struct iio_chan_spec {int dummy; } ;
struct ad7280_state {struct iio_chan_spec* channels; } ;

/* Variables and functions */
 int AD7280A_AUX_ADC_1 ; 
 int AD7280A_AUX_ADC_6 ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int AD7280A_CELL_VOLTAGE_1 ; 
 int /*<<< orphan*/  FUNC2 (struct iio_chan_spec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_chan_spec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_chan_spec*,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ad7280_state *st, int dev, int *cnt)
{
	int addr, ch, i;
	struct iio_chan_spec *chan;

	for (ch = AD7280A_CELL_VOLTAGE_1; ch <= AD7280A_AUX_ADC_6; ch++) {
		chan = &st->channels[*cnt];

		if (ch < AD7280A_AUX_ADC_1) {
			i = FUNC1(dev, ch);
			FUNC4(chan, i);
		} else {
			i = FUNC0(dev, ch);
			FUNC3(chan, i);
		}

		addr = FUNC5(dev) << 8 | ch;
		FUNC2(chan, addr, *cnt);

		(*cnt)++;
	}
}