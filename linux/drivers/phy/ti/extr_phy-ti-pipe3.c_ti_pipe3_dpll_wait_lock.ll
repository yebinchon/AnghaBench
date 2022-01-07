; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_dpll_wait_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_dpll_wait_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pipe3 = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@PLL_LOCK_TIME = common dso_local global i32 0, align 4
@PLL_STATUS = common dso_local global i32 0, align 4
@PLL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DPLL failed to lock\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_pipe3*)* @ti_pipe3_dpll_wait_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_dpll_wait_lock(%struct.ti_pipe3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_pipe3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i32, i32* @PLL_LOCK_TIME, align 4
  %8 = call i64 @msecs_to_jiffies(i32 %7)
  %9 = add i64 %6, %8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = call i32 (...) @cpu_relax()
  %12 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %13 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PLL_STATUS, align 4
  %16 = call i32 @ti_pipe3_readl(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PLL_LOCK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %36

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @time_after(i64 %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %10, label %29

29:                                               ; preds = %23
  %30 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %31 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @ti_pipe3_readl(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
