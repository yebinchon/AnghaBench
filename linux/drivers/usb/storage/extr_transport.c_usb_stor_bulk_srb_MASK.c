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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int FUNC4 (struct us_data*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 

int FUNC5(struct us_data* us, unsigned int pipe,
		      struct scsi_cmnd* srb)
{
	unsigned int partial;
	int result = FUNC4(us, pipe, FUNC3(srb),
				      FUNC2(srb), FUNC0(srb),
				      &partial);

	FUNC1(srb, FUNC0(srb) - partial);
	return result;
}