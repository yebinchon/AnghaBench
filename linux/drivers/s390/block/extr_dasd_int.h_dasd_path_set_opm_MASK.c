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
struct dasd_device {int dummy; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*,int) ; 

__attribute__((used)) static inline void FUNC6(struct dasd_device *device, __u8 pm)
{
	int chp;

	for (chp = 0; chp < 8; chp++) {
		FUNC4(device, chp);
		if (pm & (0x80 >> chp)) {
			FUNC5(device, chp);
			/*
			 * if the path is used
			 * it should not be in one of the negative lists
			 */
			FUNC3(device, chp);
			FUNC1(device, chp);
			FUNC0(device, chp);
			FUNC2(device, chp);
		}
	}
}