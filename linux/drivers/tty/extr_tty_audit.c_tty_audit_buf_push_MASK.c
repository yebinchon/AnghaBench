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
struct tty_audit_buf {scalar_t__ valid; int /*<<< orphan*/  data; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AUDIT_OFF ; 
 scalar_t__ audit_enabled ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct tty_audit_buf *buf)
{
	if (buf->valid == 0)
		return;
	if (audit_enabled == AUDIT_OFF) {
		buf->valid = 0;
		return;
	}
	FUNC0("tty", buf->dev, buf->data, buf->valid);
	buf->valid = 0;
}