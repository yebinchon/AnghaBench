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
struct orc_host {scalar_t__ base; } ;

/* Variables and functions */
 unsigned char HDO ; 
 unsigned char ORC_CMD_SET_NVM ; 
 scalar_t__ ORC_HCTRL ; 
 scalar_t__ ORC_HDATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 
 scalar_t__ FUNC1 (struct orc_host*) ; 

__attribute__((used)) static u8 FUNC2(struct orc_host * host, unsigned char address, unsigned char value)
{
	FUNC0(ORC_CMD_SET_NVM, host->base + ORC_HDATA);	/* Write command */
	FUNC0(HDO, host->base + ORC_HCTRL);
	if (FUNC1(host) == 0)	/* Wait HDO off   */
		return 0;

	FUNC0(address, host->base + ORC_HDATA);	/* Write address */
	FUNC0(HDO, host->base + ORC_HCTRL);
	if (FUNC1(host) == 0)	/* Wait HDO off   */
		return 0;

	FUNC0(value, host->base + ORC_HDATA);	/* Write value  */
	FUNC0(HDO, host->base + ORC_HCTRL);
	if (FUNC1(host) == 0)	/* Wait HDO off   */
		return 0;

	return 1;
}