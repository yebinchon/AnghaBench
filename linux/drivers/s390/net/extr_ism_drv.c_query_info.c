
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int cmd; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union ism_qi {int response; TYPE_2__ request; } ;
struct ism_dev {int dummy; } ;
typedef int cmd ;


 int ISM_QUERY_INFO ;
 int debug_event (int ,int,int *,int) ;
 int debug_text_event (int ,int,char*) ;
 scalar_t__ ism_cmd (struct ism_dev*,union ism_qi*) ;
 int ism_debug_info ;
 int memset (union ism_qi*,int ,int) ;

__attribute__((used)) static int query_info(struct ism_dev *ism)
{
 union ism_qi cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.request.hdr.cmd = ISM_QUERY_INFO;
 cmd.request.hdr.len = sizeof(cmd.request);

 if (ism_cmd(ism, &cmd))
  goto out;

 debug_text_event(ism_debug_info, 3, "query info");
 debug_event(ism_debug_info, 3, &cmd.response, sizeof(cmd.response));
out:
 return 0;
}
