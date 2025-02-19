; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt.c_wdt_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt.c_wdt_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_lock = common dso_local global i32 0, align 4
@WDT_RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdt_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_get_temperature() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @wdt_lock, i64 %3)
  %5 = load i32, i32* @WDT_RT, align 4
  %6 = call zeroext i16 @inb_p(i32 %5)
  store i16 %6, i16* %1, align 2
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @spin_unlock_irqrestore(i32* @wdt_lock, i64 %7)
  %9 = load i16, i16* %1, align 2
  %10 = zext i16 %9 to i32
  %11 = mul nsw i32 %10, 11
  %12 = sdiv i32 %11, 15
  %13 = add nsw i32 %12, 7
  ret i32 %13
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @inb_p(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
