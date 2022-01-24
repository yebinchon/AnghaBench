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
struct hdq_data {int hdq_base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct hdq_data *hdq_data, u32 offset,
				  u32 mask)
{
	u32 ie;

	ie = FUNC0(hdq_data->hdq_base + offset);
	FUNC1(ie & mask, hdq_data->hdq_base + offset);
}