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
typedef  scalar_t__ u8 ;
typedef  size_t u16 ;
struct zone_entry {size_t* l2p_table; } ;
struct ms_info {struct zone_entry* segment; } ;
struct rtsx_chip {int card_wp; struct ms_info ms_card; } ;

/* Variables and functions */
 int MS_CARD ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,size_t) ; 

__attribute__((used)) static int FUNC2(struct rtsx_chip *chip, u16 phy_blk,
			    u16 log_off, u8 us1, u8 us2)
{
	struct ms_info *ms_card = &chip->ms_card;
	struct zone_entry *segment;
	int seg_no;
	u16 tmp_blk;

	seg_no = (int)phy_blk >> 9;
	segment = &ms_card->segment[seg_no];
	tmp_blk = segment->l2p_table[log_off];

	if (us1 != us2) {
		if (us1 == 0) {
			if (!(chip->card_wp & MS_CARD))
				FUNC0(chip, tmp_blk);

			FUNC1(chip, tmp_blk);
			segment->l2p_table[log_off] = phy_blk;
		} else {
			if (!(chip->card_wp & MS_CARD))
				FUNC0(chip, phy_blk);

			FUNC1(chip, phy_blk);
		}
	} else {
		if (phy_blk < tmp_blk) {
			if (!(chip->card_wp & MS_CARD))
				FUNC0(chip, phy_blk);

			FUNC1(chip, phy_blk);
		} else {
			if (!(chip->card_wp & MS_CARD))
				FUNC0(chip, tmp_blk);

			FUNC1(chip, tmp_blk);
			segment->l2p_table[log_off] = phy_blk;
		}
	}

	return STATUS_SUCCESS;
}