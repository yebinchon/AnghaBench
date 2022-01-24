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
struct NCR5380_hostdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct NCR5380_hostdata*,unsigned int,int,int,unsigned int,int,int,unsigned long) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static inline int FUNC2(struct NCR5380_hostdata *hostdata,
                                        unsigned int reg, u8 bit, u8 val,
                                        unsigned long wait)
{
	if ((FUNC1(reg) & bit) == val)
		return 0;

	return FUNC0(hostdata, reg, bit, val,
						reg, bit, val, wait);
}