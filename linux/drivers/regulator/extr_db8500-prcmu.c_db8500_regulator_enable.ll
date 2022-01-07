; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_db8500-prcmu.c_db8500_regulator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_db8500-prcmu.c_db8500_regulator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.dbx500_regulator_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"regulator-%s-enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @db8500_regulator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db8500_regulator_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.dbx500_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %6 = call %struct.dbx500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.dbx500_regulator_info* %6, %struct.dbx500_regulator_info** %4, align 8
  %7 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %8 = icmp eq %struct.dbx500_regulator_info* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = call i32 @rdev_get_dev(%struct.regulator_dev* %13)
  %15 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %16 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_vdbg(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %21 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %12
  %25 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %26 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.dbx500_regulator_info*, %struct.dbx500_regulator_info** %4, align 8
  %28 = getelementptr inbounds %struct.dbx500_regulator_info, %struct.dbx500_regulator_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = call i32 (...) @power_state_active_enable()
  br label %33

33:                                               ; preds = %31, %24
  br label %34

34:                                               ; preds = %33, %12
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.dbx500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @power_state_active_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
