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
struct mite_ring {int dummy; } ;
struct mite_channel {int dummy; } ;
struct mite {scalar_t__ num_channels; } ;

/* Variables and functions */
 struct mite_channel* FUNC0 (struct mite*,struct mite_ring*,int /*<<< orphan*/ ,scalar_t__) ; 

struct mite_channel *FUNC1(struct mite *mite,
					  struct mite_ring *ring)
{
	return FUNC0(mite, ring, 0,
					     mite->num_channels - 1);
}