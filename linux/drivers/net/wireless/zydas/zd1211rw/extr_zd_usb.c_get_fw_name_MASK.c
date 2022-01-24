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
struct zd_usb {scalar_t__ is_zd1211b; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_ZD1211B_PREFIX ; 
 int /*<<< orphan*/  FW_ZD1211_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static char *FUNC1(struct zd_usb *usb, char *buffer, size_t size,
	               const char* postfix)
{
	FUNC0(buffer, size, "%s%s",
		usb->is_zd1211b ?
			FW_ZD1211B_PREFIX : FW_ZD1211_PREFIX,
		postfix);
	return buffer;
}