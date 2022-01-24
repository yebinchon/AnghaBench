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
typedef  int /*<<< orphan*/  u16 ;
struct virtio_input_event {int /*<<< orphan*/  value; void* code; void* type; } ;
struct virtio_input {int /*<<< orphan*/  lock; int /*<<< orphan*/  sts; scalar_t__ ready; } ;
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_input_event*) ; 
 struct virtio_input_event* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,struct virtio_input_event*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct scatterlist*,int,struct virtio_input_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct virtio_input *vi,
				 u16 type, u16 code, s32 value)
{
	struct virtio_input_event *stsbuf;
	struct scatterlist sg[1];
	unsigned long flags;
	int rc;

	stsbuf = FUNC3(sizeof(*stsbuf), GFP_ATOMIC);
	if (!stsbuf)
		return -ENOMEM;

	stsbuf->type  = FUNC0(type);
	stsbuf->code  = FUNC0(code);
	stsbuf->value = FUNC1(value);
	FUNC4(sg, stsbuf, sizeof(*stsbuf));

	FUNC5(&vi->lock, flags);
	if (vi->ready) {
		rc = FUNC7(vi->sts, sg, 1, stsbuf, GFP_ATOMIC);
		FUNC8(vi->sts);
	} else {
		rc = -ENODEV;
	}
	FUNC6(&vi->lock, flags);

	if (rc != 0)
		FUNC2(stsbuf);
	return rc;
}