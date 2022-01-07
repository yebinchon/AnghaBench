; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_disable(%struct.regulator* %0) #0 {
  %2 = alloca %struct.regulator*, align 8
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ww_acquire_ctx, align 4
  %5 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %2, align 8
  %6 = load %struct.regulator*, %struct.regulator** %2, align 8
  %7 = getelementptr inbounds %struct.regulator, %struct.regulator* %6, i32 0, i32 0
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  store %struct.regulator_dev* %8, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @regulator_lock_dependent(%struct.regulator_dev* %9, %struct.ww_acquire_ctx* %4)
  %11 = load %struct.regulator*, %struct.regulator** %2, align 8
  %12 = call i32 @_regulator_disable(%struct.regulator* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %14 = call i32 @regulator_unlock_dependent(%struct.regulator_dev* %13, %struct.ww_acquire_ctx* %4)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @regulator_lock_dependent(%struct.regulator_dev*, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @_regulator_disable(%struct.regulator*) #1

declare dso_local i32 @regulator_unlock_dependent(%struct.regulator_dev*, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
