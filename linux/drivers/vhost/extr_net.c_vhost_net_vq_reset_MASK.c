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
struct vhost_net {TYPE_1__* vqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  rxq; scalar_t__ sock_hlen; scalar_t__ vhost_hlen; int /*<<< orphan*/ * ubufs; scalar_t__ upend_idx; scalar_t__ done_idx; } ;

/* Variables and functions */
 int VHOST_NET_VQ_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_net*) ; 

__attribute__((used)) static void FUNC2(struct vhost_net *n)
{
	int i;

	FUNC1(n);

	for (i = 0; i < VHOST_NET_VQ_MAX; i++) {
		n->vqs[i].done_idx = 0;
		n->vqs[i].upend_idx = 0;
		n->vqs[i].ubufs = NULL;
		n->vqs[i].vhost_hlen = 0;
		n->vqs[i].sock_hlen = 0;
		FUNC0(&n->vqs[i].rxq);
	}

}