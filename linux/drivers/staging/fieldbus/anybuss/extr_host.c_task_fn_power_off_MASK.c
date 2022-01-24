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
struct anybuss_host {int power_on; int /*<<< orphan*/  ind_ab; int /*<<< orphan*/  irq; struct anybuss_client* client; } ;
struct anybuss_client {int /*<<< orphan*/  (* on_online_changed ) (struct anybuss_client*,int) ;} ;
struct ab_task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IND_AB_UPDATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct anybuss_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct anybuss_client*,int) ; 

__attribute__((used)) static int FUNC4(struct anybuss_host *cd,
			     struct ab_task *t)
{
	struct anybuss_client *client = cd->client;

	if (!cd->power_on)
		return 0;
	FUNC1(cd->irq);
	FUNC2(cd);
	FUNC0(&cd->ind_ab, IND_AB_UPDATED);
	if (client->on_online_changed)
		client->on_online_changed(client, false);
	cd->power_on = false;
	return 0;
}