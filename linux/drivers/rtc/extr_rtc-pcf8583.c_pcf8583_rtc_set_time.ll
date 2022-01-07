; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rtc_mem = type { i32, i8*, i32 }

@CMOS_YEAR = common dso_local global i32 0, align 4
@CMOS_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf8583_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8583_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.rtc_mem, align 8
  %10 = alloca %struct.rtc_mem, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 0
  store i32 2, i32* %15, align 8
  %16 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 2
  %19 = load i32, i32* @CMOS_YEAR, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %10, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %10, i32 0, i32 1
  store i8* %8, i8** %21, align 8
  %22 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %10, i32 0, i32 2
  %23 = load i32, i32* @CMOS_CHECKSUM, align 4
  store i32 %23, i32* %22, align 8
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1900
  store i32 %27, i32* %11, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %30 = call i32 @pcf8583_set_datetime(%struct.i2c_client* %28, %struct.rtc_time* %29, i32 1)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %3, align 4
  br label %90

35:                                               ; preds = %2
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = call i32 @pcf8583_read_mem(%struct.i2c_client* %36, %struct.rtc_mem* %10)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %3, align 4
  br label %90

42:                                               ; preds = %35
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = call i32 @pcf8583_read_mem(%struct.i2c_client* %43, %struct.rtc_mem* %9)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %3, align 4
  br label %90

49:                                               ; preds = %42
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %52, %55
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %8, align 1
  %61 = load i32, i32* %11, align 4
  %62 = udiv i32 %61, 100
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 %63, i8* %64, align 1
  %65 = load i32, i32* %11, align 4
  %66 = urem i32 %65, 100
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %67, i8* %68, align 1
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %71, %74
  %76 = load i8, i8* %8, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %8, align 1
  %80 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %81 = call i32 @pcf8583_write_mem(%struct.i2c_client* %80, %struct.rtc_mem* %9)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %49
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %3, align 4
  br label %90

86:                                               ; preds = %49
  %87 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %88 = call i32 @pcf8583_write_mem(%struct.i2c_client* %87, %struct.rtc_mem* %10)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %84, %47, %40, %33
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @pcf8583_set_datetime(%struct.i2c_client*, %struct.rtc_time*, i32) #1

declare dso_local i32 @pcf8583_read_mem(%struct.i2c_client*, %struct.rtc_mem*) #1

declare dso_local i32 @pcf8583_write_mem(%struct.i2c_client*, %struct.rtc_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
