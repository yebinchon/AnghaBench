; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_iop_wdt.c_wdt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_iop_wdt.c_wdt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_lock = common dso_local global i32 0, align 4
@IOP_WDTCR_DIS_ARM = common dso_local global i32 0, align 4
@IOP_WDTCR_DIS = common dso_local global i32 0, align 4
@WDT_ENABLED = common dso_local global i32 0, align 4
@wdt_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_disable() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @wdt_supports_disable()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = call i32 @spin_lock(i32* @wdt_lock)
  %6 = load i32, i32* @IOP_WDTCR_DIS_ARM, align 4
  %7 = call i32 @write_wdtcr(i32 %6)
  %8 = load i32, i32* @IOP_WDTCR_DIS, align 4
  %9 = call i32 @write_wdtcr(i32 %8)
  %10 = load i32, i32* @WDT_ENABLED, align 4
  %11 = call i32 @clear_bit(i32 %10, i32* @wdt_status)
  %12 = call i32 @spin_unlock(i32* @wdt_lock)
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

14:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i64 @wdt_supports_disable(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @write_wdtcr(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
