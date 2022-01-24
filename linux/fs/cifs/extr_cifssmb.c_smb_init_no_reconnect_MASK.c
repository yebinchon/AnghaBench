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
struct cifs_tcon {scalar_t__ need_reconnect; TYPE_1__* ses; } ;
struct TYPE_2__ {scalar_t__ need_reconnect; } ;

/* Variables and functions */
 int EHOSTDOWN ; 
 int FUNC0 (int,int,struct cifs_tcon*,void**,void**) ; 

__attribute__((used)) static int
FUNC1(int smb_command, int wct, struct cifs_tcon *tcon,
			void **request_buf, void **response_buf)
{
	if (tcon->ses->need_reconnect || tcon->need_reconnect)
		return -EHOSTDOWN;

	return FUNC0(smb_command, wct, tcon, request_buf, response_buf);
}