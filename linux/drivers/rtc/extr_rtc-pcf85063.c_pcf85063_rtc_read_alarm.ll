; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.pcf85063 = type { i32 }

@PCF85063_REG_ALM_S = common dso_local global i32 0, align 4
@PCF85063_REG_CTRL2 = common dso_local global i32 0, align 4
@PCF85063_CTRL2_AIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pcf85063_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85063_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.pcf85063*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.pcf85063* @dev_get_drvdata(%struct.device* %10)
  store %struct.pcf85063* %11, %struct.pcf85063** %6, align 8
  %12 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %13 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCF85063_REG_ALM_S, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %17 = call i32 @regmap_bulk_read(i32 %14, i32 %15, i32* %16, i32 16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = call i8* @bcd2bin(i32 %24)
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i8* %25, i8** %28, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @bcd2bin(i32 %30)
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @bcd2bin(i32 %36)
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @bcd2bin(i32 %42)
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %48 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PCF85063_REG_CTRL2, align 4
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %22
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %66

56:                                               ; preds = %22
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PCF85063_CTRL2_AIE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %56, %54, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.pcf85063* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
