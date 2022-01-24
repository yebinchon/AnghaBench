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
struct r8a66597_pipe {int /*<<< orphan*/  pipectr; } ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBUSY ; 
 int PID ; 
 int /*<<< orphan*/  PID_NAK ; 
 int /*<<< orphan*/  PID_STALL ; 
 int PID_STALL11 ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct r8a66597 *r8a66597, struct r8a66597_pipe *pipe)
{
	u16 tmp;

	tmp = FUNC1(r8a66597, pipe->pipectr) & PID;
	if ((tmp & PID_STALL11) != PID_STALL11)	/* force stall? */
		FUNC0(r8a66597, PID_STALL, PID, pipe->pipectr);
	FUNC0(r8a66597, PID_NAK, PID, pipe->pipectr);
	FUNC2(r8a66597, pipe->pipectr, PBUSY, 0);
}