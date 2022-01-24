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
struct smbd_response {int dummy; } ;
struct smbd_connection {int /*<<< orphan*/  response_mempool; } ;

/* Variables and functions */
 struct smbd_response* FUNC0 (struct smbd_connection*) ; 
 struct smbd_response* FUNC1 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct smbd_response*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct smbd_connection *info)
{
	struct smbd_response *response;

	while ((response = FUNC1(info)))
		FUNC2(response, info->response_mempool);

	while ((response = FUNC0(info)))
		FUNC2(response, info->response_mempool);
}