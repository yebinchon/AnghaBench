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
typedef  int u32 ;
struct renesas_usb3 {int num_usb3_eps; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int) ; 

__attribute__((used)) static void FUNC3(struct renesas_usb3 *usb3, u32 int_sta_2)
{
	int i;

	for (i = 0; i < usb3->num_usb3_eps; i++) {
		if (int_sta_2 & FUNC0(i)) {
			if (!i)
				FUNC1(usb3);
			else
				FUNC2(usb3, i);
		}
	}
}