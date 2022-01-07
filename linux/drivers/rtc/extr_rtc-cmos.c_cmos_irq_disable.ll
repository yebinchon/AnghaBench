; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cmos.c_cmos_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmos_rtc = type { i32, i32 (i32)* }

@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_AIE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmos_rtc*, i8)* @cmos_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmos_irq_disable(%struct.cmos_rtc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.cmos_rtc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.cmos_rtc* %0, %struct.cmos_rtc** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* @RTC_CONTROL, align 4
  %7 = call zeroext i8 @CMOS_READ(i32 %6)
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
  %17 = call i32 @CMOS_WRITE(i8 zeroext %15, i32 %16)
  %18 = call i64 (...) @use_hpet_alarm()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8, i8* %4, align 1
  %22 = call i32 @hpet_mask_rtc_irq_bit(i8 zeroext %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @RTC_AIE, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = call i64 (...) @cmos_use_acpi_alarm()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %35 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %34, i32 0, i32 1
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = icmp ne i32 (i32)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %40 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %39, i32 0, i32 1
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %43 = getelementptr inbounds %struct.cmos_rtc, %struct.cmos_rtc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %41(i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  br label %47

47:                                               ; preds = %46, %30, %23
  %48 = load %struct.cmos_rtc*, %struct.cmos_rtc** %3, align 8
  %49 = load i8, i8* %5, align 1
  %50 = call i32 @cmos_checkintr(%struct.cmos_rtc* %48, i8 zeroext %49)
  ret void
}

declare dso_local zeroext i8 @CMOS_READ(i32) #1

declare dso_local i32 @CMOS_WRITE(i8 zeroext, i32) #1

declare dso_local i64 @use_hpet_alarm(...) #1

declare dso_local i32 @hpet_mask_rtc_irq_bit(i8 zeroext) #1

declare dso_local i64 @cmos_use_acpi_alarm(...) #1

declare dso_local i32 @cmos_checkintr(%struct.cmos_rtc*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
