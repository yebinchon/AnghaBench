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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static u32 FUNC3(u32 raw_port_status, u32 port_li)
{
	u32 ext_stat = 0;
	int speed_id;

	/* only support rx and tx lane counts of 1 in usb3.1 spec */
	speed_id = FUNC0(raw_port_status);
	ext_stat |= speed_id;		/* bits 3:0, RX speed id */
	ext_stat |= speed_id << 4;	/* bits 7:4, TX speed id */

	ext_stat |= FUNC1(port_li) << 8;  /* bits 11:8 Rx lane count */
	ext_stat |= FUNC2(port_li) << 12; /* bits 15:12 Tx lane count */

	return ext_stat;
}