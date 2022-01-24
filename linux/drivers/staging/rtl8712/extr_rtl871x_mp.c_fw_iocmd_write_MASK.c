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
typedef  int u32 ;
struct _adapter {int dummy; } ;
struct IOCMD_STRUCT {int cmdclass; int value; int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct _adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct _adapter *pAdapter,
			 struct IOCMD_STRUCT iocmd, u32 value)
{
	u32 cmd32 = 0;
	u8 iocmd_class	= iocmd.cmdclass;
	u32 iocmd_value	= iocmd.value;
	u8 iocmd_idx	= iocmd.index;

	FUNC2(pAdapter, &value, 0);
	FUNC0(100);
	cmd32 = (iocmd_class << 24) | (iocmd_value << 8) | iocmd_idx;
	return FUNC1(pAdapter, cmd32);
}