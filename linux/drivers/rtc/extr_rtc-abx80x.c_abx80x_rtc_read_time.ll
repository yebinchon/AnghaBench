; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i8, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.i2c_client = type { %struct.device }

@ABX8XX_REG_OSS = common dso_local global i32 0, align 4
@ABX8XX_OSS_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Oscillator failure, data is invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ABX8XX_REG_HTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Unable to read date\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ABX8XX_REG_SC = common dso_local global i64 0, align 8
@ABX8XX_REG_MN = common dso_local global i64 0, align 8
@ABX8XX_REG_HR = common dso_local global i64 0, align 8
@ABX8XX_REG_WD = common dso_local global i64 0, align 8
@ABX8XX_REG_DA = common dso_local global i64 0, align 8
@ABX8XX_REG_MO = common dso_local global i64 0, align 8
@ABX8XX_REG_YR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @abx80x_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx80x_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = call i32 @abx80x_is_rc_mode(%struct.i2c_client* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %116

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = load i32, i32* @ABX8XX_REG_OSS, align 4
  %25 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %116

30:                                               ; preds = %22
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ABX8XX_OSS_OF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %116

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %19
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = load i32, i32* @ABX8XX_REG_HTH, align 4
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %45 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %42, i32 %43, i32 8, i8* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %116

54:                                               ; preds = %41
  %55 = load i64, i64* @ABX8XX_REG_SC, align 8
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 127
  %60 = trunc i32 %59 to i8
  %61 = call i8* @bcd2bin(i8 zeroext %60)
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* @ABX8XX_REG_MN, align 8
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 127
  %69 = trunc i32 %68 to i8
  %70 = call i8* @bcd2bin(i8 zeroext %69)
  %71 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* @ABX8XX_REG_HR, align 8
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 63
  %78 = trunc i32 %77 to i8
  %79 = call i8* @bcd2bin(i8 zeroext %78)
  %80 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* @ABX8XX_REG_WD, align 8
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 7
  %87 = trunc i32 %86 to i8
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 0
  store i8 %87, i8* %89, align 8
  %90 = load i64, i64* @ABX8XX_REG_DA, align 8
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 63
  %95 = trunc i32 %94 to i8
  %96 = call i8* @bcd2bin(i8 zeroext %95)
  %97 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* @ABX8XX_REG_MO, align 8
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 31
  %104 = trunc i32 %103 to i8
  %105 = call i8* @bcd2bin(i8 zeroext %104)
  %106 = getelementptr i8, i8* %105, i64 -1
  %107 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %108 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i64, i64* @ABX8XX_REG_YR, align 8
  %110 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = call i8* @bcd2bin(i8 zeroext %111)
  %113 = getelementptr i8, i8* %112, i64 100
  %114 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %54, %48, %35, %28, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @abx80x_is_rc_mode(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i8*) #1

declare dso_local i8* @bcd2bin(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
