; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-abx80x.c_abx80x_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ABX8XX_REG_HTH = common dso_local global i64 0, align 8
@ABX8XX_REG_SC = common dso_local global i64 0, align 8
@ABX8XX_REG_MN = common dso_local global i64 0, align 8
@ABX8XX_REG_HR = common dso_local global i64 0, align 8
@ABX8XX_REG_DA = common dso_local global i64 0, align 8
@ABX8XX_REG_MO = common dso_local global i64 0, align 8
@ABX8XX_REG_YR = common dso_local global i64 0, align 8
@ABX8XX_REG_WD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unable to write to date registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ABX8XX_REG_OSS = common dso_local global i32 0, align 4
@ABX8XX_OSS_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to write oscillator status register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @abx80x_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx80x_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
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
  %12 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %101

19:                                               ; preds = %2
  %20 = load i64, i64* @ABX8XX_REG_HTH, align 8
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %20
  store i8 0, i8* %21, align 1
  %22 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call zeroext i8 @bin2bcd(i32 %24)
  %26 = load i64, i64* @ABX8XX_REG_SC, align 8
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %26
  store i8 %25, i8* %27, align 1
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call zeroext i8 @bin2bcd(i32 %30)
  %32 = load i64, i64* @ABX8XX_REG_MN, align 8
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %32
  store i8 %31, i8* %33, align 1
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call zeroext i8 @bin2bcd(i32 %36)
  %38 = load i64, i64* @ABX8XX_REG_HR, align 8
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %38
  store i8 %37, i8* %39, align 1
  %40 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call zeroext i8 @bin2bcd(i32 %42)
  %44 = load i64, i64* @ABX8XX_REG_DA, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %44
  store i8 %43, i8* %45, align 1
  %46 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = call zeroext i8 @bin2bcd(i32 %49)
  %51 = load i64, i64* @ABX8XX_REG_MO, align 8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %51
  store i8 %50, i8* %52, align 1
  %53 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 100
  %57 = call zeroext i8 @bin2bcd(i32 %56)
  %58 = load i64, i64* @ABX8XX_REG_YR, align 8
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %58
  store i8 %57, i8* %59, align 1
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 6
  %62 = load i8, i8* %61, align 4
  %63 = load i64, i64* @ABX8XX_REG_WD, align 8
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %63
  store i8 %62, i8* %64, align 1
  %65 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %66 = load i64, i64* @ABX8XX_REG_HTH, align 8
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %68 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %65, i64 %66, i32 8, i8* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %19
  %72 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %101

77:                                               ; preds = %19
  %78 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %79 = load i32, i32* @ABX8XX_REG_OSS, align 4
  %80 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %101

85:                                               ; preds = %77
  %86 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %87 = load i32, i32* @ABX8XX_REG_OSS, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @ABX8XX_OSS_OF, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %86, i32 %87, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %101

100:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %95, %83, %71, %16
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local zeroext i8 @bin2bcd(i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i64, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
