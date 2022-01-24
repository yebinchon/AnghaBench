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
struct urfile {int /*<<< orphan*/  dev_reclen; struct urdev* urd; } ;
struct urdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,struct urdev*,struct urfile*,int /*<<< orphan*/ ) ; 
 struct urfile* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct urfile *FUNC2(struct urdev *urd)
{
	struct urfile *urf;

	urf = FUNC1(sizeof(struct urfile), GFP_KERNEL);
	if (!urf)
		return NULL;
	urf->urd = urd;

	FUNC0("urfile_alloc: urd=%p urf=%p rl=%zu\n", urd, urf,
	      urf->dev_reclen);

	return urf;
}