#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* Rop; } ;
struct riva_par {TYPE_2__ riva; } ;
struct TYPE_3__ {int /*<<< orphan*/  Rop3; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Rop ; 
 int /*<<< orphan*/  FUNC2 (struct riva_par*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC3(struct riva_par *par, int rop)
{
	FUNC2(par, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
        FUNC1(par->riva, Rop, 1);
        FUNC0(&par->riva.Rop->Rop3, 0, rop);

}