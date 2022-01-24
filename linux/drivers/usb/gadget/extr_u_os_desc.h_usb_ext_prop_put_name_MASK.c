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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int USB_EXT_PROP_B_PROPERTY_NAME ; 
 int /*<<< orphan*/  UTF16_LITTLE_ENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC5(u8 *buf, const char *name, int pnl)
{
	int result;

	FUNC0(pnl, FUNC2(buf));
	result = FUNC4(name, FUNC1(name), UTF16_LITTLE_ENDIAN,
		(wchar_t *) FUNC3(buf), pnl - 2);
	if (result < 0)
		return result;

	FUNC0(0, &buf[USB_EXT_PROP_B_PROPERTY_NAME + pnl - 2]);

	return pnl;
}