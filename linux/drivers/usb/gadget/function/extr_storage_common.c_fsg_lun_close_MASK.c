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
struct fsg_lun {int /*<<< orphan*/ * filp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_lun*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct fsg_lun *curlun)
{
	if (curlun->filp) {
		FUNC0(curlun, "close backing file\n");
		FUNC1(curlun->filp);
		curlun->filp = NULL;
	}
}