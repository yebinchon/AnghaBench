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
struct initio_host {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_IDE ; 
 int /*<<< orphan*/  TSC_XF_FIFO_OUT ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SFifo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct initio_host*) ; 

__attribute__((used)) static int FUNC2(struct initio_host * host)
{
	FUNC0(MSG_IDE, host->addr + TUL_SFifo);		/* Initiator Detected Error */
	FUNC0(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
	return FUNC1(host);
}