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
struct cxlflash_cfg {scalar_t__ async_reset_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct cxlflash_cfg *cfg)
{
	if (cfg->async_reset_cookie == 0)
		return;

	/* Wait until all async calls prior to this cookie have completed */
	FUNC0(cfg->async_reset_cookie + 1);
	cfg->async_reset_cookie = 0;
}