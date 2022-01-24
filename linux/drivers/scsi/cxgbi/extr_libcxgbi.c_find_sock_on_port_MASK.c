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
struct cxgbi_sock {unsigned char port_id; } ;
struct cxgbi_ports_map {unsigned int max_connect; unsigned int used; int /*<<< orphan*/  lock; struct cxgbi_sock** port_csk; } ;
struct cxgbi_device {struct cxgbi_ports_map pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cxgbi_sock *FUNC2(struct cxgbi_device *cdev,
					    unsigned char port_id)
{
	struct cxgbi_ports_map *pmap = &cdev->pmap;
	unsigned int i;
	unsigned int used;

	if (!pmap->max_connect || !pmap->used)
		return NULL;

	FUNC0(&pmap->lock);
	used = pmap->used;
	for (i = 0; used && i < pmap->max_connect; i++) {
		struct cxgbi_sock *csk = pmap->port_csk[i];

		if (csk) {
			if (csk->port_id == port_id) {
				FUNC1(&pmap->lock);
				return csk;
			}
			used--;
		}
	}
	FUNC1(&pmap->lock);

	return NULL;
}