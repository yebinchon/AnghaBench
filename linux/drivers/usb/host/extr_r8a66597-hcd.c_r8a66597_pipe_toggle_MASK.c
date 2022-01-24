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
struct r8a66597_pipe {int /*<<< orphan*/  pipectr; } ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQCLR ; 
 int /*<<< orphan*/  SQSET ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct r8a66597 *r8a66597,
				 struct r8a66597_pipe *pipe, int toggle)
{
	if (toggle)
		FUNC0(r8a66597, SQSET, pipe->pipectr);
	else
		FUNC0(r8a66597, SQCLR, pipe->pipectr);
}