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
struct pcmcia_socket {int /*<<< orphan*/  ops_mutex; scalar_t__ functions; int /*<<< orphan*/ * fake_cis; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC8(struct pcmcia_socket *skt)
{
	if (!FUNC7(skt))
		return 0;

	FUNC1(&skt->dev, "cis mismatch - different card\n");

	/* first, remove the card */
	FUNC6(skt);

	FUNC3(&skt->ops_mutex);
	FUNC0(skt);
	FUNC2(skt->fake_cis);
	skt->fake_cis = NULL;
	skt->functions = 0;
	FUNC4(&skt->ops_mutex);

	/* now, add the new card */
	FUNC5(skt);
	return 0;
}