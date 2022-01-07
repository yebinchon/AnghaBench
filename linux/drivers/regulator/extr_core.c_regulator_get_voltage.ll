; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_get_voltage(%struct.regulator* %0) #0 {
  %2 = alloca %struct.regulator*, align 8
  %3 = alloca %struct.ww_acquire_ctx, align 4
  %4 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %2, align 8
  %5 = load %struct.regulator*, %struct.regulator** %2, align 8
  %6 = getelementptr inbounds %struct.regulator, %struct.regulator* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @regulator_lock_dependent(i32 %7, %struct.ww_acquire_ctx* %3)
  %9 = load %struct.regulator*, %struct.regulator** %2, align 8
  %10 = getelementptr inbounds %struct.regulator, %struct.regulator* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regulator_get_voltage_rdev(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.regulator*, %struct.regulator** %2, align 8
  %14 = getelementptr inbounds %struct.regulator, %struct.regulator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regulator_unlock_dependent(i32 %15, %struct.ww_acquire_ctx* %3)
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @regulator_lock_dependent(i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @regulator_get_voltage_rdev(i32) #1

declare dso_local i32 @regulator_unlock_dependent(i32, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
