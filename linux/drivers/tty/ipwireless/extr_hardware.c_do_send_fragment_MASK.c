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
struct ipw_hardware {unsigned int ll_mtu; scalar_t__ hw_version; int /*<<< orphan*/  lock; TYPE_1__* memory_info_regs; scalar_t__ base_port; scalar_t__ tx_ready; } ;
typedef  unsigned short __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  memreg_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned short DCR_TXDONE ; 
 scalar_t__ HW_VERSION_1 ; 
 scalar_t__ HW_VERSION_2 ; 
 scalar_t__ IODCR ; 
 scalar_t__ IODWR ; 
 int /*<<< orphan*/  MEMRX_RX ; 
 unsigned short FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ ipwireless_debug ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ipw_hardware *hw, unsigned char *data,
			    unsigned length)
{
	unsigned i;
	unsigned long flags;

	FUNC7();
	FUNC0(length > hw->ll_mtu);

	if (ipwireless_debug)
		FUNC2("send", data, length);

	FUNC5(&hw->lock, flags);

	hw->tx_ready = 0;
	FUNC8(data);

	if (hw->hw_version == HW_VERSION_1) {
		FUNC4((unsigned short) length, hw->base_port + IODWR);

		for (i = 0; i < length; i += 2) {
			unsigned short d = data[i];
			__le16 raw_data;

			if (i + 1 < length)
				d |= data[i + 1] << 8;
			raw_data = FUNC1(d);
			FUNC4(raw_data, hw->base_port + IODWR);
		}

		FUNC4(DCR_TXDONE, hw->base_port + IODCR);
	} else if (hw->hw_version == HW_VERSION_2) {
		FUNC4((unsigned short) length, hw->base_port);

		for (i = 0; i < length; i += 2) {
			unsigned short d = data[i];
			__le16 raw_data;

			if (i + 1 < length)
				d |= data[i + 1] << 8;
			raw_data = FUNC1(d);
			FUNC4(raw_data, hw->base_port);
		}
		while ((i & 3) != 2) {
			FUNC4((unsigned short) 0xDEAD, hw->base_port);
			i += 2;
		}
		FUNC9(MEMRX_RX, &hw->memory_info_regs->memreg_rx);
	}

	FUNC6(&hw->lock, flags);

	FUNC3(length);
}