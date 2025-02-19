; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mv64x60_wdt.c_mv64x60_wdt_handler_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mv64x60_wdt.c_mv64x60_wdt_handler_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MV64x60_WDC_ENABLED_FALSE = common dso_local global i32 0, align 4
@MV64x60_WDC_ENABLE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"watchdog activated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mv64x60_wdt_handler_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64x60_wdt_handler_enable() #0 {
  %1 = load i32, i32* @MV64x60_WDC_ENABLED_FALSE, align 4
  %2 = load i32, i32* @MV64x60_WDC_ENABLE_SHIFT, align 4
  %3 = call i64 @mv64x60_wdt_toggle_wdc(i32 %1, i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 (...) @mv64x60_wdt_service()
  %7 = call i32 @pr_notice(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  ret void
}

declare dso_local i64 @mv64x60_wdt_toggle_wdc(i32, i32) #1

declare dso_local i32 @mv64x60_wdt_service(...) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
