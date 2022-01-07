; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-digicolor.c_dc_rtc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-digicolor.c_dc_rtc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_rtc = type { i64 }

@dc_rtc_read.read_cmds = internal constant [2 x i32] [i32 128, i32 129], align 4
@DC_RTC_REFERENCE = common dso_local global i64 0, align 8
@DC_RTC_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_rtc*, i64*)* @dc_rtc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_rtc_read(%struct.dc_rtc* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_rtc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dc_rtc* %0, %struct.dc_rtc** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.dc_rtc*, %struct.dc_rtc** %4, align 8
  %11 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dc_rtc_read.read_cmds, i64 0, i64 0))
  %12 = call i32 @dc_rtc_cmds(%struct.dc_rtc* %10, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @dc_rtc_read.read_cmds, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.dc_rtc*, %struct.dc_rtc** %4, align 8
  %19 = getelementptr inbounds %struct.dc_rtc, %struct.dc_rtc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DC_RTC_REFERENCE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl_relaxed(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.dc_rtc*, %struct.dc_rtc** %4, align 8
  %25 = getelementptr inbounds %struct.dc_rtc, %struct.dc_rtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DC_RTC_TIME, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @readl_relaxed(i64 %28)
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %17, %41
  %31 = load %struct.dc_rtc*, %struct.dc_rtc** %4, align 8
  %32 = getelementptr inbounds %struct.dc_rtc, %struct.dc_rtc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DC_RTC_TIME, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @readl_relaxed(i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %43

41:                                               ; preds = %30
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %7, align 8
  br label %30

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %44, %45
  %47 = load i64*, i64** %5, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @dc_rtc_cmds(%struct.dc_rtc*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
