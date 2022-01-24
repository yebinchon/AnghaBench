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
struct n_tty_data {int /*<<< orphan*/  read_head; } ;

/* Variables and functions */
 unsigned char* FUNC0 (struct n_tty_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(unsigned char c, struct n_tty_data *ldata)
{
	*FUNC0(ldata, ldata->read_head) = c;
	ldata->read_head++;
}