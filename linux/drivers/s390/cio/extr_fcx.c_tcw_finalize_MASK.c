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
typedef  void* u32 ;
struct tidaw {int /*<<< orphan*/  flags; } ;
struct tcw {int flags; int tccbl; void* output_count; scalar_t__ w; void* input_count; scalar_t__ r; } ;
struct tccb_tcat {scalar_t__ count; } ;
struct tccb {int /*<<< orphan*/ * tca; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int) ; 
 int TCW_FLAGS_OUTPUT_TIDA ; 
 int /*<<< orphan*/  TIDAW_FLAGS_LAST ; 
 scalar_t__ FUNC1 (struct tidaw*,int) ; 
 void* FUNC2 (struct tccb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tccb_tcat*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct tccb*) ; 
 struct tidaw* FUNC5 (struct tcw*) ; 
 struct tccb* FUNC6 (struct tcw*) ; 

void FUNC7(struct tcw *tcw, int num_tidaws)
{
	struct tidaw *tidaw;
	struct tccb *tccb;
	struct tccb_tcat *tcat;
	u32 count;

	/* Terminate tidaw list. */
	tidaw = FUNC5(tcw);
	if (num_tidaws > 0)
		tidaw[num_tidaws - 1].flags |= TIDAW_FLAGS_LAST;
	/* Add tcat to tccb. */
	tccb = FUNC6(tcw);
	tcat = (struct tccb_tcat *) &tccb->tca[FUNC4(tccb)];
	FUNC3(tcat, 0, sizeof(*tcat));
	/* Calculate tcw input/output count and tcat transport count. */
	count = FUNC2(tccb);
	if (tcw->w && (tcw->flags & TCW_FLAGS_OUTPUT_TIDA))
		count += FUNC1(tidaw, num_tidaws);
	if (tcw->r)
		tcw->input_count = count;
	else if (tcw->w)
		tcw->output_count = count;
	tcat->count = FUNC0(count, 4) + 4;
	/* Calculate tccbl. */
	tcw->tccbl = (sizeof(struct tccb) + FUNC4(tccb) +
		      sizeof(struct tccb_tcat) - 20) >> 2;
}