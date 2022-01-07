; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.rc5t583 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@RC5T583_RTC_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RTC read time failed with err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rc5t583_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %20 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RC5T583_RTC_SEC, align 4
  %23 = load i32, i32* @NUM_TIME_REGS, align 4
  %24 = call i32 @regmap_bulk_read(i32 %21, i32 %22, i32* %18, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

32:                                               ; preds = %2
  %33 = getelementptr inbounds i32, i32* %18, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = call i8* @bcd2bin(i32 %34)
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds i32, i32* %18, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @bcd2bin(i32 %39)
  %41 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = getelementptr inbounds i32, i32* %18, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @bcd2bin(i32 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds i32, i32* %18, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @bcd2bin(i32 %49)
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds i32, i32* %18, i64 4
  %54 = load i32, i32* %53, align 16
  %55 = call i8* @bcd2bin(i32 %54)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = getelementptr inbounds i32, i32* %18, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @bcd2bin(i32 %59)
  %61 = getelementptr i8, i8* %60, i64 -1
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = getelementptr inbounds i32, i32* %18, i64 6
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @bcd2bin(i32 %65)
  %67 = getelementptr i8, i8* %66, i64 100
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %32, %27
  %72 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.rc5t583* @dev_get_drvdata(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
