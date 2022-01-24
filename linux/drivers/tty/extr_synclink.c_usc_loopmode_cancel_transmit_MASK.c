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
struct mgsl_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DmaCmd_ResetTxChannel ; 
 int /*<<< orphan*/  RTCmd_PurgeTxFifo ; 
 int /*<<< orphan*/  FUNC0 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mgsl_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mgsl_struct*) ; 

__attribute__((used)) static void FUNC3( struct mgsl_struct * info )
{
 	/* reset tx dma channel and purge TxFifo */
 	FUNC1( info, RTCmd_PurgeTxFifo );
 	FUNC0( info, DmaCmd_ResetTxChannel );
  	FUNC2( info );
}