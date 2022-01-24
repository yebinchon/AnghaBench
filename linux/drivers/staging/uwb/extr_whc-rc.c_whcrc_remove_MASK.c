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
struct whcrc {struct uwb_rc* uwb_rc; } ;
struct uwb_rc {int dummy; } ;
struct umc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct whcrc*) ; 
 struct whcrc* FUNC1 (struct umc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct umc_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC5 (struct whcrc*) ; 

__attribute__((used)) static void FUNC6(struct umc_dev *umc_dev)
{
	struct whcrc *whcrc = FUNC1(umc_dev);
	struct uwb_rc *uwb_rc = whcrc->uwb_rc;

	FUNC2(umc_dev, NULL);
	FUNC4(uwb_rc);
	FUNC5(whcrc);
	FUNC0(whcrc);
	FUNC3(uwb_rc);
}