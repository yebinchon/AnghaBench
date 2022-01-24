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
struct pcmcia_socket {int /*<<< orphan*/  ops_mutex; scalar_t__ pcmcia_pfc; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_socket *skt)
{
	FUNC0(&skt->present, 1);

	FUNC2(&skt->ops_mutex);
	skt->pcmcia_pfc = 0;
	FUNC1(skt); /* to be on the safe side... */
	FUNC3(&skt->ops_mutex);

	FUNC4(skt);

	return 0;
}