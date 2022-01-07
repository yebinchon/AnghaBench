
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_frame_header {int fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int ct_cmd; } ;
 scalar_t__ IS_ERR (struct fc_frame*) ;
 int PTR_ERR (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 struct fc_ct_hdr* fc_frame_payload_get (struct fc_frame*,int) ;
 int fc_frame_payload_op (struct fc_frame*) ;
 int ntohs (int ) ;

const char *fc_els_resp_type(struct fc_frame *fp)
{
 const char *msg;
 struct fc_frame_header *fh;
 struct fc_ct_hdr *ct;

 if (IS_ERR(fp)) {
  switch (-PTR_ERR(fp)) {
  case 130:
   msg = "response no error";
   break;
  case 133:
   msg = "response timeout";
   break;
  case 134:
   msg = "response closed";
   break;
  default:
   msg = "response unknown error";
   break;
  }
 } else {
  fh = fc_frame_header_get(fp);
  switch (fh->fh_type) {
  case 128:
   switch (fc_frame_payload_op(fp)) {
   case 136:
    msg = "accept";
    break;
   case 135:
    msg = "reject";
    break;
   default:
    msg = "response unknown ELS";
    break;
   }
   break;
  case 129:
   ct = fc_frame_payload_get(fp, sizeof(*ct));
   if (ct) {
    switch (ntohs(ct->ct_cmd)) {
    case 132:
     msg = "CT accept";
     break;
    case 131:
     msg = "CT reject";
     break;
    default:
     msg = "response unknown CT";
     break;
    }
   } else {
    msg = "short CT response";
   }
   break;
  default:
   msg = "response not ELS or CT";
   break;
  }
 }
 return msg;
}
