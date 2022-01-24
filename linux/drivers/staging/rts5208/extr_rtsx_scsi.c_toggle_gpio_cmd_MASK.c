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
struct scsi_cmnd {int* cmnd; } ;
struct rtsx_chip {scalar_t__ ss_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 int TRANSPORT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 scalar_t__ FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	u8 gpio = srb->cmnd[2];

	FUNC0(chip);

	if (chip->ss_en && (FUNC2(chip) == RTSX_STAT_SS)) {
		FUNC1(chip);
		FUNC5(100);
	}
	FUNC3(chip, RTSX_STAT_RUN);

	if (gpio > 3)
		gpio = 1;
	FUNC4(chip, gpio);

	return TRANSPORT_GOOD;
}