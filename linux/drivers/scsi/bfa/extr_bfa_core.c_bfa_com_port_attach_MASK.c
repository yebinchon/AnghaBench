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
struct bfa_port_s {int dummy; } ;
struct TYPE_2__ {struct bfa_port_s port; } ;
struct bfa_s {int /*<<< orphan*/  trcmod; int /*<<< orphan*/  ioc; TYPE_1__ modules; } ;
struct bfa_mem_dma_s {int /*<<< orphan*/  dma_curp; int /*<<< orphan*/  kva_curp; } ;

/* Variables and functions */
 struct bfa_mem_dma_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_port_s*,int /*<<< orphan*/ *,struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_port_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bfa_s *bfa)
{
	struct bfa_port_s	*port = &bfa->modules.port;
	struct bfa_mem_dma_s	*port_dma = FUNC0(bfa);

	FUNC1(port, &bfa->ioc, bfa, bfa->trcmod);
	FUNC2(port, port_dma->kva_curp, port_dma->dma_curp);
}