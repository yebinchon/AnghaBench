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
struct wcove_typec {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBC_RXINFO ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  USBC_RXSTATUS ; 
 int /*<<< orphan*/  USBC_RXSTATUS_RXCLEAR ; 
 scalar_t__ USBC_RX_DATA ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wcove_typec *wcove, void *msg)
{
	unsigned int info;
	int ret;
	int i;

	ret = FUNC1(wcove->regmap, USBC_RXINFO, &info);
	if (ret)
		return ret;

	/* FIXME: Check that USBC_RXINFO_RXBYTES(info) matches the header */

	for (i = 0; i < FUNC0(info); i++) {
		ret = FUNC1(wcove->regmap, USBC_RX_DATA + i, msg + i);
		if (ret)
			return ret;
	}

	return FUNC2(wcove->regmap, USBC_RXSTATUS,
			    USBC_RXSTATUS_RXCLEAR);
}