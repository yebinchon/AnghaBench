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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC2(unsigned int base,
					unsigned char *dp)
{
	unsigned int len, i;

	len = i = FUNC1(base);
	while (i-- > 0) *dp++ = FUNC0(base);
	return len;
}