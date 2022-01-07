
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ism_resp_hdr {int ret; int len; } ;
struct ism_req_hdr {int len; } ;
struct ism_dev {int dummy; } ;


 int ISM_ERROR ;
 int WRITE_ONCE (int,int ) ;
 int __ism_read_cmd (struct ism_dev*,struct ism_resp_hdr*,int,int) ;
 int __ism_write_cmd (struct ism_dev*,struct ism_req_hdr*,int,int) ;
 int debug_event (int ,int ,struct ism_resp_hdr*,int) ;
 int debug_text_event (int ,int ,char*) ;
 int ism_debug_info ;

__attribute__((used)) static int ism_cmd(struct ism_dev *ism, void *cmd)
{
 struct ism_req_hdr *req = cmd;
 struct ism_resp_hdr *resp = cmd;

 __ism_write_cmd(ism, req + 1, sizeof(*req), req->len - sizeof(*req));
 __ism_write_cmd(ism, req, 0, sizeof(*req));

 WRITE_ONCE(resp->ret, ISM_ERROR);

 __ism_read_cmd(ism, resp, 0, sizeof(*resp));
 if (resp->ret) {
  debug_text_event(ism_debug_info, 0, "cmd failure");
  debug_event(ism_debug_info, 0, resp, sizeof(*resp));
  goto out;
 }
 __ism_read_cmd(ism, resp + 1, sizeof(*resp), resp->len - sizeof(*resp));
out:
 return resp->ret;
}
