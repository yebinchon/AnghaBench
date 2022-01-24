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
typedef  int /*<<< orphan*/  vrc4173_socket_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int u_long ;
typedef  int u_char ;
struct pccard_mem_map {int map; int sys_start; int sys_stop; int card_start; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADR_WIN_EN ; 
 int EINVAL ; 
 int MAP_16BIT ; 
 int MAP_ACTIVE ; 
 int MAP_ATTRIB ; 
 int MAP_WRPROT ; 
 int MEM_WIN_DSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MEM_WIN_REGSET ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int MEM_WIN_WP ; 
 int /*<<< orphan*/ * cardu_sockets ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(unsigned int sock, struct pccard_mem_map *mem)
{
	vrc4173_socket_t *socket = &cardu_sockets[sock];
	uint16_t value;
	uint8_t window, enable;
	u_long sys_start, sys_stop, card_start;
	u_char map;

	map = mem->map;
	sys_start = mem->sys_start;
	sys_stop = mem->sys_stop;
	card_start = mem->card_start;

	if (map > 4 || sys_start > sys_stop || ((sys_start ^ sys_stop) >> 24) ||
	    (card_start >> 26))
		return -EINVAL;

	window = FUNC5(socket, ADR_WIN_EN);
	enable = FUNC1(map);
	if (window & enable) {
		window &= ~enable;
		FUNC6(socket, ADR_WIN_EN, window);
	}

	FUNC6(socket, FUNC4(map), sys_start >> 24);

	value = (sys_start >> 12) & 0x0fff;
	if (mem->flags & MAP_16BIT) value |= MEM_WIN_DSIZE;
	FUNC7(socket, FUNC3(map), value);

	value = (sys_stop >> 12) & 0x0fff;
	FUNC7(socket, FUNC0(map), value);

	value = ((card_start - sys_start) >> 12) & 0x3fff;
	if (mem->flags & MAP_WRPROT) value |= MEM_WIN_WP;
	if (mem->flags & MAP_ATTRIB) value |= MEM_WIN_REGSET;
	FUNC7(socket, FUNC2(map), value);

	if (mem->flags & MAP_ACTIVE)
		FUNC6(socket, ADR_WIN_EN, window | enable);

	return 0;
}