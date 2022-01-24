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
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef  enum omap_burst_size { ____Placeholder_omap_burst_size } omap_burst_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(enum omap_plane plane,
		enum omap_burst_size burst_size)
{
	static const unsigned shifts[] = { 6, 14, 14, 14, 14, };
	int shift;

	shift = shifts[plane];
	FUNC1(FUNC0(plane), burst_size, shift + 1, shift);
}