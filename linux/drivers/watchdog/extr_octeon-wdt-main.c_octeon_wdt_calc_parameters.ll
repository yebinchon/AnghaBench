; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_calc_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_octeon-wdt-main.c_octeon_wdt_calc_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_timeout_sec = common dso_local global i32 0, align 4
@timeout_sec = common dso_local global i32 0, align 4
@countdown_reset = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@divisor = common dso_local global i32 0, align 4
@timeout_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @octeon_wdt_calc_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_wdt_calc_parameters(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @max_timeout_sec, align 4
  store i32 %4, i32* @timeout_sec, align 4
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @timeout_sec, align 4
  %8 = srem i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i32, i32* @timeout_sec, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @timeout_sec, align 4
  br label %5

13:                                               ; preds = %5
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @timeout_sec, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ugt i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %20, 2
  br label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  store i32 %24, i32* @countdown_reset, align 4
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* @heartbeat, align 4
  %26 = call i32 (...) @octeon_get_io_clock_rate()
  %27 = load i32, i32* @divisor, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32, i32* @timeout_sec, align 4
  %30 = mul nsw i32 %28, %29
  %31 = ashr i32 %30, 8
  store i32 %31, i32* @timeout_cnt, align 4
  ret void
}

declare dso_local i32 @octeon_get_io_clock_rate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
