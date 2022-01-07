; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@AB3100_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"clock not set (lost power)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AB3100_TI0 = common dso_local global i32 0, align 4
@AB3100_RTC_CLOCK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ab3100_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @AB3100_RTC, align 4
  %13 = call i32 @abx500_get_register_interruptible(%struct.device* %11, i32 0, i32 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_info(%struct.device* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @AB3100_TI0, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %31 = call i32 @abx500_get_register_page_interruptible(%struct.device* %28, i32 0, i32 %29, i32* %30, i32 6)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %27
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 40
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  %41 = load i32, i32* %40, align 16
  %42 = shl i32 %41, 32
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 24
  %47 = or i32 %43, %46
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 16
  %51 = or i32 %47, %50
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %51, %54
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = or i32 %55, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @AB3100_RTC_CLOCK_RATE, align 4
  %61 = mul nsw i32 %60, 2
  %62 = sdiv i32 %59, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %36
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %66 = call i32 @rtc_time64_to_tm(i32 %64, %struct.rtc_time* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %34, %22, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @abx500_get_register_interruptible(%struct.device*, i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @abx500_get_register_page_interruptible(%struct.device*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
