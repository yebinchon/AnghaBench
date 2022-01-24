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
struct ins_format1 {int opcode; int parity; size_t immediate; } ;
struct ins_format3 {int /*<<< orphan*/  address; } ;
union ins_formats {int integer; int /*<<< orphan*/  bytes; struct ins_format1 format1; struct ins_format3 format3; } ;
typedef  size_t uint8_t ;
typedef  int uint32_t ;
typedef  int u_int ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
#define  AIC_OP_ADC 142 
#define  AIC_OP_ADD 141 
#define  AIC_OP_AND 140 
#define  AIC_OP_BMOV 139 
#define  AIC_OP_CALL 138 
#define  AIC_OP_JC 137 
#define  AIC_OP_JE 136 
#define  AIC_OP_JMP 135 
#define  AIC_OP_JNC 134 
#define  AIC_OP_JNE 133 
#define  AIC_OP_JNZ 132 
#define  AIC_OP_JZ 131 
#define  AIC_OP_OR 130 
#define  AIC_OP_ROL 129 
#define  AIC_OP_XOR 128 
 int /*<<< orphan*/  SEQRAM ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * seqprog ; 

__attribute__((used)) static void
FUNC5(struct ahd_softc *ahd, u_int instrptr, uint8_t *dconsts)
{
	union	ins_formats instr;
	struct	ins_format1 *fmt1_ins;
	struct	ins_format3 *fmt3_ins;
	u_int	opcode;

	/*
	 * The firmware is always compiled into a little endian format.
	 */
	instr.integer = FUNC1(*(uint32_t*)&seqprog[instrptr * 4]);

	fmt1_ins = &instr.format1;
	fmt3_ins = NULL;

	/* Pull the opcode */
	opcode = instr.format1.opcode;
	switch (opcode) {
	case AIC_OP_JMP:
	case AIC_OP_JC:
	case AIC_OP_JNC:
	case AIC_OP_CALL:
	case AIC_OP_JNE:
	case AIC_OP_JNZ:
	case AIC_OP_JE:
	case AIC_OP_JZ:
	{
		fmt3_ins = &instr.format3;
		fmt3_ins->address = FUNC3(ahd, fmt3_ins->address);
	}
		/* fall through */
	case AIC_OP_OR:
	case AIC_OP_AND:
	case AIC_OP_XOR:
	case AIC_OP_ADD:
	case AIC_OP_ADC:
	case AIC_OP_BMOV:
		if (fmt1_ins->parity != 0) {
			fmt1_ins->immediate = dconsts[fmt1_ins->immediate];
		}
		fmt1_ins->parity = 0;
		/* fall through */
	case AIC_OP_ROL:
	{
		int i, count;

		/* Calculate odd parity for the instruction */
		for (i = 0, count = 0; i < 31; i++) {
			uint32_t mask;

			mask = 0x01 << i;
			if ((instr.integer & mask) != 0)
				count++;
		}
		if ((count & 0x01) == 0)
			instr.format1.parity = 1;

		/* The sequencer is a little endian cpu */
		instr.integer = FUNC0(instr.integer);
		FUNC2(ahd, SEQRAM, instr.bytes, 4);
		break;
	}
	default:
		FUNC4("Unknown opcode encountered in seq program");
		break;
	}
}