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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct asd_ha_struct {int /*<<< orphan*/  iospace; } ;

/* Variables and functions */
 scalar_t__ OCM_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct asd_ha_struct*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,void*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct asd_ha_struct *asd_ha, void *buffer,
			    u32 offs, int size)
{
	u8 *p = buffer;
	if (FUNC2(asd_ha->iospace))
		FUNC1(asd_ha, buffer, offs+OCM_BASE_ADDR, size);
	else {
		for ( ; size > 0; size--, offs++, p++)
			*p = FUNC0(asd_ha, offs);
	}
	return size;
}