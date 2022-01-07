; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.rc5t583 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@RC5T583_RTC_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RTC set time failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rc5t583_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rc5t583*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rc5t583* @dev_get_drvdata(i32 %13)
  store %struct.rc5t583* %14, %struct.rc5t583** %6, align 8
  %15 = load i32, i32* @NUM_TIME_REGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = call zeroext i8 @bin2bcd(i64 %21)
  %23 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %22, i8* %23, align 16
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call zeroext i8 @bin2bcd(i64 %26)
  %28 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %27, i8* %28, align 1
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call zeroext i8 @bin2bcd(i64 %31)
  %33 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %32, i8* %33, align 2
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call zeroext i8 @bin2bcd(i64 %36)
  %38 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 %37, i8* %38, align 1
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call zeroext i8 @bin2bcd(i64 %41)
  %43 = getelementptr inbounds i8, i8* %18, i64 4
  store i8 %42, i8* %43, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call zeroext i8 @bin2bcd(i64 %47)
  %49 = getelementptr inbounds i8, i8* %18, i64 5
  store i8 %48, i8* %49, align 1
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 100
  %54 = call zeroext i8 @bin2bcd(i64 %53)
  %55 = getelementptr inbounds i8, i8* %18, i64 6
  store i8 %54, i8* %55, align 2
  %56 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %57 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RC5T583_RTC_SEC, align 4
  %60 = load i32, i32* @NUM_TIME_REGS, align 4
  %61 = call i32 @regmap_bulk_write(i32 %58, i32 %59, i8* %18, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %2
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

69:                                               ; preds = %2
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.rc5t583* @dev_get_drvdata(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local zeroext i8 @bin2bcd(i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
