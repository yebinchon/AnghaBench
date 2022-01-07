; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.pcf85063 = type { i32 }

@PCF85063_REG_CTRL1 = common dso_local global i32 0, align 4
@PCF85063_REG_CTRL1_STOP = common dso_local global i32 0, align 4
@PCF85063_REG_SC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf85063_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85063_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.pcf85063*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [7 x i32], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.pcf85063* @dev_get_drvdata(%struct.device* %9)
  store %struct.pcf85063* %10, %struct.pcf85063** %6, align 8
  %11 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %12 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCF85063_REG_CTRL1, align 4
  %15 = load i32, i32* @PCF85063_REG_CTRL1_STOP, align 4
  %16 = load i32, i32* @PCF85063_REG_CTRL1_STOP, align 4
  %17 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %2
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @bin2bcd(i64 %25)
  %27 = and i32 %26, 127
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @bin2bcd(i64 %31)
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @bin2bcd(i64 %36)
  %38 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @bin2bcd(i64 %41)
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 7
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 4
  store i32 %47, i32* %48, align 16
  %49 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @bin2bcd(i64 %52)
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 5
  store i32 %53, i32* %54, align 4
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, 100
  %59 = call i32 @bin2bcd(i64 %58)
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 6
  store i32 %59, i32* %60, align 8
  %61 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %62 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PCF85063_REG_SC, align 4
  %65 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %66 = call i32 @regmap_bulk_write(i32 %63, i32 %64, i32* %65, i32 28)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %22
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %22
  %72 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %73 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PCF85063_REG_CTRL1, align 4
  %76 = load i32, i32* @PCF85063_REG_CTRL1_STOP, align 4
  %77 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %69, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.pcf85063* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
