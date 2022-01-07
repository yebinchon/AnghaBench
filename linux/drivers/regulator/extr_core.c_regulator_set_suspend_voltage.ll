; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_suspend_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_suspend_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

@PM_SUSPEND_ON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_set_suspend_voltage(%struct.regulator* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ww_acquire_ctx, align 4
  %11 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i64 @regulator_check_states(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @PM_SUSPEND_ON, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %37

22:                                               ; preds = %15
  %23 = load %struct.regulator*, %struct.regulator** %6, align 8
  %24 = getelementptr inbounds %struct.regulator, %struct.regulator* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regulator_lock_dependent(i32 %25, %struct.ww_acquire_ctx* %10)
  %27 = load %struct.regulator*, %struct.regulator** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @_regulator_set_suspend_voltage(%struct.regulator* %27, i32 %28, i32 %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.regulator*, %struct.regulator** %6, align 8
  %33 = getelementptr inbounds %struct.regulator, %struct.regulator* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regulator_unlock_dependent(i32 %34, %struct.ww_acquire_ctx* %10)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @regulator_check_states(i64) #1

declare dso_local i32 @regulator_lock_dependent(i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @_regulator_set_suspend_voltage(%struct.regulator*, i32, i32, i64) #1

declare dso_local i32 @regulator_unlock_dependent(i32, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
