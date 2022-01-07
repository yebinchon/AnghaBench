; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_suspend_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_suspend_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9055_regulator = type { i64, i32, %struct.da9055_regulator_info* }
%struct.da9055_regulator_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NO_GPIO = common dso_local global i64 0, align 8
@DA9055_SEL_REG_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da9055_suspend_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_suspend_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da9055_regulator*, align 8
  %5 = alloca %struct.da9055_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.da9055_regulator* %7, %struct.da9055_regulator** %4, align 8
  %8 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %9 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %8, i32 0, i32 2
  %10 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %9, align 8
  store %struct.da9055_regulator_info* %10, %struct.da9055_regulator_info** %5, align 8
  %11 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %12 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NO_GPIO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %18 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %5, align 8
  %21 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %5, align 8
  %25 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DA9055_SEL_REG_B, align 4
  %29 = call i32 @da9055_reg_update(i32 %19, i32 %23, i32 %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @da9055_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
