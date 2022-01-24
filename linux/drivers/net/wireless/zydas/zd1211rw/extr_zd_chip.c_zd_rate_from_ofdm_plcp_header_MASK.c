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
typedef  int u8 ;

/* Variables and functions */
 int ZD_OFDM ; 
 int FUNC0 (void const*) ; 

__attribute__((used)) static inline u8 FUNC1(const void *rx_frame)
{
	return ZD_OFDM | FUNC0(rx_frame);
}