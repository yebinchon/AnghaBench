; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_set_suspend_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c__regulator_set_suspend_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }
%struct.regulator_state = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"The suspend voltage can't be changed!\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator*, i32, i32, i32)* @_regulator_set_suspend_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_regulator_set_suspend_voltage(%struct.regulator* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.regulator_dev*, align 8
  %11 = alloca %struct.regulator_state*, align 8
  store %struct.regulator* %0, %struct.regulator** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.regulator*, %struct.regulator** %6, align 8
  %13 = getelementptr inbounds %struct.regulator, %struct.regulator* %12, i32 0, i32 0
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %13, align 8
  store %struct.regulator_dev* %14, %struct.regulator_dev** %10, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.regulator_state* @regulator_get_suspend_state(%struct.regulator_dev* %15, i32 %16)
  store %struct.regulator_state* %17, %struct.regulator_state** %11, align 8
  %18 = load %struct.regulator_state*, %struct.regulator_state** %11, align 8
  %19 = icmp eq %struct.regulator_state* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %42

23:                                               ; preds = %4
  %24 = load %struct.regulator_state*, %struct.regulator_state** %11, align 8
  %25 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.regulator_state*, %struct.regulator_state** %11, align 8
  %28 = getelementptr inbounds %struct.regulator_state, %struct.regulator_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  %33 = call i32 @rdev_err(%struct.regulator_dev* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %42

36:                                               ; preds = %23
  %37 = load %struct.regulator*, %struct.regulator** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @regulator_set_voltage_unlocked(%struct.regulator* %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %31, %20
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.regulator_state* @regulator_get_suspend_state(%struct.regulator_dev*, i32) #1

declare dso_local i32 @rdev_err(%struct.regulator_dev*, i8*) #1

declare dso_local i32 @regulator_set_voltage_unlocked(%struct.regulator*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
