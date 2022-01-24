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
 int /*<<< orphan*/  DS1511_RAMADDR_LSB ; 
 int /*<<< orphan*/  DS1511_RAMDATA ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *priv, unsigned int pos, void *buf,
			      size_t size)
{
	int i;

	FUNC0(pos, DS1511_RAMADDR_LSB);
	for (i = 0; i < size; i++)
		FUNC0(*(char *)buf++, DS1511_RAMDATA);

	return 0;
}