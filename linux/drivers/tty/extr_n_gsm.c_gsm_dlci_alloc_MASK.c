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
struct gsm_mux {struct gsm_dlci** dlci; int /*<<< orphan*/  adaption; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct gsm_dlci {int addr; int /*<<< orphan*/  data; int /*<<< orphan*/  state; int /*<<< orphan*/  adaption; struct gsm_mux* gsm; TYPE_1__ port; int /*<<< orphan*/  t1; int /*<<< orphan*/  skb_list; int /*<<< orphan*/  _fifo; int /*<<< orphan*/ * fifo; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLCI_CLOSED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  gsm_dlci_command ; 
 int /*<<< orphan*/  gsm_dlci_data ; 
 int /*<<< orphan*/  gsm_dlci_t1 ; 
 int /*<<< orphan*/  gsm_port_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_dlci*) ; 
 struct gsm_dlci* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static struct gsm_dlci *FUNC8(struct gsm_mux *gsm, int addr)
{
	struct gsm_dlci *dlci = FUNC2(sizeof(struct gsm_dlci), GFP_ATOMIC);
	if (dlci == NULL)
		return NULL;
	FUNC5(&dlci->lock);
	FUNC3(&dlci->mutex);
	dlci->fifo = &dlci->_fifo;
	if (FUNC0(&dlci->_fifo, 4096, GFP_KERNEL) < 0) {
		FUNC1(dlci);
		return NULL;
	}

	FUNC4(&dlci->skb_list);
	FUNC6(&dlci->t1, gsm_dlci_t1, 0);
	FUNC7(&dlci->port);
	dlci->port.ops = &gsm_port_ops;
	dlci->gsm = gsm;
	dlci->addr = addr;
	dlci->adaption = gsm->adaption;
	dlci->state = DLCI_CLOSED;
	if (addr)
		dlci->data = gsm_dlci_data;
	else
		dlci->data = gsm_dlci_command;
	gsm->dlci[addr] = dlci;
	return dlci;
}