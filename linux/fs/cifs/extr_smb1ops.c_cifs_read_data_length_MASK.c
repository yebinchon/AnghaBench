#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  DataLength; int /*<<< orphan*/  DataLengthHigh; } ;
typedef  TYPE_1__ READ_RSP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC2(char *buf, bool in_remaining)
{
	READ_RSP *rsp = (READ_RSP *)buf;
	/* It's a bug reading remaining data for SMB1 packets */
	FUNC0(in_remaining);
	return (FUNC1(rsp->DataLengthHigh) << 16) +
	       FUNC1(rsp->DataLength);
}