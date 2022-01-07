; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_write_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt6397.c_mtk_rtc_write_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6397_rtc = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@RTC_WRTGR = common dso_local global i64 0, align 8
@RTC_BBPU = common dso_local global i64 0, align 8
@RTC_BBPU_CBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt6397_rtc*)* @mtk_rtc_write_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rtc_write_trigger(%struct.mt6397_rtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt6397_rtc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt6397_rtc* %0, %struct.mt6397_rtc** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @HZ, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %3, align 8
  %11 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %3, align 8
  %14 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RTC_WRTGR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @regmap_write(i32 %12, i64 %17, i32 1)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %55

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %51
  %25 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %3, align 8
  %26 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mt6397_rtc*, %struct.mt6397_rtc** %3, align 8
  %29 = getelementptr inbounds %struct.mt6397_rtc, %struct.mt6397_rtc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RTC_BBPU, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @regmap_read(i32 %27, i64 %32, i32* %6)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %53

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @RTC_BBPU_CBUSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %53

43:                                               ; preds = %37
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @time_after(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %53

51:                                               ; preds = %43
  %52 = call i32 (...) @cpu_relax()
  br label %24

53:                                               ; preds = %48, %42, %36
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
