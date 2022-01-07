; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-st-lpc.c_st_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-st-lpc.c_st_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.st_rtc = type { i32, i32, i64 }

@LPC_LPT_MSB_OFF = common dso_local global i64 0, align 8
@LPC_LPT_LSB_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @st_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.st_rtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.st_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.st_rtc* %11, %struct.st_rtc** %5, align 8
  %12 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %13 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %12, i32 0, i32 1
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  br label %16

16:                                               ; preds = %29, %2
  %17 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %18 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LPC_LPT_MSB_OFF, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl_relaxed(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %24 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LPC_LPT_LSB_OFF, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i64 @readl_relaxed(i64 %27)
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %31 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LPC_LPT_MSB_OFF, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @readl_relaxed(i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %16, label %38

38:                                               ; preds = %29
  %39 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %40 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %39, i32 0, i32 1
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = shl i64 %43, 32
  %45 = load i64, i64* %6, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.st_rtc*, %struct.st_rtc** %5, align 8
  %49 = getelementptr inbounds %struct.st_rtc, %struct.st_rtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @do_div(i64 %47, i32 %50)
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %54 = call i32 @rtc_time64_to_tm(i64 %52, %struct.rtc_time* %53)
  ret i32 0
}

declare dso_local %struct.st_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
