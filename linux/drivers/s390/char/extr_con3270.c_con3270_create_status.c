
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cols; int rows; int ascebc; int dev; } ;
struct con3270 {TYPE_2__* status; TYPE_1__ view; int freemem; } ;
typedef int blueprint ;
struct TYPE_4__ {scalar_t__ string; } ;
 TYPE_2__* alloc_string (int *,int) ;
 int codepage_convert (int ,scalar_t__,int) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int raw3270_buffer_address (int ,scalar_t__,int) ;

__attribute__((used)) static void
con3270_create_status(struct con3270 *cp)
{
 static const unsigned char blueprint[] =
  { 129, 0, 0, 128,132,130,133, 134,
    'c','o','n','s','o','l','e',' ','v','i','e','w',
    131,0,0,0,'R','u','n','n','i','n','g',128,132 };

 cp->status = alloc_string(&cp->freemem, sizeof(blueprint));

 memcpy(cp->status->string, blueprint, sizeof(blueprint));

 raw3270_buffer_address(cp->view.dev, cp->status->string + 1,
          cp->view.cols * (cp->view.rows - 1));
 raw3270_buffer_address(cp->view.dev, cp->status->string + 21,
          cp->view.cols * cp->view.rows - 8);

 codepage_convert(cp->view.ascebc, cp->status->string + 8, 12);
 codepage_convert(cp->view.ascebc, cp->status->string + 24, 7);
}
