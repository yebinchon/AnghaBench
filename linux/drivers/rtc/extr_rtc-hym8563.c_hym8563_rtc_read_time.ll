; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hym8563.c_hym8563_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.i2c_client = type { i32 }
%struct.hym8563 = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"no valid clock/calendar values available\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@HYM8563_SEC = common dso_local global i32 0, align 4
@HYM8563_SEC_MASK = common dso_local global i32 0, align 4
@HYM8563_MIN_MASK = common dso_local global i32 0, align 4
@HYM8563_HOUR_MASK = common dso_local global i32 0, align 4
@HYM8563_DAY_MASK = common dso_local global i32 0, align 4
@HYM8563_WEEKDAY_MASK = common dso_local global i32 0, align 4
@HYM8563_MONTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @hym8563_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hym8563_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.hym8563*, align 8
  %8 = alloca [7 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.hym8563* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.hym8563* %13, %struct.hym8563** %7, align 8
  %14 = load %struct.hym8563*, %struct.hym8563** %7, align 8
  %15 = getelementptr inbounds %struct.hym8563, %struct.hym8563* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @dev_warn(i32* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %83

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = load i32, i32* @HYM8563_SEC, align 4
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %28 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %25, i32 %26, i32 7, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %83

33:                                               ; preds = %24
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = load i32, i32* @HYM8563_SEC_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i8* @bcd2bin(i32 %37)
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HYM8563_MIN_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call i8* @bcd2bin(i32 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @HYM8563_HOUR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = call i8* @bcd2bin(i32 %51)
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HYM8563_DAY_MASK, align 4
  %58 = and i32 %56, %57
  %59 = call i8* @bcd2bin(i32 %58)
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 4
  %63 = load i32, i32* %62, align 16
  %64 = load i32, i32* @HYM8563_WEEKDAY_MASK, align 4
  %65 = and i32 %63, %64
  %66 = call i8* @bcd2bin(i32 %65)
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HYM8563_MONTH_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i8* @bcd2bin(i32 %72)
  %74 = getelementptr i8, i8* %73, i64 -1
  %75 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 6
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @bcd2bin(i32 %78)
  %80 = getelementptr i8, i8* %79, i64 100
  %81 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %33, %31, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.hym8563* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
