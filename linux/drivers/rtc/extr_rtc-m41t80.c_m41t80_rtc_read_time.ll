; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m41t80.c_m41t80_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.i2c_client = type { i32 }

@M41T80_REG_FLAGS = common dso_local global i32 0, align 4
@M41T80_FLAGS_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Oscillator failure, data is invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M41T80_REG_SSEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unable to read date\0A\00", align 1
@M41T80_REG_SEC = common dso_local global i64 0, align 8
@M41T80_REG_MIN = common dso_local global i64 0, align 8
@M41T80_REG_HOUR = common dso_local global i64 0, align 8
@M41T80_REG_DAY = common dso_local global i64 0, align 8
@M41T80_REG_WDAY = common dso_local global i64 0, align 8
@M41T80_REG_MON = common dso_local global i64 0, align 8
@M41T80_REG_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @m41t80_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @M41T80_REG_FLAGS, align 4
  %14 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %104

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @M41T80_FLAGS_OF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %104

30:                                               ; preds = %19
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* @M41T80_REG_SSEC, align 4
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %34 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %31, i32 %32, i32 8, i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %104

42:                                               ; preds = %30
  %43 = load i64, i64* @M41T80_REG_SEC, align 8
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 127
  %48 = trunc i32 %47 to i8
  %49 = call i8* @bcd2bin(i8 zeroext %48)
  %50 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* @M41T80_REG_MIN, align 8
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 127
  %57 = trunc i32 %56 to i8
  %58 = call i8* @bcd2bin(i8 zeroext %57)
  %59 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* @M41T80_REG_HOUR, align 8
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 63
  %66 = trunc i32 %65 to i8
  %67 = call i8* @bcd2bin(i8 zeroext %66)
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* @M41T80_REG_DAY, align 8
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 63
  %75 = trunc i32 %74 to i8
  %76 = call i8* @bcd2bin(i8 zeroext %75)
  %77 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* @M41T80_REG_WDAY, align 8
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 7
  %84 = trunc i32 %83 to i8
  %85 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 0
  store i8 %84, i8* %86, align 8
  %87 = load i64, i64* @M41T80_REG_MON, align 8
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 31
  %92 = trunc i32 %91 to i8
  %93 = call i8* @bcd2bin(i8 zeroext %92)
  %94 = getelementptr i8, i8* %93, i64 -1
  %95 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* @M41T80_REG_YEAR, align 8
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = call i8* @bcd2bin(i8 zeroext %99)
  %101 = getelementptr i8, i8* %100, i64 100
  %102 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %42, %37, %24, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
