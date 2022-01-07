; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt977.c_wdt977_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt977.c_wdt977_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@timeoutM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wdt977_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt977_set_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 59
  %7 = sdiv i32 %6, 60
  store i32 %7, i32* %4, align 4
  %8 = call i64 (...) @machine_is_netwinder()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 255
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* @timeout, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* @timeoutM, align 4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @machine_is_netwinder(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
