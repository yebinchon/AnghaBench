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
struct rtsx_chip {int card_ready; int* lun2card; int card_ejected; scalar_t__* capacity; } ;

/* Variables and functions */
 int MS_CARD ; 
 int SD_CARD ; 
 int XD_CARD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 

void FUNC4(struct rtsx_chip *chip, unsigned int lun)
{
	FUNC0(chip);

	if ((chip->card_ready & chip->lun2card[lun]) == SD_CARD) {
		FUNC2(chip);
		chip->card_ejected |= SD_CARD;
		chip->card_ready &= ~SD_CARD;
		chip->capacity[lun] = 0;
	} else if ((chip->card_ready & chip->lun2card[lun]) == XD_CARD) {
		FUNC3(chip);
		chip->card_ejected |= XD_CARD;
		chip->card_ready &= ~XD_CARD;
		chip->capacity[lun] = 0;
	} else if ((chip->card_ready & chip->lun2card[lun]) == MS_CARD) {
		FUNC1(chip);
		chip->card_ejected |= MS_CARD;
		chip->card_ready &= ~MS_CARD;
		chip->capacity[lun] = 0;
	}
}