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
struct db1x_pcmcia_sock {int board_type; } ;

/* Variables and functions */
#define  BOARD_TYPE_DB1200 129 
#define  BOARD_TYPE_DB1300 128 
 int FUNC0 (struct db1x_pcmcia_sock*) ; 
 int FUNC1 (struct db1x_pcmcia_sock*) ; 
 int FUNC2 (struct db1x_pcmcia_sock*) ; 

__attribute__((used)) static int FUNC3(struct db1x_pcmcia_sock *sock)
{
	switch (sock->board_type) {
	case BOARD_TYPE_DB1200:
		return FUNC1(sock);
	case BOARD_TYPE_DB1300:
		return FUNC2(sock);
	default:
		return FUNC0(sock);
	}
}