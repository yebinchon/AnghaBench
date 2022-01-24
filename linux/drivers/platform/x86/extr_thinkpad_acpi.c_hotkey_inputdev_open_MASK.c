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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
#define  TPACPI_LIFE_EXITING 130 
#define  TPACPI_LIFE_INIT 129 
#define  TPACPI_LIFE_RUNNING 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int tpacpi_lifecycle ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev)
{
	switch (tpacpi_lifecycle) {
	case TPACPI_LIFE_INIT:
	case TPACPI_LIFE_RUNNING:
		FUNC1(false);
		return 0;
	case TPACPI_LIFE_EXITING:
		return -EBUSY;
	}

	/* Should only happen if tpacpi_lifecycle is corrupt */
	FUNC0();
	return -EBUSY;
}