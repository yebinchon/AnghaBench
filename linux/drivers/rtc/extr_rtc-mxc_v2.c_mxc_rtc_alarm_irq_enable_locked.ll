; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mxc_v2.c_mxc_rtc_alarm_irq_enable_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mxc_v2.c_mxc_rtc_alarm_irq_enable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_rtc_data = type { i64 }

@SRTC_LPCR = common dso_local global i64 0, align 8
@SRTC_LPCR_ALP = common dso_local global i32 0, align 4
@SRTC_LPCR_WAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_rtc_data*, i32)* @mxc_rtc_alarm_irq_enable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_rtc_alarm_irq_enable_locked(%struct.mxc_rtc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.mxc_rtc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxc_rtc_data* %0, %struct.mxc_rtc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %3, align 8
  %7 = getelementptr inbounds %struct.mxc_rtc_data, %struct.mxc_rtc_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SRTC_LPCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @SRTC_LPCR_ALP, align 4
  %16 = load i32, i32* @SRTC_LPCR_WAE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @SRTC_LPCR_ALP, align 4
  %22 = load i32, i32* @SRTC_LPCR_WAE, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mxc_rtc_data*, %struct.mxc_rtc_data** %3, align 8
  %30 = getelementptr inbounds %struct.mxc_rtc_data, %struct.mxc_rtc_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SRTC_LPCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
