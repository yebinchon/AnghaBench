
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8a66597_pipe_info {scalar_t__ pipenum; int type; int epnum; int buf_bsize; int bufnum; int maxpacket; int interval; int address; scalar_t__ dir_in; } ;
struct r8a66597 {int dummy; } ;


 int ACLRM ;
 int PIPEBUF ;
 int PIPECFG ;
 int PIPEMAXP ;
 int PIPEPERI ;
 int PIPESEL ;
 int R8A66597_BULK ;
 int R8A66597_DBLB ;
 int R8A66597_DIR ;
 int R8A66597_SHTNAK ;
 int get_pipectr_addr (scalar_t__) ;
 int make_devsel (int ) ;
 int r8a66597_bclr (struct r8a66597*,int ,int ) ;
 int r8a66597_bset (struct r8a66597*,int ,int ) ;
 int r8a66597_write (struct r8a66597*,int,int ) ;

__attribute__((used)) static void pipe_buffer_setting(struct r8a66597 *r8a66597,
    struct r8a66597_pipe_info *info)
{
 u16 val = 0;

 if (info->pipenum == 0)
  return;

 r8a66597_bset(r8a66597, ACLRM, get_pipectr_addr(info->pipenum));
 r8a66597_bclr(r8a66597, ACLRM, get_pipectr_addr(info->pipenum));
 r8a66597_write(r8a66597, info->pipenum, PIPESEL);
 if (!info->dir_in)
  val |= R8A66597_DIR;
 if (info->type == R8A66597_BULK && info->dir_in)
  val |= R8A66597_DBLB | R8A66597_SHTNAK;
 val |= info->type | info->epnum;
 r8a66597_write(r8a66597, val, PIPECFG);

 r8a66597_write(r8a66597, (info->buf_bsize << 10) | (info->bufnum),
         PIPEBUF);
 r8a66597_write(r8a66597, make_devsel(info->address) | info->maxpacket,
         PIPEMAXP);
 r8a66597_write(r8a66597, info->interval, PIPEPERI);
}
