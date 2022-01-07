; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab3100.c_ab3100_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@AB3100_TI0 = common dso_local global i32 0, align 4
@AB3100_TI1 = common dso_local global i32 0, align 4
@AB3100_TI2 = common dso_local global i32 0, align 4
@AB3100_TI3 = common dso_local global i32 0, align 4
@AB3100_TI4 = common dso_local global i32 0, align 4
@AB3100_TI5 = common dso_local global i32 0, align 4
@AB3100_RTC_CLOCK_RATE = common dso_local global i32 0, align 4
@AB3100_RTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ab3100_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %12 = load i32, i32* @AB3100_TI0, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @AB3100_TI1, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @AB3100_TI2, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @AB3100_TI3, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @AB3100_TI4, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @AB3100_TI5, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %23)
  %25 = load i32, i32* @AB3100_RTC_CLOCK_RATE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 1
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 2
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 3
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 32
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 4
  store i8 %50, i8* %51, align 1
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 40
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 5
  store i8 %55, i8* %56, align 1
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %76, %2
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @abx500_set_register_interruptible(%struct.device* %61, i32 0, i32 %65, i8 zeroext %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %83

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load i32, i32* @AB3100_RTC, align 4
  %82 = call i32 @abx500_mask_and_set_register_interruptible(%struct.device* %80, i32 0, i32 %81, i32 1, i32 1)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @abx500_set_register_interruptible(%struct.device*, i32, i32, i8 zeroext) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(%struct.device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
