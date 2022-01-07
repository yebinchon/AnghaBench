; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lpc18xx.c_lpc18xx_rgu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lpc18xx.c_lpc18xx_rgu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.lpc18xx_rgu_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @lpc18xx_rgu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_rgu_reset(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.reset_controller_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpc18xx_rgu_data*, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %7 = call %struct.lpc18xx_rgu_data* @to_rgu_data(%struct.reset_controller_dev* %6)
  store %struct.lpc18xx_rgu_data* %7, %struct.lpc18xx_rgu_data** %5, align 8
  %8 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @lpc18xx_rgu_assert(%struct.reset_controller_dev* %8, i64 %9)
  %11 = load %struct.lpc18xx_rgu_data*, %struct.lpc18xx_rgu_data** %5, align 8
  %12 = getelementptr inbounds %struct.lpc18xx_rgu_data, %struct.lpc18xx_rgu_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @udelay(i32 %13)
  %15 = load i64, i64* %4, align 8
  switch i64 %15, label %20 [
    i64 128, label %16
    i64 129, label %16
  ]

16:                                               ; preds = %2, %2
  %17 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @lpc18xx_rgu_setclear_reset(%struct.reset_controller_dev* %17, i64 %18, i32 0)
  br label %20

20:                                               ; preds = %16, %2
  ret i32 0
}

declare dso_local %struct.lpc18xx_rgu_data* @to_rgu_data(%struct.reset_controller_dev*) #1

declare dso_local i32 @lpc18xx_rgu_assert(%struct.reset_controller_dev*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @lpc18xx_rgu_setclear_reset(%struct.reset_controller_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
