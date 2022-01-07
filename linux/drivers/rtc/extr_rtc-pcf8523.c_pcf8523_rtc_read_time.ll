; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8523.c_pcf8523_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8523.c_pcf8523_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@REG_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"low voltage detected, time is unreliable\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@REG_SECONDS_OS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf8523_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8523_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [7 x i32], align 16
  %9 = alloca [2 x %struct.i2c_msg], align 16
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @REG_SECONDS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call i32 @pcf8523_voltage_low(%struct.i2c_client* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %3, align 4
  br label %117

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %117

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 2
  store i64 0, i64* %36, align 16
  %37 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  store i32 1, i32* %38, align 16
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  store i32* %7, i32** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* @I2C_M_RD, align 8
  %47 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 16
  %49 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 0
  store i32 28, i32* %50, align 16
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %52 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %58 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %59 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %58)
  %60 = call i32 @i2c_transfer(i32 %56, %struct.i2c_msg* %57, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %29
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %117

65:                                               ; preds = %29
  %66 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = load i32, i32* @REG_SECONDS_OS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %117

74:                                               ; preds = %65
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = and i32 %76, 127
  %78 = call i8* @bcd2bin(i32 %77)
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 127
  %84 = call i8* @bcd2bin(i32 %83)
  %85 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 63
  %90 = call i8* @bcd2bin(i32 %89)
  %91 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 63
  %96 = call i8* @bcd2bin(i32 %95)
  %97 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 4
  %100 = load i32, i32* %99, align 16
  %101 = and i32 %100, 7
  %102 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 5
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 31
  %107 = call i8* @bcd2bin(i32 %106)
  %108 = getelementptr i8, i8* %107, i64 -1
  %109 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %110 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 6
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @bcd2bin(i32 %112)
  %114 = getelementptr i8, i8* %113, i64 100
  %115 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %74, %71, %63, %23, %18
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @pcf8523_voltage_low(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
