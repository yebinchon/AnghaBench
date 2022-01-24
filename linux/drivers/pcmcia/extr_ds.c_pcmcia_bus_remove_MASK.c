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
struct pcmcia_socket {int /*<<< orphan*/  ops_mutex; int /*<<< orphan*/  present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_socket *skt)
{
	FUNC0(&skt->present, 0);
	FUNC4(skt, NULL);

	FUNC2(&skt->ops_mutex);
	FUNC1(skt);
	FUNC5(skt);
	FUNC3(&skt->ops_mutex);

	return 0;
}