; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc146818-lib.c_mc146818_is_updating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mc146818-lib.c_mc146818_is_updating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtc_lock = common dso_local global i32 0, align 4
@RTC_FREQ_SELECT = common dso_local global i32 0, align 4
@RTC_UIP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @mc146818_is_updating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mc146818_is_updating() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %3)
  %5 = load i32, i32* @RTC_FREQ_SELECT, align 4
  %6 = call zeroext i8 @CMOS_READ(i32 %5)
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @RTC_UIP, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %7, %9
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %1, align 1
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %12)
  %14 = load i8, i8* %1, align 1
  ret i8 %14
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @CMOS_READ(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
