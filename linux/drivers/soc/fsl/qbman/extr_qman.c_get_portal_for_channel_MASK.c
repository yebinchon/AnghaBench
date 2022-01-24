#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct qman_portal {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ channel; } ;

/* Variables and functions */
 struct qman_portal** affine_portals ; 
 int FUNC0 () ; 

__attribute__((used)) static inline struct qman_portal *FUNC1(u16 channel)
{
	int i;

	for (i = 0; i < FUNC0(); i++) {
		if (affine_portals[i] &&
		    affine_portals[i]->config->channel == channel)
			return affine_portals[i];
	}

	return NULL;
}