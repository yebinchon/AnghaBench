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
typedef  unsigned int u16 ;
struct atyfb_par {unsigned int fifo_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFO_STAT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct atyfb_par*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(u16 entries, struct atyfb_par *par)
{
	unsigned fifo_space = par->fifo_space;
	while (entries > fifo_space) {
		fifo_space = 16 - FUNC1(FUNC0(FIFO_STAT, par) & 0xffff);
	}
	par->fifo_space = fifo_space - entries;
}