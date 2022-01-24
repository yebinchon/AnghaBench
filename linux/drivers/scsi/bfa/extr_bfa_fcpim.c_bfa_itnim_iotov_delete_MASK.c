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
struct bfa_itnim_s {int /*<<< orphan*/  ditn; scalar_t__ iotov_active; } ;
typedef  scalar_t__ bfa_boolean_t ;

/* Variables and functions */
 scalar_t__ BFA_FALSE ; 
 scalar_t__ BFA_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_itnim_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_itnim_s*) ; 

__attribute__((used)) static void
FUNC4(struct bfa_itnim_s *itnim)
{
	bfa_boolean_t pathtov_active = BFA_FALSE;

	if (itnim->iotov_active)
		pathtov_active = BFA_TRUE;

	FUNC3(itnim);
	if (pathtov_active)
		FUNC1(itnim->ditn);
	FUNC2(itnim);
	if (pathtov_active)
		FUNC0(itnim->ditn);
}