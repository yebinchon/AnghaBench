
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {struct TCP_Server_Info* callback_data; } ;
struct cifs_credits {int value; int instance; } ;
struct TCP_Server_Info {int dummy; } ;


 int CIFS_ECHO_OP ;
 int DeleteMidQEntry (struct mid_q_entry*) ;
 int add_credits (struct TCP_Server_Info*,struct cifs_credits*,int ) ;

__attribute__((used)) static void
cifs_echo_callback(struct mid_q_entry *mid)
{
 struct TCP_Server_Info *server = mid->callback_data;
 struct cifs_credits credits = { .value = 1, .instance = 0 };

 DeleteMidQEntry(mid);
 add_credits(server, &credits, CIFS_ECHO_OP);
}
