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
struct tape390_kekl {scalar_t__ type; scalar_t__ type_on_tape; int /*<<< orphan*/  label; } ;
struct tape3592_kekl {int flags; struct tape3592_kekl* label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tape3592_kekl*,int) ; 
 scalar_t__ TAPE390_KEKL_TYPE_HASH ; 
 int /*<<< orphan*/  FUNC1 (struct tape3592_kekl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tape3592_kekl*,char,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tape390_kekl *in,
			    struct tape3592_kekl *out)
{
	int len;

	FUNC2(out, 0, sizeof(*out));
	if (in->type == TAPE390_KEKL_TYPE_HASH)
		out->flags |= 0x40;
	if (in->type_on_tape == TAPE390_KEKL_TYPE_HASH)
		out->flags |= 0x80;
	len = FUNC3(sizeof(out->label), FUNC4(in->label));
	FUNC1(out->label, in->label, len);
	FUNC2(out->label + len, ' ', sizeof(out->label) - len);
	FUNC0(out->label, sizeof(out->label));
}