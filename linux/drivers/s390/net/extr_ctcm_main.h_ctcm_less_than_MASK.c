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
 unsigned long FUNC0 (char*,char**,int) ; 

__attribute__((used)) static inline int FUNC1(char *id1, char *id2)
{
	unsigned long dev1, dev2;

	id1 = id1 + 5;
	id2 = id2 + 5;

	dev1 = FUNC0(id1, &id1, 16);
	dev2 = FUNC0(id2, &id2, 16);

	return (dev1 < dev2);
}