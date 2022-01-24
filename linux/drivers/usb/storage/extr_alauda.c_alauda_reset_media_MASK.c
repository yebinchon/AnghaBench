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
struct us_data {unsigned char* iobuf; int /*<<< orphan*/  send_bulk_pipe; } ;

/* Variables and functions */
 unsigned char ALAUDA_BULK_CMD ; 
 unsigned char ALAUDA_BULK_RESET_MEDIA ; 
 unsigned char FUNC0 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct us_data *us)
{
	unsigned char *command = us->iobuf;

	FUNC1(command, 0, 9);
	command[0] = ALAUDA_BULK_CMD;
	command[1] = ALAUDA_BULK_RESET_MEDIA;
	command[8] = FUNC0(us);

	return FUNC2(us, us->send_bulk_pipe,
		command, 9, NULL);
}