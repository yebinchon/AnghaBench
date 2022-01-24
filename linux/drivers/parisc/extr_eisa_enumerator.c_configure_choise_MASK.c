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
typedef  void* u_int8_t ;

/* Variables and functions */
 void* FUNC0 (unsigned char const*) ; 

__attribute__((used)) static int FUNC1(const unsigned char *buf, u_int8_t *info)
{
	int len;
	
	/* theis record contain the value of the functions
	 * configuration choises and an info byte which 
	 * describes which other records to expect in this 
	 * function */
	len = FUNC0(buf);
	*info=FUNC0(buf+len+1);
	 
	return len+2;
}