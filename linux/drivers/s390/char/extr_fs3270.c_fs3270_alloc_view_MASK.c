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
struct fs3270 {int /*<<< orphan*/  init; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fs3270* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fs3270*) ; 
 struct fs3270* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fs3270 *
FUNC5(void)
{
	struct fs3270 *fp;

	fp = FUNC3(sizeof(struct fs3270),GFP_KERNEL);
	if (!fp)
		return FUNC0(-ENOMEM);
	fp->init = FUNC4(0);
	if (FUNC1(fp->init)) {
		FUNC2(fp);
		return FUNC0(-ENOMEM);
	}
	return fp;
}