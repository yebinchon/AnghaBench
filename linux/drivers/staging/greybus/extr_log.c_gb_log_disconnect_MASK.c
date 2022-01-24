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
struct gb_log {struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 struct gb_log* FUNC2 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_log*) ; 

__attribute__((used)) static void FUNC4(struct gb_bundle *bundle)
{
	struct gb_log *log = FUNC2(bundle);
	struct gb_connection *connection = log->connection;

	FUNC1(connection);
	FUNC0(connection);

	FUNC3(log);
}