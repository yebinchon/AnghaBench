; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rtc_mem = type { i32, i8*, i32 }

@CMOS_YEAR = common dso_local global i32 0, align 4
@CTRL_STOP = common dso_local global i8 0, align 1
@CTRL_HOLD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [32 x i8] c"resetting control %02x -> %02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf8583_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8583_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i8, align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca %struct.rtc_mem, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %6, align 8
  %16 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 1
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 2
  %20 = load i32, i32* @CMOS_YEAR, align 4
  store i32 %20, i32* %19, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = call i32 @pcf8583_get_ctrl(%struct.i2c_client* %21, i8* %7)
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @CTRL_STOP, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @CTRL_HOLD, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %2
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @CTRL_STOP, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @CTRL_HOLD, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %36, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %13, align 1
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i8, i8* %7, align 1
  %45 = load i8, i8* %13, align 1
  %46 = call i32 @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 zeroext %44, i8 zeroext %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = call i32 @pcf8583_set_ctrl(%struct.i2c_client* %47, i8* %13)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %3, align 4
  br label %93

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %56 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %57 = call i64 @pcf8583_get_datetime(%struct.i2c_client* %55, %struct.rtc_time* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = call i64 @pcf8583_read_mem(%struct.i2c_client* %60, %struct.rtc_mem* %9)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %54
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %93

66:                                               ; preds = %59
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %10, align 4
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 3
  %75 = sub nsw i32 %72, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %66
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %87, 100
  %89 = add nsw i32 %84, %88
  %90 = sub nsw i32 %89, 1900
  %91 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %81, %63, %51
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @pcf8583_get_ctrl(%struct.i2c_client*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @pcf8583_set_ctrl(%struct.i2c_client*, i8*) #1

declare dso_local i64 @pcf8583_get_datetime(%struct.i2c_client*, %struct.rtc_time*) #1

declare dso_local i64 @pcf8583_read_mem(%struct.i2c_client*, %struct.rtc_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
