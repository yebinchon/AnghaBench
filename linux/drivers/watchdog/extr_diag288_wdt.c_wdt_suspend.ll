; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_diag288_wdt.c_wdt_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_diag288_wdt.c_wdt_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIAG_WDOG_BUSY = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Linux cannot be suspended while the watchdog is in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdt_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DIAG_WDOG_BUSY, align 4
  %3 = call i64 @test_and_set_bit(i32 %2, i32* @wdt_status)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  %9 = call i32 @notifier_from_errno(i32 %8)
  store i32 %9, i32* %1, align 4
  br label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @notifier_from_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
