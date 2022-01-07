; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8660.c_max8660_ldo67_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8660.c_max8660_ldo67_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8660 = type { i32 }

@MAX8660_V6 = common dso_local global i64 0, align 8
@MAX8660_L12VCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8660_ldo67_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8660_ldo67_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8660*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = call %struct.max8660* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.max8660* %8, %struct.max8660** %6, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call i64 @rdev_get_id(%struct.regulator_dev* %9)
  %11 = load i64, i64* @MAX8660_V6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.max8660*, %struct.max8660** %6, align 8
  %15 = load i32, i32* @MAX8660_L12VCR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @max8660_write(%struct.max8660* %14, i32 %15, i32 240, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.max8660*, %struct.max8660** %6, align 8
  %20 = load i32, i32* @MAX8660_L12VCR, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 4
  %23 = call i32 @max8660_write(%struct.max8660* %19, i32 %20, i32 15, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.max8660* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max8660_write(%struct.max8660*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
