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
struct pm2fb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM2R_RD_PALETTE_DATA ; 
 int /*<<< orphan*/  PM2R_RD_PALETTE_WRITE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct pm2fb_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pm2fb_par*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct pm2fb_par *p, unsigned char regno,
		      unsigned char r, unsigned char g, unsigned char b)
{
	FUNC0(p, 4);
	FUNC1(p, PM2R_RD_PALETTE_WRITE_ADDRESS, regno);
	FUNC2();
	FUNC1(p, PM2R_RD_PALETTE_DATA, r);
	FUNC2();
	FUNC1(p, PM2R_RD_PALETTE_DATA, g);
	FUNC2();
	FUNC1(p, PM2R_RD_PALETTE_DATA, b);
}