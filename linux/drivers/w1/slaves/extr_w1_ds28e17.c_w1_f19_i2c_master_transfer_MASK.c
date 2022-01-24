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
struct w1_slave {TYPE_1__* master; } ;
struct i2c_msg {scalar_t__ addr; int flags; scalar_t__ len; scalar_t__* buf; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int EIO ; 
 int I2C_M_RD ; 
 int I2C_M_RECV_LEN ; 
 scalar_t__ W1_F19_WRITE_DATA_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct w1_slave*,scalar_t__,scalar_t__*,scalar_t__) ; 
 int FUNC3 (struct w1_slave*,scalar_t__,scalar_t__*,scalar_t__,int) ; 
 int FUNC4 (struct w1_slave*,scalar_t__,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct w1_slave*) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adapter,
	struct i2c_msg *msgs, int num)
{
	struct w1_slave *sl = (struct w1_slave *) adapter->algo_data;
	int i = 0;
	int result = 0;

	/* Start onewire transaction. */
	FUNC0(&sl->master->bus_mutex);

	/* Select DS28E17. */
	if (FUNC6(sl)) {
		i = -EIO;
		goto error;
	}

	/* Loop while there are still messages to transfer. */
	while (i < num) {
		/*
		 * Check for special case: Small write followed
		 * by read to same I2C device.
		 */
		if (i < (num-1)
			&& msgs[i].addr == msgs[i+1].addr
			&& !(msgs[i].flags & I2C_M_RD)
			&& (msgs[i+1].flags & I2C_M_RD)
			&& (msgs[i].len <= W1_F19_WRITE_DATA_LIMIT)) {
			/*
			 * The DS28E17 has a combined transfer
			 * for small write+read.
			 */
			result = FUNC4(sl, msgs[i].addr,
				msgs[i].buf, msgs[i].len,
				msgs[i+1].buf, msgs[i+1].len);
			if (result < 0) {
				i = result;
				goto error;
			}

			/*
			 * Check if we should interpret the read data
			 * as a length byte. The DS28E17 unfortunately
			 * has no read without stop, so we can just do
			 * another simple read in that case.
			 */
			if (msgs[i+1].flags & I2C_M_RECV_LEN) {
				result = FUNC2(sl, msgs[i+1].addr,
					&(msgs[i+1].buf[1]), msgs[i+1].buf[0]);
				if (result < 0) {
					i = result;
					goto error;
				}
			}

			/* Eat up read message, too. */
			i++;
		} else if (msgs[i].flags & I2C_M_RD) {
			/* Read transfer. */
			result = FUNC2(sl, msgs[i].addr,
				msgs[i].buf, msgs[i].len);
			if (result < 0) {
				i = result;
				goto error;
			}

			/*
			 * Check if we should interpret the read data
			 * as a length byte. The DS28E17 unfortunately
			 * has no read without stop, so we can just do
			 * another simple read in that case.
			 */
			if (msgs[i].flags & I2C_M_RECV_LEN) {
				result = FUNC2(sl,
					msgs[i].addr,
					&(msgs[i].buf[1]),
					msgs[i].buf[0]);
				if (result < 0) {
					i = result;
					goto error;
				}
			}
		} else {
			/*
			 * Write transfer.
			 * Stop condition only for last
			 * transfer.
			 */
			result = FUNC3(sl,
				msgs[i].addr,
				msgs[i].buf,
				msgs[i].len,
				i == (num-1));
			if (result < 0) {
				i = result;
				goto error;
			}
		}

		/* Next message. */
		i++;

		/* Are there still messages to send/receive? */
		if (i < num) {
			/* Yes. Resume to same DS28E17. */
			if (FUNC5(sl->master)) {
				i = -EIO;
				goto error;
			}
		}
	}

error:
	/* End onewire transaction. */
	FUNC1(&sl->master->bus_mutex);

	/* Return number of messages processed or error. */
	return i;
}