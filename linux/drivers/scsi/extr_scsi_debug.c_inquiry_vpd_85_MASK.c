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
 int /*<<< orphan*/  FUNC0 (unsigned char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(unsigned char *arr)
{
	int num = 0;
	const char *na1 = "https://www.kernel.org/config";
	const char *na2 = "http://www.kernel.org/log";
	int plen, olen;

	arr[num++] = 0x1;	/* lu, storage config */
	arr[num++] = 0x0;	/* reserved */
	arr[num++] = 0x0;
	olen = FUNC2(na1);
	plen = olen + 1;
	if (plen % 4)
		plen = ((plen / 4) + 1) * 4;
	arr[num++] = plen;	/* length, null termianted, padded */
	FUNC0(arr + num, na1, olen);
	FUNC1(arr + num + olen, 0, plen - olen);
	num += plen;

	arr[num++] = 0x4;	/* lu, logging */
	arr[num++] = 0x0;	/* reserved */
	arr[num++] = 0x0;
	olen = FUNC2(na2);
	plen = olen + 1;
	if (plen % 4)
		plen = ((plen / 4) + 1) * 4;
	arr[num++] = plen;	/* length, null terminated, padded */
	FUNC0(arr + num, na2, olen);
	FUNC1(arr + num + olen, 0, plen - olen);
	num += plen;

	return num;
}