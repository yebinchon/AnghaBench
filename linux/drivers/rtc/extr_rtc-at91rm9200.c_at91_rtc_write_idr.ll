; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91rm9200.c_at91_rtc_write_idr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-at91rm9200.c_at91_rtc_write_idr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@at91_rtc_lock = common dso_local global i32 0, align 4
@AT91_RTC_IDR = common dso_local global i32 0, align 4
@AT91_RTC_SR = common dso_local global i32 0, align 4
@at91_rtc_shadow_imr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @at91_rtc_write_idr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_rtc_write_idr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @at91_rtc_lock, i64 %4)
  %6 = load i32, i32* @AT91_RTC_IDR, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @at91_rtc_write(i32 %6, i32 %7)
  %9 = load i32, i32* @AT91_RTC_SR, align 4
  %10 = call i32 @at91_rtc_read(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @at91_rtc_shadow_imr, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* @at91_rtc_shadow_imr, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @at91_rtc_lock, i64 %15)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @at91_rtc_write(i32, i32) #1

declare dso_local i32 @at91_rtc_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
