
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max77802_regulator_prv {int * opmode; } ;


 int max77802_map_mode (int ) ;
 struct max77802_regulator_prv* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static unsigned max77802_get_mode(struct regulator_dev *rdev)
{
 struct max77802_regulator_prv *max77802 = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);

 return max77802_map_mode(max77802->opmode[id]);
}
