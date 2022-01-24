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
typedef  int u8 ;
typedef  int const u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*) ; 
 int FUNC1 (int,int,int) ; 

__attribute__((used)) static u16 FUNC2(int code)
{
	static const u8 sizetocode[16] = {
		0, 1, 2, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7
	};

	code = FUNC1(code, 1, (int)FUNC0(sizetocode));

	return sizetocode[code - 1];
}