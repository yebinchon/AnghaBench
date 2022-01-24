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
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*,unsigned short*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned short*) ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc, int c, int ypos, int xpos)
{
	unsigned short chr;

	FUNC1(c, &chr);
	FUNC0(vc, &chr, 1, ypos, xpos);
}