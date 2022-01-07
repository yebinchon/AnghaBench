; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85363.c_pcf85363_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.pcf85363 = type { i32 }

@DT_MONTH_ALM1 = common dso_local global i64 0, align 8
@DT_SECOND_ALM1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pcf85363_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85363_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.pcf85363*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.pcf85363* @dev_get_drvdata(%struct.device* %11)
  store %struct.pcf85363* %12, %struct.pcf85363** %6, align 8
  %13 = load i64, i64* @DT_MONTH_ALM1, align 8
  %14 = load i64, i64* @DT_SECOND_ALM1, align 8
  %15 = sub nsw i64 %13, %14
  %16 = add nsw i64 %15, 1
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call zeroext i8 @bin2bcd(i64 %22)
  %24 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %23, i8* %24, align 16
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call zeroext i8 @bin2bcd(i64 %28)
  %30 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %29, i8* %30, align 1
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call zeroext i8 @bin2bcd(i64 %34)
  %36 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %35, i8* %36, align 2
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call zeroext i8 @bin2bcd(i64 %40)
  %42 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 %41, i8* %42, align 1
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  %48 = call zeroext i8 @bin2bcd(i64 %47)
  %49 = getelementptr inbounds i8, i8* %18, i64 4
  store i8 %48, i8* %49, align 4
  %50 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %51 = call i32 @_pcf85363_rtc_alarm_irq_enable(%struct.pcf85363* %50, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %2
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

56:                                               ; preds = %2
  %57 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %58 = getelementptr inbounds %struct.pcf85363, %struct.pcf85363* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @DT_SECOND_ALM1, align 8
  %61 = trunc i64 %16 to i32
  %62 = call i32 @regmap_bulk_write(i32 %59, i64 %60, i8* %18, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

67:                                               ; preds = %56
  %68 = load %struct.pcf85363*, %struct.pcf85363** %6, align 8
  %69 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @_pcf85363_rtc_alarm_irq_enable(%struct.pcf85363* %68, i32 %71)
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %65, %54
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.pcf85363* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local zeroext i8 @bin2bcd(i64) #1

declare dso_local i32 @_pcf85363_rtc_alarm_irq_enable(%struct.pcf85363*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i64, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
