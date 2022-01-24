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
struct tape_request {int dummy; } ;
struct tape_device {int dummy; } ;
struct irb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int TAPE_IO_LONG_BUSY ; 

__attribute__((used)) static int
FUNC1(struct tape_device *device,
			struct tape_request *request, struct irb *irb)
{
	FUNC0(6, "Device is busy\n");
	return TAPE_IO_LONG_BUSY;
}