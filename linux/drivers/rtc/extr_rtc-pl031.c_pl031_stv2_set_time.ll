; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_stv2_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl031.c_pl031_stv2_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.pl031_local = type { i64 }

@RTC_YLR = common dso_local global i64 0, align 8
@RTC_LR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pl031_stv2_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl031_stv2_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pl031_local*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.pl031_local* @dev_get_drvdata(%struct.device* %9)
  store %struct.pl031_local* %10, %struct.pl031_local** %7, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %13 = call i32 @pl031_stv2_tm_to_time(%struct.device* %11, %struct.rtc_time* %12, i64* %5, i64* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %19 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RTC_YLR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i64 %17, i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.pl031_local*, %struct.pl031_local** %7, align 8
  %26 = getelementptr inbounds %struct.pl031_local, %struct.pl031_local* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RTC_LR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i64 %24, i64 %29)
  br label %31

31:                                               ; preds = %16, %2
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local %struct.pl031_local* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pl031_stv2_tm_to_time(%struct.device*, %struct.rtc_time*, i64*, i64*) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
