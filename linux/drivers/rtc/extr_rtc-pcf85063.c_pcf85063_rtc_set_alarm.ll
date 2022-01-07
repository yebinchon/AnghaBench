; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.pcf85063 = type { i32 }

@PCF85063_AEN = common dso_local global i32 0, align 4
@PCF85063_REG_CTRL2 = common dso_local global i32 0, align 4
@PCF85063_CTRL2_AIE = common dso_local global i32 0, align 4
@PCF85063_CTRL2_AF = common dso_local global i32 0, align 4
@PCF85063_REG_ALM_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pcf85063_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85063_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.pcf85063*, align 8
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.pcf85063* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcf85063* %10, %struct.pcf85063** %6, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bin2bcd(i32 %14)
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %18 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bin2bcd(i32 %20)
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bin2bcd(i32 %26)
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bin2bcd(i32 %32)
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @PCF85063_AEN, align 4
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 %35, i32* %36, align 16
  %37 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %38 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PCF85063_REG_CTRL2, align 4
  %41 = load i32, i32* @PCF85063_CTRL2_AIE, align 4
  %42 = load i32, i32* @PCF85063_CTRL2_AF, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %81

49:                                               ; preds = %2
  %50 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %51 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PCF85063_REG_ALM_S, align 4
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %55 = call i32 @regmap_bulk_write(i32 %52, i32 %53, i32* %54, i32 20)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %81

60:                                               ; preds = %49
  %61 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %62 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PCF85063_REG_CTRL2, align 4
  %65 = load i32, i32* @PCF85063_CTRL2_AIE, align 4
  %66 = load i32, i32* @PCF85063_CTRL2_AF, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i32, i32* @PCF85063_CTRL2_AIE, align 4
  %74 = load i32, i32* @PCF85063_CTRL2_AF, align 4
  %75 = or i32 %73, %74
  br label %78

76:                                               ; preds = %60
  %77 = load i32, i32* @PCF85063_CTRL2_AF, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %75, %72 ], [ %77, %76 ]
  %80 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 %67, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %58, %47
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.pcf85063* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
