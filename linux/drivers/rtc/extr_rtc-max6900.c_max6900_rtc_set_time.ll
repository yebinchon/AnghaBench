; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6900.c_max6900_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6900.c_max6900_rtc_set_time.c"
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
@MAX6900_REG_DW = common dso_local global i64 0, align 8
@MAX6900_REG_YR = common dso_local global i64 0, align 8
@MAX6900_REG_CENTURY = common dso_local global i64 0, align 8
@MAX6900_REG_CT_WP = common dso_local global i32 0, align 4
@MAX6900_REG_CT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @max6900_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6900_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.i2c_client* @to_i2c_client(%struct.device* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @MAX6900_REG_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = call i32 @max6900_i2c_clear_write_protect(%struct.i2c_client* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %86

23:                                               ; preds = %2
  %24 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bin2bcd(i32 %26)
  %28 = load i64, i64* @MAX6900_REG_SC, align 8
  %29 = getelementptr inbounds i32, i32* %16, i64 %28
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bin2bcd(i32 %32)
  %34 = load i64, i64* @MAX6900_REG_MN, align 8
  %35 = getelementptr inbounds i32, i32* %16, i64 %34
  store i32 %33, i32* %35, align 4
  %36 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bin2bcd(i32 %38)
  %40 = load i64, i64* @MAX6900_REG_HR, align 8
  %41 = getelementptr inbounds i32, i32* %16, i64 %40
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bin2bcd(i32 %44)
  %46 = load i64, i64* @MAX6900_REG_DT, align 8
  %47 = getelementptr inbounds i32, i32* %16, i64 %46
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @bin2bcd(i32 %51)
  %53 = load i64, i64* @MAX6900_REG_MO, align 8
  %54 = getelementptr inbounds i32, i32* %16, i64 %53
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bin2bcd(i32 %57)
  %59 = load i64, i64* @MAX6900_REG_DW, align 8
  %60 = getelementptr inbounds i32, i32* %16, i64 %59
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = srem i32 %63, 100
  %65 = call i32 @bin2bcd(i32 %64)
  %66 = load i64, i64* @MAX6900_REG_YR, align 8
  %67 = getelementptr inbounds i32, i32* %16, i64 %66
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1900
  %72 = sdiv i32 %71, 100
  %73 = call i32 @bin2bcd(i32 %72)
  %74 = load i64, i64* @MAX6900_REG_CENTURY, align 8
  %75 = getelementptr inbounds i32, i32* %16, i64 %74
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @MAX6900_REG_CT_WP, align 4
  %77 = load i64, i64* @MAX6900_REG_CT, align 8
  %78 = getelementptr inbounds i32, i32* %16, i64 %77
  store i32 %76, i32* %78, align 4
  %79 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %80 = call i32 @max6900_i2c_write_regs(%struct.i2c_client* %79, i32* %16)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %23
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %86

85:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %83, %21
  %87 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @max6900_i2c_clear_write_protect(%struct.i2c_client*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @max6900_i2c_write_regs(%struct.i2c_client*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
