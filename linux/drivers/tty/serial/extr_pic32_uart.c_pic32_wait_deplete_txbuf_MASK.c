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
struct pic32_sport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIC32_UART_STA ; 
 int PIC32_UART_STA_TRMT ; 
 int FUNC0 (struct pic32_sport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct pic32_sport *sport)
{
	/* wait for tx empty, otherwise chars will be lost or corrupted */
	while (!(FUNC0(sport, PIC32_UART_STA) & PIC32_UART_STA_TRMT))
		FUNC1(1);
}