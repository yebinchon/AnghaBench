; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6900.c_max6900_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6900.c_max6900_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@MAX6900_REG_LEN = common dso_local global i32 0, align 4
@MAX6900_REG_SC = common dso_local global i64 0, align 8
@MAX6900_REG_MN = common dso_local global i64 0, align 8
@MAX6900_REG_HR = common dso_local global i64 0, align 8
@MAX6900_REG_DT = common dso_local global i64 0, align 8
@MAX6900_REG_MO = common dso_local global i64 0, align 8
@MAX6900_REG_YR = common dso_local global i64 0, align 8
@MAX6900_REG_CENTURY = common dso_local global i64 0, align 8
@MAX6900_REG_DW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max6900_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6900_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @MAX6900_REG_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = call i32 @max6900_i2c_read_regs(%struct.i2c_client* %17, i32* %16)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %75

23:                                               ; preds = %2
  %24 = load i64, i64* @MAX6900_REG_SC, align 8
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bcd2bin(i32 %26)
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i64, i64* @MAX6900_REG_MN, align 8
  %31 = getelementptr inbounds i32, i32* %16, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bcd2bin(i32 %32)
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* @MAX6900_REG_HR, align 8
  %37 = getelementptr inbounds i32, i32* %16, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 63
  %40 = call i32 @bcd2bin(i32 %39)
  %41 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i64, i64* @MAX6900_REG_DT, align 8
  %44 = getelementptr inbounds i32, i32* %16, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bcd2bin(i32 %45)
  %47 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* @MAX6900_REG_MO, align 8
  %50 = getelementptr inbounds i32, i32* %16, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bcd2bin(i32 %51)
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* @MAX6900_REG_YR, align 8
  %57 = getelementptr inbounds i32, i32* %16, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bcd2bin(i32 %58)
  %60 = load i64, i64* @MAX6900_REG_CENTURY, align 8
  %61 = getelementptr inbounds i32, i32* %16, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bcd2bin(i32 %62)
  %64 = mul nsw i32 %63, 100
  %65 = add nsw i32 %59, %64
  %66 = sub nsw i32 %65, 1900
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* @MAX6900_REG_DW, align 8
  %70 = getelementptr inbounds i32, i32* %16, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bcd2bin(i32 %71)
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %23, %21
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @max6900_i2c_read_regs(%struct.i2c_client*, i32*) #1

declare dso_local i32 @bcd2bin(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
