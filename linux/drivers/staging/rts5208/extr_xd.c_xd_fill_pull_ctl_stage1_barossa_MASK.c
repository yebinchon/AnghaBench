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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_PULL_CTL1 ; 
 int /*<<< orphan*/  CARD_PULL_CTL2 ; 
 int /*<<< orphan*/  CARD_PULL_CTL3 ; 
 int /*<<< orphan*/  CARD_PULL_CTL4 ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QFN ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtsx_chip *chip)
{
	if (FUNC0(chip, QFN)) {
		FUNC1(chip, WRITE_REG_CMD, CARD_PULL_CTL1, 0xFF, 0x55);
		FUNC1(chip, WRITE_REG_CMD, CARD_PULL_CTL2, 0xFF, 0x55);
		FUNC1(chip, WRITE_REG_CMD, CARD_PULL_CTL3, 0xFF, 0x4B);
		FUNC1(chip, WRITE_REG_CMD, CARD_PULL_CTL4, 0xFF, 0x55);
	}
}