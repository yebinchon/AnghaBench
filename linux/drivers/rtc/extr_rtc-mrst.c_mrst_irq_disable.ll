; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_mrst_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_mrst_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrst_rtc = type { i32 }

@RTC_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrst_rtc*, i8)* @mrst_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrst_irq_disable(%struct.mrst_rtc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.mrst_rtc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.mrst_rtc* %0, %struct.mrst_rtc** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* @RTC_CONTROL, align 4
  %7 = call zeroext i8 @vrtc_cmos_read(i32 %6)
  store i8 %7, i8* %5, align 1
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = xor i32 %9, -1
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, %10
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %5, align 1
  %15 = load i8, i8* %5, align 1
  %16 = load i32, i32* @RTC_CONTROL, align 4
  %17 = call i32 @vrtc_cmos_write(i8 zeroext %15, i32 %16)
  %18 = load %struct.mrst_rtc*, %struct.mrst_rtc** %3, align 8
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @mrst_checkintr(%struct.mrst_rtc* %18, i8 zeroext %19)
  ret void
}

declare dso_local zeroext i8 @vrtc_cmos_read(i32) #1

declare dso_local i32 @vrtc_cmos_write(i8 zeroext, i32) #1

declare dso_local i32 @mrst_checkintr(%struct.mrst_rtc*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
