#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  TupleDataLen; int /*<<< orphan*/  TupleData; } ;
typedef  TYPE_1__ tuple_t ;
struct pcmcia_loop_get {scalar_t__* buf; int /*<<< orphan*/  len; } ;
struct pcmcia_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device *p_dev, tuple_t *tuple,
			       void *priv)
{
	struct pcmcia_loop_get *get = priv;

	*get->buf = FUNC1(tuple->TupleDataLen, GFP_KERNEL);
	if (*get->buf) {
		get->len = tuple->TupleDataLen;
		FUNC2(*get->buf, tuple->TupleData, tuple->TupleDataLen);
	} else
		FUNC0(&p_dev->dev, "do_get_tuple: out of memory\n");
	return 0;
}