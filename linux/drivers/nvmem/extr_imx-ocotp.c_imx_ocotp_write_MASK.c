#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct ocotp_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; scalar_t__ base; TYPE_2__* params; TYPE_1__* config; } ;
struct TYPE_4__ {unsigned int bank_address_words; int /*<<< orphan*/  (* set_timing ) (struct ocotp_priv*) ;} ;
struct TYPE_3__ {size_t word_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ IMX_OCOTP_ADDR_CTRL ; 
 scalar_t__ IMX_OCOTP_ADDR_CTRL_SET ; 
 scalar_t__ IMX_OCOTP_ADDR_DATA0 ; 
 scalar_t__ IMX_OCOTP_ADDR_DATA1 ; 
 scalar_t__ IMX_OCOTP_ADDR_DATA2 ; 
 scalar_t__ IMX_OCOTP_ADDR_DATA3 ; 
 int IMX_OCOTP_BM_CTRL_ADDR ; 
 int IMX_OCOTP_BM_CTRL_REL_SHADOWS ; 
 int IMX_OCOTP_WR_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocotp_mutex ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ocotp_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(void *context, unsigned int offset, void *val,
			   size_t bytes)
{
	struct ocotp_priv *priv = context;
	u32 *buf = val;
	int ret;

	u32 ctrl;
	u8 waddr;
	u8 word = 0;

	/* allow only writing one complete OTP word at a time */
	if ((bytes != priv->config->word_size) ||
	    (offset % priv->config->word_size))
		return -EINVAL;

	FUNC5(&ocotp_mutex);

	ret = FUNC1(priv->clk);
	if (ret < 0) {
		FUNC6(&ocotp_mutex);
		FUNC2(priv->dev, "failed to prepare/enable ocotp clk\n");
		return ret;
	}

	/* Setup the write timing values */
	priv->params->set_timing(priv);

	/* 47.3.1.3.2
	 * Check that HW_OCOTP_CTRL[BUSY] and HW_OCOTP_CTRL[ERROR] are clear.
	 * Overlapped accesses are not supported by the controller. Any pending
	 * write or reload must be completed before a write access can be
	 * requested.
	 */
	ret = FUNC4(priv->base, 0);
	if (ret < 0) {
		FUNC2(priv->dev, "timeout during timing setup\n");
		goto write_end;
	}

	/* 47.3.1.3.3
	 * Write the requested address to HW_OCOTP_CTRL[ADDR] and program the
	 * unlock code into HW_OCOTP_CTRL[WR_UNLOCK]. This must be programmed
	 * for each write access. The lock code is documented in the register
	 * description. Both the unlock code and address can be written in the
	 * same operation.
	 */
	if (priv->params->bank_address_words != 0) {
		/*
		 * In banked/i.MX7 mode the OTP register bank goes into waddr
		 * see i.MX 7Solo Applications Processor Reference Manual, Rev.
		 * 0.1 section 6.4.3.1
		 */
		offset = offset / priv->config->word_size;
		waddr = offset / priv->params->bank_address_words;
		word  = offset & (priv->params->bank_address_words - 1);
	} else {
		/*
		 * Non-banked i.MX6 mode.
		 * OTP write/read address specifies one of 128 word address
		 * locations
		 */
		waddr = offset / 4;
	}

	ctrl = FUNC7(priv->base + IMX_OCOTP_ADDR_CTRL);
	ctrl &= ~IMX_OCOTP_BM_CTRL_ADDR;
	ctrl |= waddr & IMX_OCOTP_BM_CTRL_ADDR;
	ctrl |= IMX_OCOTP_WR_UNLOCK;

	FUNC10(ctrl, priv->base + IMX_OCOTP_ADDR_CTRL);

	/* 47.3.1.3.4
	 * Write the data to the HW_OCOTP_DATA register. This will automatically
	 * set HW_OCOTP_CTRL[BUSY] and clear HW_OCOTP_CTRL[WR_UNLOCK]. To
	 * protect programming same OTP bit twice, before program OCOTP will
	 * automatically read fuse value in OTP and use read value to mask
	 * program data. The controller will use masked program data to program
	 * a 32-bit word in the OTP per the address in HW_OCOTP_CTRL[ADDR]. Bit
	 * fields with 1's will result in that OTP bit being programmed. Bit
	 * fields with 0's will be ignored. At the same time that the write is
	 * accepted, the controller makes an internal copy of
	 * HW_OCOTP_CTRL[ADDR] which cannot be updated until the next write
	 * sequence is initiated. This copy guarantees that erroneous writes to
	 * HW_OCOTP_CTRL[ADDR] will not affect an active write operation. It
	 * should also be noted that during the programming HW_OCOTP_DATA will
	 * shift right (with zero fill). This shifting is required to program
	 * the OTP serially. During the write operation, HW_OCOTP_DATA cannot be
	 * modified.
	 * Note: on i.MX7 there are four data fields to write for banked write
	 *       with the fuse blowing operation only taking place after data0
	 *	 has been written. This is why data0 must always be the last
	 *	 register written.
	 */
	if (priv->params->bank_address_words != 0) {
		/* Banked/i.MX7 mode */
		switch (word) {
		case 0:
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA1);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA2);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA3);
			FUNC10(*buf, priv->base + IMX_OCOTP_ADDR_DATA0);
			break;
		case 1:
			FUNC10(*buf, priv->base + IMX_OCOTP_ADDR_DATA1);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA2);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA3);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA0);
			break;
		case 2:
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA1);
			FUNC10(*buf, priv->base + IMX_OCOTP_ADDR_DATA2);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA3);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA0);
			break;
		case 3:
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA1);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA2);
			FUNC10(*buf, priv->base + IMX_OCOTP_ADDR_DATA3);
			FUNC10(0, priv->base + IMX_OCOTP_ADDR_DATA0);
			break;
		}
	} else {
		/* Non-banked i.MX6 mode */
		FUNC10(*buf, priv->base + IMX_OCOTP_ADDR_DATA0);
	}

	/* 47.4.1.4.5
	 * Once complete, the controller will clear BUSY. A write request to a
	 * protected or locked region will result in no OTP access and no
	 * setting of HW_OCOTP_CTRL[BUSY]. In addition HW_OCOTP_CTRL[ERROR] will
	 * be set. It must be cleared by software before any new write access
	 * can be issued.
	 */
	ret = FUNC4(priv->base, 0);
	if (ret < 0) {
		if (ret == -EPERM) {
			FUNC2(priv->dev, "failed write to locked region");
			FUNC3(priv->base);
		} else {
			FUNC2(priv->dev, "timeout during data write\n");
		}
		goto write_end;
	}

	/* 47.3.1.4
	 * Write Postamble: Due to internal electrical characteristics of the
	 * OTP during writes, all OTP operations following a write must be
	 * separated by 2 us after the clearing of HW_OCOTP_CTRL_BUSY following
	 * the write.
	 */
	FUNC9(2);

	/* reload all shadow registers */
	FUNC10(IMX_OCOTP_BM_CTRL_REL_SHADOWS,
	       priv->base + IMX_OCOTP_ADDR_CTRL_SET);
	ret = FUNC4(priv->base,
				      IMX_OCOTP_BM_CTRL_REL_SHADOWS);
	if (ret < 0) {
		FUNC2(priv->dev, "timeout during shadow register reload\n");
		goto write_end;
	}

write_end:
	FUNC0(priv->clk);
	FUNC6(&ocotp_mutex);
	if (ret < 0)
		return ret;
	return bytes;
}