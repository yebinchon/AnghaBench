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
typedef  scalar_t__ u16 ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_MAX_SIZE ; 
 scalar_t__ efuse_available_max_size ; 
 int FUNC0 (struct _adapter*,int,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*) ; 

u8 FUNC3(struct _adapter *adapter, u8 bRead, u16 start_addr,
		      u16 cnts, u8 *data)
{
	int i;
	u8 res = true;

	if (start_addr > EFUSE_MAX_SIZE)
		return false;
	if (!bRead && ((start_addr + cnts) >
	   efuse_available_max_size))
		return false;
	if (!bRead && !FUNC1(adapter))
		return false;
	/* -----------------e-fuse one byte read / write ---------------------*/
	for (i = 0; i < cnts; i++) {
		if ((start_addr + i) > EFUSE_MAX_SIZE) {
			res = false;
			break;
		}
		res = FUNC0(adapter, bRead, start_addr + i,
					data + i);
		if (!bRead && !res)
			break;
	}
	if (!bRead)
		FUNC2(adapter);
	return res;
}