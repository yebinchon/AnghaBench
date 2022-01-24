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
struct zd_ioreq32 {int member_1; int /*<<< orphan*/  member_0; } ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_ioreq32 const*) ; 
#define  CR_RX_THRESHOLD 130 
#define  CR_ZD1211_RETRY_MAX 129 
#define  ZD1211_RETRY_COUNT 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_chip*) ; 
 int FUNC5 (struct zd_chip*,struct zd_ioreq32 const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct zd_chip *chip)
{
	static const struct zd_ioreq32 ioreqs[] = {
		{ CR_ZD1211_RETRY_MAX,		ZD1211_RETRY_COUNT },
		{ CR_RX_THRESHOLD,		0x000c0640 },
	};

	FUNC2(FUNC4(chip), "\n");
	FUNC1(FUNC3(&chip->mutex));
	return FUNC5(chip, ioreqs, FUNC0(ioreqs));
}