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
struct urb {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  iso_frame_desc ; 
 struct urb* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

struct urb *FUNC3(int iso_packets, gfp_t mem_flags)
{
	struct urb *urb;

	urb = FUNC0(FUNC1(urb, iso_frame_desc, iso_packets),
		      mem_flags);
	if (!urb)
		return NULL;
	FUNC2(urb);
	return urb;
}