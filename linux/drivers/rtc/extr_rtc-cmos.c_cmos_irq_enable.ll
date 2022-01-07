; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmos_rtc = type { i32, i32 (i32)* }

@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_AIE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmos_rtc*, i8)* @cmos_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmos_irq_enable(%struct.cmos_rtc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.cmos_rtc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.cmos_rtc* %0, %struct.cmos_rtc** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* @RTC_CONTROL, align 4
  %7 = call zeroext i8 @CMOS_READ(i32 %6)
  store i8 %7, i8* %5, align 1
  %8 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %9 = load i8, i8* %5, align 1
  %10 = call i32 @cmos_checkintr(%struct.cmos_rtc* %8, i8 zeroext %9)
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %14, %12
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %5, align 1
  %17 = load i8, i8* %5, align 1
  %18 = load i32, i32* @RTC_CONTROL, align 4
  %19 = call i32 @CMOS_WRITE(i8 zeroext %17, i32 %18)
  %20 = call i64 (...) @use_hpet_alarm()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8, i8* %4, align 1
  %24 = call i32 @hpet_set_rtc_irq_bit(i8 zeroext %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @RTC_AIE, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = call i64 (...) @cmos_use_acpi_alarm()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %37 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %36, i32 0, i32 1
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = icmp ne i32 (i32)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %42 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %41, i32 0, i32 1
  %43 = load i32 (i32)*, i32 (i32)** %42, align 8
  %44 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %45 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %43(i32 %46)
  br label %48

48:                                               ; preds = %40, %35
  br label %49

49:                                               ; preds = %48, %32, %25
  %50 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %51 = load i8, i8* %5, align 1
  %52 = call i32 @cmos_checkintr(%struct.cmos_rtc* %50, i8 zeroext %51)
  ret void
}

declare dso_local zeroext i8 @CMOS_READ(i32) #1

declare dso_local i32 @cmos_checkintr(%struct.cmos_rtc*, i8 zeroext) #1

declare dso_local i32 @CMOS_WRITE(i8 zeroext, i32) #1

declare dso_local i64 @use_hpet_alarm(...) #1

declare dso_local i32 @hpet_set_rtc_irq_bit(i8 zeroext) #1

declare dso_local i64 @cmos_use_acpi_alarm(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
