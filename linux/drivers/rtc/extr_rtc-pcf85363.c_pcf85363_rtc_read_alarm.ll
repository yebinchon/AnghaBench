; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.pcf85363 = type { i32 }

@DT_MONTH_ALM1 = common dso_local global i64 0, align 8
@DT_SECOND_ALM1 = common dso_local global i64 0, align 8
@CTRL_INTA_EN = common dso_local global i32 0, align 4
@INT_A1IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pcf85363_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85363_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.pcf85363*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.pcf85363* @dev_get_drvdata(%struct.device* %12)
  store %struct.pcf85363* %13, %struct.pcf85363** %6, align 8
  %14 = load i64, i64* @DT_MONTH_ALM1, align 8
  %15 = load i64, i64* @DT_SECOND_ALM1, align 8
  %16 = sub nsw i64 %14, %15
  %17 = add nsw i64 %16, 1
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %21 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @DT_SECOND_ALM1, align 8
  %24 = trunc i64 %17 to i32
  %25 = call i32 @regmap_bulk_read(i32 %22, i64 %23, i8* %19, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %81

30:                                               ; preds = %2
  %31 = getelementptr inbounds i8, i8* %19, i64 0
  %32 = load i8, i8* %31, align 16
  %33 = call i8* @bcd2bin(i8 zeroext %32)
  %34 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i8* %33, i8** %36, align 8
  %37 = getelementptr inbounds i8, i8* %19, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = call i8* @bcd2bin(i8 zeroext %38)
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = getelementptr inbounds i8, i8* %19, i64 2
  %44 = load i8, i8* %43, align 2
  %45 = call i8* @bcd2bin(i8 zeroext %44)
  %46 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = getelementptr inbounds i8, i8* %19, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = call i8* @bcd2bin(i8 zeroext %50)
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = getelementptr inbounds i8, i8* %19, i64 4
  %56 = load i8, i8* %55, align 4
  %57 = call i8* @bcd2bin(i8 zeroext %56)
  %58 = getelementptr i8, i8* %57, i64 -1
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %63 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CTRL_INTA_EN, align 4
  %66 = call i32 @regmap_read(i32 %64, i32 %65, i32* %9)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %30
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %81

71:                                               ; preds = %30
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @INT_A1IE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %81

81:                                               ; preds = %71, %69, %28
  %82 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.pcf85363* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @regmap_bulk_read(i32, i64, i8*, i32) #1

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
