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
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_REENABLE ; 
 int /*<<< orphan*/  ACTION_RESET ; 
 int ISD200_ERROR ; 
 int ISD200_GOOD ; 
 int ISD200_TRANSPORT_GOOD ; 
 int FUNC0 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,char*,...) ; 

__attribute__((used)) static int FUNC3( struct us_data *us ) 
{
	int retStatus = ISD200_GOOD;
	int transferStatus;

	FUNC2(us, "Entering isd200_SRST\n");

	transferStatus = FUNC0( us, ACTION_RESET, NULL, 0 );

	/* check to see if this request failed */
	if (transferStatus != ISD200_TRANSPORT_GOOD) {
		FUNC2(us, "   Error issuing SRST\n");
		retStatus = ISD200_ERROR;
	} else {
		/* delay 10ms to give the drive a chance to see it */
		FUNC1(10);

		transferStatus = FUNC0( us, ACTION_REENABLE, NULL, 0 );
		if (transferStatus != ISD200_TRANSPORT_GOOD) {
			FUNC2(us, "   Error taking drive out of reset\n");
			retStatus = ISD200_ERROR;
		} else {
			/* delay 50ms to give the drive a chance to recover after SRST */
			FUNC1(50);
		}
	}

	FUNC2(us, "Leaving isd200_srst %08X\n", retStatus);
	return retStatus;
}