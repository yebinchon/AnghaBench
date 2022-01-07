; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rv8803.c_rv8803_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.rv8803_data = type { i32 }

@RV8803_FLAG = common dso_local global i32 0, align 4
@RV8803_FLAG_V2F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Voltage low, data is invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RV8803_SEC = common dso_local global i64 0, align 8
@RV8803_MIN = common dso_local global i64 0, align 8
@RV8803_HOUR = common dso_local global i64 0, align 8
@RV8803_WEEK = common dso_local global i64 0, align 8
@RV8803_DAY = common dso_local global i64 0, align 8
@RV8803_MONTH = common dso_local global i64 0, align 8
@RV8803_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rv8803_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv8803_get_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.rv8803_data*, align 8
  %7 = alloca [7 x i32], align 16
  %8 = alloca [7 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.rv8803_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.rv8803_data* %13, %struct.rv8803_data** %6, align 8
  %14 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  store i32* %14, i32** %9, align 8
  %15 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %16 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RV8803_FLAG, align 4
  %19 = call i32 @rv8803_read_reg(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %3, align 4
  br label %131

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @RV8803_FLAG_V2F, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %131

34:                                               ; preds = %24
  %35 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %36 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @RV8803_SEC, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @rv8803_read_regs(i32 %37, i64 %38, i32 7, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %131

45:                                               ; preds = %34
  %46 = load i64, i64* @RV8803_SEC, align 8
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 127
  %50 = call i32 @bin2bcd(i32 59)
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %45
  %53 = load %struct.rv8803_data*, %struct.rv8803_data** %6, align 8
  %54 = getelementptr inbounds %struct.rv8803_data, %struct.rv8803_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* @RV8803_SEC, align 8
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %58 = call i32 @rv8803_read_regs(i32 %55, i64 %56, i32 7, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %131

63:                                               ; preds = %52
  %64 = load i64, i64* @RV8803_SEC, align 8
  %65 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 127
  %68 = call i32 @bin2bcd(i32 59)
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  store i32* %71, i32** %9, align 8
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32*, i32** %9, align 8
  %75 = load i64, i64* @RV8803_SEC, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 127
  %79 = call i8* @bcd2bin(i32 %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* @RV8803_MIN, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 127
  %87 = call i8* @bcd2bin(i32 %86)
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i64, i64* @RV8803_HOUR, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 63
  %95 = call i8* @bcd2bin(i32 %94)
  %96 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i64, i64* @RV8803_WEEK, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 127
  %103 = call i32 @ilog2(i32 %102)
  %104 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i64, i64* @RV8803_DAY, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 63
  %111 = call i8* @bcd2bin(i32 %110)
  %112 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %113 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i64, i64* @RV8803_MONTH, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 31
  %119 = call i8* @bcd2bin(i32 %118)
  %120 = getelementptr i8, i8* %119, i64 -1
  %121 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %122 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i64, i64* @RV8803_YEAR, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @bcd2bin(i32 %126)
  %128 = getelementptr i8, i8* %127, i64 100
  %129 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %73, %61, %43, %29, %22
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.rv8803_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rv8803_read_reg(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @rv8803_read_regs(i32, i64, i32, i32*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
