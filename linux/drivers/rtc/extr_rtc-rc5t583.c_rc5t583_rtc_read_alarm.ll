; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i64 }
%struct.rc5t583 = type { i32 }

@NUM_YAL_REGS = common dso_local global i32 0, align 4
@RC5T583_RTC_AY_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rtc_read_alarm error %d\0A\00", align 1
@RC5T583_RTC_CTL1 = common dso_local global i32 0, align 4
@SET_YAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rc5t583_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rc5t583*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rc5t583* @dev_get_drvdata(i32 %14)
  store %struct.rc5t583* %15, %struct.rc5t583** %6, align 8
  %16 = load i32, i32* @NUM_YAL_REGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %21 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RC5T583_RTC_AY_MIN, align 4
  %24 = load i32, i32* @NUM_YAL_REGS, align 4
  %25 = call i32 @regmap_bulk_read(i32 %22, i32 %23, i8* %19, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %88

33:                                               ; preds = %2
  %34 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds i8, i8* %19, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = call i8* @bcd2bin(i8 zeroext %38)
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  store i8* %39, i8** %42, align 8
  %43 = getelementptr inbounds i8, i8* %19, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = call i8* @bcd2bin(i8 zeroext %44)
  %46 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i8* %45, i8** %48, align 8
  %49 = getelementptr inbounds i8, i8* %19, i64 2
  %50 = load i8, i8* %49, align 2
  %51 = call i8* @bcd2bin(i8 zeroext %50)
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = getelementptr inbounds i8, i8* %19, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = call i8* @bcd2bin(i8 zeroext %56)
  %58 = getelementptr i8, i8* %57, i64 -1
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = getelementptr inbounds i8, i8* %19, i64 4
  %63 = load i8, i8* %62, align 4
  %64 = call i8* @bcd2bin(i8 zeroext %63)
  %65 = getelementptr i8, i8* %64, i64 100
  %66 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %67 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %70 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RC5T583_RTC_CTL1, align 4
  %73 = call i32 @regmap_read(i32 %71, i32 %72, i32* %9)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %33
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %88

78:                                               ; preds = %33
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @SET_YAL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %85 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %88

88:                                               ; preds = %86, %76, %28
  %89 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.rc5t583* @dev_get_drvdata(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
