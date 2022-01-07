; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i64 }

@AB3100_RTC = common dso_local global i32 0, align 4
@AB3100_AL0 = common dso_local global i32 0, align 4
@AB3100_RTC_CLOCK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ab3100_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @AB3100_RTC, align 4
  %13 = call i32 @abx500_get_register_interruptible(%struct.device* %11, i32 0, i32 %12, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %28

25:                                               ; preds = %18
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* @AB3100_AL0, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %34 = call i32 @abx500_get_register_page_interruptible(%struct.device* %31, i32 0, i32 %32, i32* %33, i32 4)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %66

39:                                               ; preds = %28
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 40
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 32
  %46 = or i32 %42, %45
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 24
  %50 = or i32 %46, %49
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = shl i32 %52, 16
  %54 = or i32 %50, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @AB3100_RTC_CLOCK_RATE, align 4
  %57 = mul nsw i32 %56, 2
  %58 = sdiv i32 %55, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %60, i32 0, i32 1
  %62 = call i32 @rtc_time64_to_tm(i32 %59, i32* %61)
  %63 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %63, i32 0, i32 1
  %65 = call i32 @rtc_valid_tm(i32* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %39, %37, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @abx500_get_register_interruptible(%struct.device*, i32, i32, i32*) #1

declare dso_local i32 @abx500_get_register_page_interruptible(%struct.device*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i32, i32*) #1

declare dso_local i32 @rtc_valid_tm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
