; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500-ext.c_ab8500_ext_regulator_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_ext_regulator_info = type { i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @ab8500_ext_regulator_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_ext_regulator_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ab8500_ext_regulator_info*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.ab8500_ext_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.ab8500_ext_regulator_info* %7, %struct.ab8500_ext_regulator_info** %4, align 8
  %8 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %4, align 8
  %9 = icmp eq %struct.ab8500_ext_regulator_info* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_dev(%struct.regulator_dev* %11)
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %4, align 8
  %18 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %4, align 8
  %21 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %25, i32* %5, align 4
  br label %40

26:                                               ; preds = %16
  %27 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %4, align 8
  %28 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ab8500_ext_regulator_info*, %struct.ab8500_ext_regulator_info** %4, align 8
  %31 = getelementptr inbounds %struct.ab8500_ext_regulator_info, %struct.ab8500_ext_regulator_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %34
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.ab8500_ext_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
