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
struct tdfx_par {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tdfx_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tdfx_par*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct tdfx_par *par)
{
	unsigned char s;

	s = FUNC0(par, 0x01) & 0xdf;
	FUNC1(par, 0x00, 0x01);
	FUNC1(par, 0x01, s);
	FUNC1(par, 0x00, 0x03);
}