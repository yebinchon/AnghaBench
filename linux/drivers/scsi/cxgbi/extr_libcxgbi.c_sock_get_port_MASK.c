#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ sin6_port; } ;
struct TYPE_4__ {scalar_t__ sin_port; } ;
struct cxgbi_sock {size_t port_id; scalar_t__ csk_family; TYPE_2__ saddr6; TYPE_1__ saddr; struct cxgbi_device* cdev; } ;
struct cxgbi_ports_map {int max_connect; int used; int next; int /*<<< orphan*/  lock; scalar_t__ sport_base; struct cxgbi_sock** port_csk; } ;
struct cxgbi_device {TYPE_3__** ports; struct cxgbi_ports_map pmap; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int CXGBI_DBG_SOCK ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_sock*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct cxgbi_device*,size_t,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct cxgbi_device*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct cxgbi_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct cxgbi_device*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct cxgbi_sock *csk)
{
	struct cxgbi_device *cdev = csk->cdev;
	struct cxgbi_ports_map *pmap = &cdev->pmap;
	unsigned int start;
	int idx;
	__be16 *port;

	if (!pmap->max_connect) {
		FUNC4("cdev 0x%p, p#%u %s, NO port map.\n",
			   cdev, csk->port_id, cdev->ports[csk->port_id]->name);
		return -EADDRNOTAVAIL;
	}

	if (csk->csk_family == AF_INET)
		port = &csk->saddr.sin_port;
	else /* ipv6 */
		port = &csk->saddr6.sin6_port;

	if (*port) {
		FUNC4("source port NON-ZERO %u.\n",
			FUNC3(*port));
		return -EADDRINUSE;
	}

	FUNC7(&pmap->lock);
	if (pmap->used >= pmap->max_connect) {
		FUNC8(&pmap->lock);
		FUNC5("cdev 0x%p, p#%u %s, ALL ports used.\n",
			cdev, csk->port_id, cdev->ports[csk->port_id]->name);
		return -EADDRNOTAVAIL;
	}

	start = idx = pmap->next;
	do {
		if (++idx >= pmap->max_connect)
			idx = 0;
		if (!pmap->port_csk[idx]) {
			pmap->used++;
			*port = FUNC1(pmap->sport_base + idx);
			pmap->next = idx;
			pmap->port_csk[idx] = csk;
			FUNC8(&pmap->lock);
			FUNC0(csk);
			FUNC2(1 << CXGBI_DBG_SOCK,
				"cdev 0x%p, p#%u %s, p %u, %u.\n",
				cdev, csk->port_id,
				cdev->ports[csk->port_id]->name,
				pmap->sport_base + idx, pmap->next);
			return 0;
		}
	} while (idx != start);
	FUNC8(&pmap->lock);

	/* should not happen */
	FUNC6("cdev 0x%p, p#%u %s, next %u?\n",
		cdev, csk->port_id, cdev->ports[csk->port_id]->name,
		pmap->next);
	return -EADDRNOTAVAIL;
}