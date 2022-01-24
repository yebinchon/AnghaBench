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
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct rtsx_chip *chip)
{
	FUNC0(chip, 0x1B, 0x135E);
	FUNC1(10);
	FUNC0(chip, 0x00, 0x0280);
	FUNC0(chip, 0x01, 0x7112);
	FUNC0(chip, 0x01, 0x7110);
	FUNC0(chip, 0x01, 0x7112);
	FUNC0(chip, 0x01, 0x7113);
	FUNC0(chip, 0x00, 0x0288);
}