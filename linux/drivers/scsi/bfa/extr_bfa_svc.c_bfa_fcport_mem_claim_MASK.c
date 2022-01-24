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
typedef  union bfa_fcport_stats_u {int dummy; } bfa_fcport_stats_u ;
struct bfa_mem_dma_s {int dummy; } ;
struct bfa_fcport_s {union bfa_fcport_stats_u* stats; int /*<<< orphan*/  stats_pa; scalar_t__ stats_kva; struct bfa_mem_dma_s fcport_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_mem_dma_s*) ; 
 scalar_t__ FUNC1 (struct bfa_mem_dma_s*) ; 

__attribute__((used)) static void
FUNC2(struct bfa_fcport_s *fcport)
{
	struct bfa_mem_dma_s *fcport_dma = &fcport->fcport_dma;

	fcport->stats_kva = FUNC1(fcport_dma);
	fcport->stats_pa  = FUNC0(fcport_dma);
	fcport->stats = (union bfa_fcport_stats_u *)
				FUNC1(fcport_dma);
}