
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdp_header {scalar_t__ type; } ;
struct tb_xdp_error_response {int error; } ;


 int EAGAIN ;
 int EIO ;
 int ENOTSUPP ;


 scalar_t__ ERROR_RESPONSE ;



__attribute__((used)) static int tb_xdp_handle_error(const struct tb_xdp_header *hdr)
{
 const struct tb_xdp_error_response *error;

 if (hdr->type != ERROR_RESPONSE)
  return 0;

 error = (const struct tb_xdp_error_response *)hdr;

 switch (error->error) {
 case 128:
 case 129:
  return -EIO;
 case 130:
  return -ENOTSUPP;
 case 131:
  return -EAGAIN;
 default:
  break;
 }

 return 0;
}
