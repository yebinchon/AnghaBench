; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_mrst_checkintr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_mrst_checkintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrst_rtc = type { i32 }

@RTC_INTR_FLAGS = common dso_local global i32 0, align 4
@RTC_IRQMASK = common dso_local global i8 0, align 1
@RTC_IRQF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrst_rtc*, i8)* @mrst_checkintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrst_checkintr(%struct.mrst_rtc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.mrst_rtc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.mrst_rtc* %0, %struct.mrst_rtc** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* @RTC_INTR_FLAGS, align 4
  %7 = call zeroext i8 @vrtc_cmos_read(i32 %6)
  store i8 %7, i8* %5, align 1
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @RTC_IRQMASK, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = load i8, i8* @RTC_IRQF, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %12, %14
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, %15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  %20 = load i8, i8* %5, align 1
  %21 = call i64 @is_intr(i8 zeroext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.mrst_rtc*, %struct.mrst_rtc** %3, align 8
  %25 = getelementptr inbounds %struct.mrst_rtc, %struct.mrst_rtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8, i8* %5, align 1
  %28 = call i32 @rtc_update_irq(i32 %26, i32 1, i8 zeroext %27)
  br label %29

29:                                               ; preds = %23, %2
  ret void
}

declare dso_local zeroext i8 @vrtc_cmos_read(i32) #1

declare dso_local i64 @is_intr(i8 zeroext) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
