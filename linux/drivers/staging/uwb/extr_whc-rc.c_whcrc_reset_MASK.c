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
struct whcrc {int /*<<< orphan*/  umc_dev; } ;
struct uwb_rc {struct whcrc* priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct uwb_rc *rc)
{
	struct whcrc *whcrc = rc->priv;

	return FUNC0(whcrc->umc_dev);
}