#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_3__ {int function; int offset; int address; int group; } ;
struct TYPE_4__ {TYPE_1__ e4; } ;
struct uea_softc {TYPE_2__ cmv_dsc; } ;
struct cmv_e4 {int /*<<< orphan*/ * dwData; void* wOffset; void* wAddress; void* wGroup; void* wFunction; } ;
typedef  int /*<<< orphan*/  cmv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct uea_softc*) ; 
 int /*<<< orphan*/  UEA_E4_SET_BLOCK ; 
 int /*<<< orphan*/  UEA_MPTX_START ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmv_e4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct uea_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct cmv_e4*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct uea_softc*) ; 

__attribute__((used)) static int FUNC11(struct uea_softc *sc,
		u16 function, u16 group, u16 address, u16 offset, u32 data)
{
	struct cmv_e4 cmv;
	int ret;

	FUNC6(FUNC2(sc));
	FUNC5(&cmv, 0, sizeof(cmv));

	FUNC9(FUNC2(sc), "Function : %d-%d, Group : 0x%04x, "
		 "Address : 0x%04x, offset : 0x%04x, data : 0x%08x\n",
		 FUNC1(function), FUNC0(function),
		 group, address, offset, data);

	/* we send a request, but we expect a reply */
	sc->cmv_dsc.e4.function = function | (0x1 << 4);
	sc->cmv_dsc.e4.offset = offset;
	sc->cmv_dsc.e4.address = address;
	sc->cmv_dsc.e4.group = group;

	cmv.wFunction = FUNC3(function);
	cmv.wGroup = FUNC3(group);
	cmv.wAddress = FUNC3(address);
	cmv.wOffset = FUNC3(offset);
	cmv.dwData[0] = FUNC4(data);

	ret = FUNC8(sc, UEA_E4_SET_BLOCK, UEA_MPTX_START,
							sizeof(cmv), &cmv);
	if (ret < 0)
		return ret;
	ret = FUNC10(sc);
	FUNC7(FUNC2(sc));
	return ret;
}