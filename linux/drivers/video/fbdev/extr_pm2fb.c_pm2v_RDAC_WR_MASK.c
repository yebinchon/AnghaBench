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
struct pm2fb_par {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  PM2VR_RD_INDEXED_DATA ; 
 int /*<<< orphan*/  PM2VR_RD_INDEX_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct pm2fb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct pm2fb_par *p, s32 idx, u32 v)
{
	FUNC0(p, PM2VR_RD_INDEX_LOW, idx & 0xff);
	FUNC1();
	FUNC0(p, PM2VR_RD_INDEXED_DATA, v);
	FUNC1();
}