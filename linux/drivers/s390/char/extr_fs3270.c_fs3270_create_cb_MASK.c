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

/* Variables and functions */
 int /*<<< orphan*/  IBM_FS3270_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class3270 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  fs3270_fops ; 

__attribute__((used)) static void FUNC3(int minor)
{
	FUNC1(IBM_FS3270_MAJOR, minor, 1, "tub", &fs3270_fops);
	FUNC2(class3270, NULL, FUNC0(IBM_FS3270_MAJOR, minor),
		      NULL, "3270/tub%d", minor);
}