; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_scx200_wdt.c_scx200_wdt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_scx200_wdt.c_scx200_wdt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"disabling watchdog timer\0A\00", align 1
@scx_lock = common dso_local global i32 0, align 4
@scx200_cb_base = common dso_local global i64 0, align 8
@SCx200_WDT_WDTO = common dso_local global i64 0, align 8
@SCx200_WDT_WDSTS_WDOVF = common dso_local global i32 0, align 4
@SCx200_WDT_WDSTS = common dso_local global i64 0, align 8
@W_DISABLE = common dso_local global i32 0, align 4
@SCx200_WDT_WDCNFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scx200_wdt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scx200_wdt_disable() #0 {
  %1 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @spin_lock(i32* @scx_lock)
  %3 = load i64, i64* @scx200_cb_base, align 8
  %4 = load i64, i64* @SCx200_WDT_WDTO, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @outw(i32 0, i64 %5)
  %7 = load i32, i32* @SCx200_WDT_WDSTS_WDOVF, align 4
  %8 = load i64, i64* @scx200_cb_base, align 8
  %9 = load i64, i64* @SCx200_WDT_WDSTS, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outb(i32 %7, i64 %10)
  %12 = load i32, i32* @W_DISABLE, align 4
  %13 = load i64, i64* @scx200_cb_base, align 8
  %14 = load i64, i64* @SCx200_WDT_WDCNFG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outw(i32 %12, i64 %15)
  %17 = call i32 @spin_unlock(i32* @scx_lock)
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
