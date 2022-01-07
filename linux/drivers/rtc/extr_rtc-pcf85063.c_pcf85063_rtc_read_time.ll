; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf85063.c_pcf85063_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pcf85063 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PCF85063_REG_SC = common dso_local global i32 0, align 4
@PCF85063_REG_SC_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Power loss detected, invalid time\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf85063_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf85063_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %12 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PCF85063_REG_SC, align 4
  %15 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %16 = call i32 @regmap_bulk_read(i32 %13, i32 %14, i32* %15, i32 28)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = load i32, i32* @PCF85063_REG_SC_OS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.pcf85063*, %struct.pcf85063** %6, align 8
  %29 = getelementptr inbounds %struct.pcf85063, %struct.pcf85063* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %81

35:                                               ; preds = %21
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = and i32 %37, 127
  %39 = call i8* @bcd2bin(i32 %38)
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 127
  %45 = call i8* @bcd2bin(i32 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 63
  %51 = call i8* @bcd2bin(i32 %50)
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 63
  %57 = call i8* @bcd2bin(i32 %56)
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 4
  %61 = load i32, i32* %60, align 16
  %62 = and i32 %61, 7
  %63 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 31
  %68 = call i8* @bcd2bin(i32 %67)
  %69 = getelementptr i8, i8* %68, i64 -1
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 6
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @bcd2bin(i32 %73)
  %75 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr i8, i8* %79, i64 100
  store i8* %80, i8** %78, align 8
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %35, %27, %19
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.pcf85063* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
