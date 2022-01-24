#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cols; int rows; int /*<<< orphan*/  dev; } ;
struct tty3270 {int inattr; TYPE_1__ view; int /*<<< orphan*/  freemem; void* input; struct string* prompt; } ;
struct string {int len; scalar_t__ string; } ;
typedef  int /*<<< orphan*/  blueprint ;

/* Variables and functions */
#define  TF_INPUT 132 
#define  TO_IC 131 
#define  TO_RA 130 
#define  TO_SBA 129 
#define  TO_SF 128 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct tty3270 *tp)
{
	static const unsigned char blueprint[] =
		{ TO_SBA, 0, 0, 0x6e, TO_SF, TF_INPUT,
		  /* empty input string */
		  TO_IC, TO_RA, 0, 0, 0 };
	struct string *line;
	unsigned int offset;

	line = FUNC0(&tp->freemem,
			    sizeof(blueprint) + tp->view.cols * 2 - 9);
	tp->prompt = line;
	tp->inattr = TF_INPUT;
	/* Copy blueprint to status line */
	FUNC1(line->string, blueprint, sizeof(blueprint));
	line->len = sizeof(blueprint);
	/* Set output offsets. */
	offset = tp->view.cols * (tp->view.rows - 2);
	FUNC2(tp->view.dev, line->string + 1, offset);
	offset = tp->view.cols * tp->view.rows - 9;
	FUNC2(tp->view.dev, line->string + 8, offset);

	/* Allocate input string for reading. */
	tp->input = FUNC0(&tp->freemem, tp->view.cols * 2 - 9 + 6);
}