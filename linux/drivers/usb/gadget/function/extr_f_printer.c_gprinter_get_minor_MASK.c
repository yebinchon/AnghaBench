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

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PRINTER_MINORS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  printer_ida ; 

__attribute__((used)) static inline int FUNC2(void)
{
	int ret;

	ret = FUNC0(&printer_ida, 0, 0, GFP_KERNEL);
	if (ret >= PRINTER_MINORS) {
		FUNC1(&printer_ida, ret);
		ret = -ENODEV;
	}

	return ret;
}