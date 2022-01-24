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
typedef  enum avmcardtype { ____Placeholder_avmcardtype } avmcardtype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(unsigned int base,
				   enum avmcardtype cardtype,
				   int onoff)
{
	FUNC1(base, FUNC0(cardtype), onoff ? 0x21 : 0x20);
}