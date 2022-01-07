; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_force_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_force_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i64, %struct.regulator_dev* }
%struct.regulator_dev = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

@PM_SUSPEND_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_force_disable(%struct.regulator* %0) #0 {
  %2 = alloca %struct.regulator*, align 8
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ww_acquire_ctx, align 4
  %5 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %2, align 8
  %6 = load %struct.regulator*, %struct.regulator** %2, align 8
  %7 = getelementptr inbounds %struct.regulator, %struct.regulator* %6, i32 0, i32 1
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  store %struct.regulator_dev* %8, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @regulator_lock_dependent(%struct.regulator_dev* %9, %struct.ww_acquire_ctx* %4)
  %11 = load %struct.regulator*, %struct.regulator** %2, align 8
  %12 = getelementptr inbounds %struct.regulator, %struct.regulator* %11, i32 0, i32 1
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %12, align 8
  %14 = call i32 @_regulator_force_disable(%struct.regulator_dev* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %16 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %22 = load i32, i32* @PM_SUSPEND_ON, align 4
  %23 = call i32 @regulator_balance_voltage(%struct.regulator_dev* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.regulator*, %struct.regulator** %2, align 8
  %26 = getelementptr inbounds %struct.regulator, %struct.regulator* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.regulator*, %struct.regulator** %2, align 8
  %31 = getelementptr inbounds %struct.regulator, %struct.regulator* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %33 = call i32 @drms_uA_update(%struct.regulator_dev* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %41 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %46 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @_regulator_disable(i64 %47)
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %51 = call i32 @regulator_unlock_dependent(%struct.regulator_dev* %50, %struct.ww_acquire_ctx* %4)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @regulator_lock_dependent(%struct.regulator_dev*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @_regulator_force_disable(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_balance_voltage(%struct.regulator_dev*, i32) #1

declare dso_local i32 @drms_uA_update(%struct.regulator_dev*) #1

declare dso_local i32 @_regulator_disable(i64) #1

declare dso_local i32 @regulator_unlock_dependent(%struct.regulator_dev*, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
