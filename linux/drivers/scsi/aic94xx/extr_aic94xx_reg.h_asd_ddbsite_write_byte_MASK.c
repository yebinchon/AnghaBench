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
typedef  int u16 ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct asd_ha_struct*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,int,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct asd_ha_struct *asd_ha,
					  u16 ddb_site_no,
					  u16 offs, u8 val)
{
	u16 base = offs & ~1;
	u16 rval = FUNC0(asd_ha, ddb_site_no, base);
	if (offs & 1)
		rval = (val << 8) | (rval & 0xFF);
	else
		rval = (rval & 0xFF00) | val;
	FUNC1(asd_ha, ddb_site_no, base, rval);
}