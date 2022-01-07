; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@ab8500_rtc_time_regs = common dso_local global i32* null, align 8
@COUNTS_PER_SEC = common dso_local global i64 0, align 8
@AB8500_RTC = common dso_local global i32 0, align 4
@AB8500_RTC_READ_REQ_REG = common dso_local global i32 0, align 4
@RTC_WRITE_REQUEST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ab8500_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %14 = load i32*, i32** @ab8500_rtc_time_regs, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = call i32 @rtc_tm_to_time(%struct.rtc_time* %19, i64* %12)
  %21 = load i64, i64* %12, align 8
  %22 = udiv i64 %21, 60
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = urem i64 %23, 60
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @COUNTS_PER_SEC, align 8
  %27 = mul i64 %25, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = and i64 %28, 255
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds i8, i8* %18, i64 4
  store i8 %30, i8* %31, align 4
  %32 = load i64, i64* %10, align 8
  %33 = lshr i64 %32, 8
  %34 = and i64 %33, 255
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 %35, i8* %36, align 1
  %37 = load i64, i64* %11, align 8
  %38 = and i64 %37, 255
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %39, i8* %40, align 2
  %41 = load i64, i64* %11, align 8
  %42 = lshr i64 %41, 8
  %43 = and i64 %42, 255
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %44, i8* %45, align 1
  %46 = load i64, i64* %11, align 8
  %47 = lshr i64 %46, 16
  %48 = and i64 %47, 255
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %49, i8* %50, align 16
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %74, %2
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** @ab8500_rtc_time_regs, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @AB8500_RTC, align 4
  %59 = load i32*, i32** @ab8500_rtc_time_regs, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %18, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @abx500_set_register_interruptible(%struct.device* %57, i32 %58, i32 %63, i8 zeroext %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %83

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %51

77:                                               ; preds = %51
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* @AB8500_RTC, align 4
  %80 = load i32, i32* @AB8500_RTC_READ_REQ_REG, align 4
  %81 = load i8, i8* @RTC_WRITE_REQUEST, align 1
  %82 = call i32 @abx500_set_register_interruptible(%struct.device* %78, i32 %79, i32 %80, i8 zeroext %81)
  store i32 %82, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @abx500_set_register_interruptible(%struct.device*, i32, i32, i8 zeroext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
