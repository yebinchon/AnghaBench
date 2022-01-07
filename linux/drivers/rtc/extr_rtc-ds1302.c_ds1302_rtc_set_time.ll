; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1302.c_ds1302_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1302.c_ds1302_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32 }

@RTC_CLCK_LEN = common dso_local global i32 0, align 4
@RTC_ADDR_CTRL = common dso_local global i32 0, align 4
@RTC_CMD_WRITE = common dso_local global i32 0, align 4
@RTC_CMD_WRITE_ENABLE = common dso_local global i32 0, align 4
@RTC_CLCK_BURST = common dso_local global i32 0, align 4
@RTC_CMD_WRITE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @ds1302_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1302_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.spi_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.spi_device* %13, %struct.spi_device** %6, align 8
  %14 = load i32, i32* @RTC_CLCK_LEN, align 4
  %15 = add nsw i32 1, %14
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* @RTC_ADDR_CTRL, align 4
  %20 = shl i32 %19, 1
  %21 = load i32, i32* @RTC_CMD_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %25 = load i32, i32* @RTC_CMD_WRITE_ENABLE, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %28 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %29 = call i32 @spi_write_then_read(%struct.spi_device* %28, i32* %18, i32 2, i32* null, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %98

34:                                               ; preds = %2
  store i32* %18, i32** %9, align 8
  %35 = load i32, i32* @RTC_CLCK_BURST, align 4
  %36 = shl i32 %35, 1
  %37 = load i32, i32* @RTC_CMD_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @bin2bcd(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %48 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @bin2bcd(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %55 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @bin2bcd(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %62 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @bin2bcd(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %69 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i8* @bin2bcd(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %77 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %83 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %84 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = srem i32 %85, 100
  %87 = call i8* @bin2bcd(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* @RTC_CMD_WRITE_DISABLE, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %95 = mul nuw i64 4, %16
  %96 = trunc i64 %95 to i32
  %97 = call i32 @spi_write_then_read(%struct.spi_device* %94, i32* %18, i32 %96, i32* null, i32 0)
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %34, %32
  %99 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.spi_device* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i8* @bin2bcd(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
