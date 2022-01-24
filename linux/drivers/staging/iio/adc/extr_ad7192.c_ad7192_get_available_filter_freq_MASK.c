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
struct ad7192_state {unsigned int fclk; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AD7192_SYNC3_FILTER ; 
 int AD7192_SYNC4_FILTER ; 
 void* FUNC1 (unsigned int,int) ; 

__attribute__((used)) static void FUNC2(struct ad7192_state *st,
						    int *freq)
{
	unsigned int fadc;

	/* Formulas for filter at page 25 of the datasheet */
	fadc = FUNC1(st->fclk,
				 AD7192_SYNC4_FILTER * FUNC0(st->mode));
	freq[0] = FUNC1(fadc * 240, 1024);

	fadc = FUNC1(st->fclk,
				 AD7192_SYNC3_FILTER * FUNC0(st->mode));
	freq[1] = FUNC1(fadc * 240, 1024);

	fadc = FUNC1(st->fclk, FUNC0(st->mode));
	freq[2] = FUNC1(fadc * 230, 1024);
	freq[3] = FUNC1(fadc * 272, 1024);
}