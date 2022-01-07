; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8660.c_max8660_dcdc_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8660.c_max8660_dcdc_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.max8660 = type { i32 }

@MAX8660_V3 = common dso_local global i64 0, align 8
@MAX8660_ADTV2 = common dso_local global i32 0, align 4
@MAX8660_SDTV2 = common dso_local global i32 0, align 4
@MAX8660_VCC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8660_dcdc_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8660_dcdc_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8660*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.max8660* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.max8660* %11, %struct.max8660** %6, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call i64 @rdev_get_id(%struct.regulator_dev* %12)
  %14 = load i64, i64* @MAX8660_V3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MAX8660_ADTV2, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX8660_SDTV2, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  %22 = load %struct.max8660*, %struct.max8660** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @max8660_write(%struct.max8660* %22, i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %32 = call i64 @rdev_get_id(%struct.regulator_dev* %31)
  %33 = load i64, i64* @MAX8660_V3, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 3, i32 48
  store i32 %36, i32* %8, align 4
  %37 = load %struct.max8660*, %struct.max8660** %6, align 8
  %38 = load i32, i32* @MAX8660_VCC1, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @max8660_write(%struct.max8660* %37, i32 %38, i32 255, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %30, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
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
