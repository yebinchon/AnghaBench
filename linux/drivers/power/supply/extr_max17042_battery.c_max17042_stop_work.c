
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max17042_chip {int work; } ;


 int cancel_work_sync (int *) ;

__attribute__((used)) static void max17042_stop_work(void *data)
{
 struct max17042_chip *chip = data;

 cancel_work_sync(&chip->work);
}
