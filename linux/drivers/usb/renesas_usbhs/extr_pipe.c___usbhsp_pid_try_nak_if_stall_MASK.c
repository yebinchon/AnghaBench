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
typedef  int u16 ;
struct usbhs_pipe {int dummy; } ;

/* Variables and functions */
 int PID_MASK ; 
 int PID_NAK ; 
#define  PID_STALL10 129 
#define  PID_STALL11 128 
 int FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*,int,int) ; 

__attribute__((used)) static void FUNC2(struct usbhs_pipe *pipe)
{
	u16 pid = FUNC0(pipe);

	pid &= PID_MASK;

	/*
	 * see
	 * "Pipe n Control Register" - "PID"
	 */
	switch (pid) {
	case PID_STALL11:
		FUNC1(pipe, PID_MASK, PID_STALL10);
		/* fall-through */
	case PID_STALL10:
		FUNC1(pipe, PID_MASK, PID_NAK);
	}
}