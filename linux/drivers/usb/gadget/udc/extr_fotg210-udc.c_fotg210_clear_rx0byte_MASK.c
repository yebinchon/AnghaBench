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
typedef  int u32 ;
struct fotg210_udc {scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ FOTG210_RX0BYTE ; 
 int RX0BYTE_EP1 ; 
 int RX0BYTE_EP2 ; 
 int RX0BYTE_EP3 ; 
 int RX0BYTE_EP4 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct fotg210_udc *fotg210)
{
	u32 value = FUNC0(fotg210->reg + FOTG210_RX0BYTE);

	value &= ~(RX0BYTE_EP1 | RX0BYTE_EP2 | RX0BYTE_EP3
		   | RX0BYTE_EP4);
	FUNC1(value, fotg210->reg + FOTG210_RX0BYTE);
}