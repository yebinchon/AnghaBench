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
typedef  int /*<<< orphan*/  u32 ;
struct tccb {int /*<<< orphan*/ * tca; } ;
struct dcw {int flags; scalar_t__ cd_count; scalar_t__ count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int DCW_FLAGS_CC ; 
 size_t FUNC1 (struct tccb*) ; 

__attribute__((used)) static u32 FUNC2(struct tccb *tccb)
{
	int offset;
	struct dcw *dcw;
	u32 count = 0;
	size_t size;

	size = FUNC1(tccb);
	for (offset = 0; offset < size;) {
		dcw = (struct dcw *) &tccb->tca[offset];
		count += dcw->count;
		if (!(dcw->flags & DCW_FLAGS_CC))
			break;
		offset += sizeof(struct dcw) + FUNC0((int) dcw->cd_count, 4);
	}
	return count;
}