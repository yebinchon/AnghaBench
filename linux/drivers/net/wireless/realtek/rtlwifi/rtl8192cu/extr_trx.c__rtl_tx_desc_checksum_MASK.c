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
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(__le32 *txdesc)
{
	__le16 *ptr = (__le16 *)txdesc;
	u16	checksum = 0;
	u32 index;

	/* Clear first */
	FUNC1(txdesc, 0);
	for (index = 0; index < 16; index++)
		checksum = checksum ^ FUNC0(*(ptr + index));
	FUNC1(txdesc, checksum);
}