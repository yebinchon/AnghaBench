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
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int BEMPE ; 
 int BRDYE ; 
 unsigned long INTENB0 ; 
 int NRDYE ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,int,unsigned long) ; 
 int FUNC1 (struct r8a66597*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct r8a66597 *r8a66597, u16 pipenum,
			     unsigned long reg)
{
	u16 tmp;

	tmp = FUNC1(r8a66597, INTENB0);
	FUNC0(r8a66597, BEMPE | NRDYE | BRDYE, INTENB0);
	FUNC0(r8a66597, 1 << pipenum, reg);
	FUNC2(r8a66597, tmp, INTENB0);
}