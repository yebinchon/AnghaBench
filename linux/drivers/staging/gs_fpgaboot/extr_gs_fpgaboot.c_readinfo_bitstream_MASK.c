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
typedef  char u8 ;
typedef  int u16 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int*,int) ; 

__attribute__((used)) static int FUNC3(u8 *bitdata, u8 *buf, int size, int *offset)
{
	u8 tbuf[2];
	u16 len;

	/* read section char */
	FUNC2(bitdata, tbuf, offset, 1);

	/* read length */
	FUNC2(bitdata, tbuf, offset, 2);

	len = FUNC0(tbuf);
	if (len >= size) {
		FUNC1("error: readinfo buffer too small\n");
		return -EINVAL;
	}

	FUNC2(bitdata, buf, offset, len);
	buf[len] = '\0';

	return 0;
}