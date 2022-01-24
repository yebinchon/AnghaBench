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
struct arcfb_par {int /*<<< orphan*/  cio_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tuhold ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct arcfb_par *par, unsigned char value)
{

	FUNC0(value, par->cio_addr);
	FUNC1(tuhold);
}