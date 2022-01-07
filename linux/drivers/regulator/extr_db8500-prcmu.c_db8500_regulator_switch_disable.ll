; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_db8500-prcmu.c_db8500_regulator_switch_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_db8500-prcmu.c_db8500_regulator_switch_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.dbx500_regulator_info = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"regulator-switch-%s-disable\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"regulator_switch-%s-disable: prcmu call failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @db8500_regulator_switch_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db8500_regulator_switch_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.dbx500_regulator_info*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.dbx500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.dbx500_regulator_info* %7, %struct.dbx500_regulator_info** %4, align 8
  %8 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %9 = icmp eq %struct.dbx500_regulator_info* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %15 = call i32 @rdev_get_dev(%struct.regulator_dev* %14)
  %16 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %17 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_vdbg(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %22 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %25 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @disable_epod(i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %13
  %31 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %32 = call i32 @rdev_get_dev(%struct.regulator_dev* %31)
  %33 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %34 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %13
  %39 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %40 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.dbx500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @disable_epod(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
