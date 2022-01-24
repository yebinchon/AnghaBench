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
typedef  int u16 ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int RHST ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (struct r8a66597*,unsigned long) ; 

__attribute__((used)) static inline u16 FUNC2(struct r8a66597 *r8a66597, int port)
{
	unsigned long dvstctr_reg = FUNC0(port);

	return FUNC1(r8a66597, dvstctr_reg) & RHST;
}