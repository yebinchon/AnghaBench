
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int symbol_t ;
typedef int stored_ptr ;
struct TYPE_8__ {scalar_t__ (* seq ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;int (* close ) (TYPE_2__*) ;} ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ DBT ;


 int R_FIRST ;
 int memcpy (int **,int ,int) ;
 scalar_t__ stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ) ;
 int stub2 (TYPE_2__*) ;
 int symbol_delete (int *) ;
 TYPE_2__* symtable ;

void
symtable_close()
{
 if (symtable != ((void*)0)) {
  DBT key;
  DBT data;

  while (symtable->seq(symtable, &key, &data, R_FIRST) == 0) {
   symbol_t *stored_ptr;

   memcpy(&stored_ptr, data.data, sizeof(stored_ptr));
   symbol_delete(stored_ptr);
  }
  symtable->close(symtable);
 }
}
