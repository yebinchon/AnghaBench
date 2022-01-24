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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_CLK_CTRL ; 
 int FUNC0 (int const,int const) ; 
 int _REPEAT_THRESHOLD_ ; 
 int FUNC1 (int const) ; 
 scalar_t__ efuse_available_max_size ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int,scalar_t__) ; 
 scalar_t__ FUNC5 (struct _adapter*) ; 
 int FUNC6 (struct _adapter*,int /*<<< orphan*/ ) ; 

u8 FUNC7(struct _adapter *adapter, const u8 offset,
			       const u8 word_en, const u8 *data)
{
	u8 pg_header = 0;
	u16 efuse_addr = 0, curr_size = 0;
	u8 efuse_data, target_word_cnts = 0;
	int repeat_times;
	int sub_repeat;
	u8 bResult = true;

	/* check if E-Fuse Clock Enable and E-Fuse Clock is 40M */
	efuse_data = FUNC6(adapter, EFUSE_CLK_CTRL);
	if (efuse_data != 0x03)
		return false;
	pg_header = FUNC0(offset, word_en);
	target_word_cnts = FUNC1(word_en);
	repeat_times = 0;
	efuse_addr = 0;
	while (efuse_addr < efuse_available_max_size) {
		curr_size = FUNC5(adapter);
		if ((curr_size + 1 + target_word_cnts * 2) >
		     efuse_available_max_size)
			return false; /*target_word_cnts + pg header(1 byte)*/
		efuse_addr = curr_size; /* current size is also the last addr*/
		FUNC3(adapter, efuse_addr, pg_header); /*hdr*/
		sub_repeat = 0;
		/* check if what we read is what we write */
		while (!FUNC2(adapter, efuse_addr,
					    &efuse_data)) {
			if (++sub_repeat > _REPEAT_THRESHOLD_) {
				bResult = false; /* continue to blind write */
				break; /* continue to blind write */
			}
		}
		if ((sub_repeat > _REPEAT_THRESHOLD_) ||
		    (pg_header == efuse_data)) {
			/* write header ok OR can't check header(creep) */
			u8 i;

			/* go to next address */
			efuse_addr++;
			for (i = 0; i < target_word_cnts * 2; i++) {
				FUNC3(adapter,
						     efuse_addr + i,
						     *(data + i));
				if (!FUNC2(adapter,
							 efuse_addr + i,
							 &efuse_data))
					bResult = false;
				else if (*(data + i) != efuse_data) /* fail */
					bResult = false;
			}
			break;
		}
		/* write header fail */
		bResult = false;
		if (efuse_data == 0xFF)
			return bResult; /* nothing damaged. */
		/* call rescue procedure */
		if (!FUNC4(adapter, efuse_data, efuse_addr))
			return false; /* rescue fail */

		if (++repeat_times > _REPEAT_THRESHOLD_) /* fail */
			break;
		/* otherwise, take another risk... */
	}
	return bResult;
}