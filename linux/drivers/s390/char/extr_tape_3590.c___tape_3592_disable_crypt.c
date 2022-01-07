
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_request {char* cpdata; scalar_t__ cpaddr; int op; } ;
struct tape_device {int dummy; } ;


 int DBF_EVENT (int,char*) ;
 int ENOSYS ;
 struct tape_request* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int MODE_SET_CB ;
 int TO_CRYPT_OFF ;
 int crypt_supported (struct tape_device*) ;
 int memset (char*,int ,int) ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_cc (scalar_t__,int ,int,char*) ;
 int tape_ccw_end (scalar_t__,int ,int,char*) ;

__attribute__((used)) static struct tape_request *__tape_3592_disable_crypt(struct tape_device *device)
{
 struct tape_request *request;
 char *data;

 DBF_EVENT(6, "tape_3592_disable_crypt\n");
 if (!crypt_supported(device))
  return ERR_PTR(-ENOSYS);
 request = tape_alloc_request(2, 72);
 if (IS_ERR(request))
  return request;
 data = request->cpdata;
 memset(data,0,72);

 data[0] = 0x05;
 data[36 + 0] = 0x03;
 data[36 + 1] = 0x03;
 data[36 + 35] = 0x32;

 request->op = TO_CRYPT_OFF;
 tape_ccw_cc(request->cpaddr, MODE_SET_CB, 36, data);
 tape_ccw_end(request->cpaddr + 1, MODE_SET_CB, 36, data + 36);

 return request;
}
