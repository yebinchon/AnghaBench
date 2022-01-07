; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }

@AB3100_AL0 = common dso_local global i32 0, align 4
@AB3100_AL1 = common dso_local global i32 0, align 4
@AB3100_AL2 = common dso_local global i32 0, align 4
@AB3100_AL3 = common dso_local global i32 0, align 4
@AB3100_RTC_CLOCK_RATE = common dso_local global i32 0, align 4
@AB3100_RTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ab3100_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @AB3100_AL0, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @AB3100_AL1, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @AB3100_AL2, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @AB3100_AL3, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 1
  %22 = call i32 @rtc_tm_to_time64(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @AB3100_RTC_CLOCK_RATE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 32
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 40
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 %45, i8* %46, align 1
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %66, %2
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i32 @abx500_set_register_interruptible(%struct.device* %51, i32 0, i32 %55, i8 zeroext %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %47

69:                                               ; preds = %47
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i32, i32* @AB3100_RTC, align 4
  %72 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 2
  %76 = call i32 @abx500_mask_and_set_register_interruptible(%struct.device* %70, i32 0, i32 %71, i32 4, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %63
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @abx500_set_register_interruptible(%struct.device*, i32, i32, i8 zeroext) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(%struct.device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
