; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson.c_meson_rtc_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson.c_meson_rtc_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_rtc = type { i32 }

@RTC_DATA_BITS = common dso_local global i32 0, align 4
@RTC_ADDR1 = common dso_local global i32 0, align 4
@RTC_ADDR1_SDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_rtc*)* @meson_rtc_get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_rtc_get_data(%struct.meson_rtc* %0) #0 {
  %2 = alloca %struct.meson_rtc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.meson_rtc* %0, %struct.meson_rtc** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RTC_DATA_BITS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.meson_rtc*, %struct.meson_rtc** %2, align 8
  %12 = call i32 @meson_rtc_sclk_pulse(%struct.meson_rtc* %11)
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load %struct.meson_rtc*, %struct.meson_rtc** %2, align 8
  %16 = getelementptr inbounds %struct.meson_rtc, %struct.meson_rtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RTC_ADDR1, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %3)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @RTC_ADDR1_SDO, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @meson_rtc_sclk_pulse(%struct.meson_rtc*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
