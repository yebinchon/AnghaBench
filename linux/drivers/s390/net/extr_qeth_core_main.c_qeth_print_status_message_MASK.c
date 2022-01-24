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
struct TYPE_4__ {int type; int* mcl_level; } ;
struct qeth_card {TYPE_2__ info; TYPE_1__* gdev; } ;
typedef  size_t __u8 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
#define  QETH_CARD_TYPE_IQD 131 
#define  QETH_CARD_TYPE_OSD 130 
#define  QETH_CARD_TYPE_OSM 129 
#define  QETH_CARD_TYPE_OSX 128 
 size_t QETH_MCL_LENGTH ; 
 scalar_t__* _ebcasc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (int*,char*,int,int) ; 

void FUNC6(struct qeth_card *card)
{
	switch (card->info.type) {
	case QETH_CARD_TYPE_OSD:
	case QETH_CARD_TYPE_OSM:
	case QETH_CARD_TYPE_OSX:
		/* VM will use a non-zero first character
		 * to indicate a HiperSockets like reporting
		 * of the level OSA sets the first character to zero
		 * */
		if (!card->info.mcl_level[0]) {
			FUNC5(card->info.mcl_level, "%02x%02x",
				card->info.mcl_level[2],
				card->info.mcl_level[3]);
			break;
		}
		/* fallthrough */
	case QETH_CARD_TYPE_IQD:
		if (FUNC0(card) || (card->info.mcl_level[0] & 0x80)) {
			card->info.mcl_level[0] = (char) _ebcasc[(__u8)
				card->info.mcl_level[0]];
			card->info.mcl_level[1] = (char) _ebcasc[(__u8)
				card->info.mcl_level[1]];
			card->info.mcl_level[2] = (char) _ebcasc[(__u8)
				card->info.mcl_level[2]];
			card->info.mcl_level[3] = (char) _ebcasc[(__u8)
				card->info.mcl_level[3]];
			card->info.mcl_level[QETH_MCL_LENGTH] = 0;
		}
		break;
	default:
		FUNC2(&card->info.mcl_level[0], 0, QETH_MCL_LENGTH + 1);
	}
	FUNC1(&card->gdev->dev,
		 "Device is a%s card%s%s%s\nwith link type %s.\n",
		 FUNC3(card),
		 (card->info.mcl_level[0]) ? " (level: " : "",
		 (card->info.mcl_level[0]) ? card->info.mcl_level : "",
		 (card->info.mcl_level[0]) ? ")" : "",
		 FUNC4(card));
}