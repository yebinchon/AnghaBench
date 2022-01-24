#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sesq; } ;
struct TYPE_4__ {TYPE_1__ tm; } ;
struct irb {TYPE_2__ scsw; } ;

/* Variables and functions */
 scalar_t__ SCSW_SESQ_DEV_NOFCX ; 
 scalar_t__ SCSW_SESQ_PATH_NOFCX ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC1(struct irb *irb)
{
	return (FUNC0(&irb->scsw) &&
	    (irb->scsw.tm.sesq == SCSW_SESQ_DEV_NOFCX ||
	     irb->scsw.tm.sesq == SCSW_SESQ_PATH_NOFCX));
}