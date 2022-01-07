; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6916.c_max6916_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-max6916.c_max6916_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.rtc_device = type { i32 }

@SPI_MODE_3 = common dso_local global i32 0, align 4
@MAX6916_SECONDS_REG = common dso_local global i32 0, align 4
@MAX6916_CONTROL_REG = common dso_local global i32 0, align 4
@MAX6916_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"MAX6916 RTC CTRL Reg = 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"MAX6916 RTC Status Reg = 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"max6916\00", align 1
@max6916_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max6916_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6916_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load i32, i32* @SPI_MODE_3, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  store i32 8, i32* %11, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call i32 @spi_setup(%struct.spi_device* %12)
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load i32, i32* @MAX6916_SECONDS_REG, align 4
  %17 = call i32 @max6916_read_reg(i32* %15, i32 %16, i8* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = load i32, i32* @MAX6916_CONTROL_REG, align 4
  %26 = call i32 @max6916_read_reg(i32* %24, i32 %25, i8* %5)
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, -129
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 1
  %33 = load i32, i32* @MAX6916_CONTROL_REG, align 4
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @max6916_write_reg(i32* %32, i32 %33, i8 zeroext %34)
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 1
  %38 = load i32, i32* @MAX6916_STATUS_REG, align 4
  %39 = call i32 @max6916_read_reg(i32* %37, i32 %38, i8* %5)
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 27
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %5, align 1
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 1
  %46 = load i32, i32* @MAX6916_STATUS_REG, align 4
  %47 = load i8, i8* %5, align 1
  %48 = call i32 @max6916_write_reg(i32* %45, i32 %46, i8 zeroext %47)
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 1
  %51 = load i32, i32* @MAX6916_CONTROL_REG, align 4
  %52 = call i32 @max6916_read_reg(i32* %50, i32 %51, i8* %5)
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 1
  %55 = load i8, i8* %5, align 1
  %56 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8 zeroext %55)
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 1
  %59 = load i32, i32* @MAX6916_STATUS_REG, align 4
  %60 = call i32 @max6916_read_reg(i32* %58, i32 %59, i8* %5)
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 1
  %63 = load i8, i8* %5, align 1
  %64 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %63)
  %65 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 1
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = call %struct.rtc_device* @devm_rtc_device_register(i32* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* @max6916_rtc_ops, i32 %67)
  store %struct.rtc_device* %68, %struct.rtc_device** %4, align 8
  %69 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %70 = call i64 @IS_ERR(%struct.rtc_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %22
  %73 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %74 = call i32 @PTR_ERR(%struct.rtc_device* %73)
  store i32 %74, i32* %2, align 4
  br label %79

75:                                               ; preds = %22
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %78 = call i32 @spi_set_drvdata(%struct.spi_device* %76, %struct.rtc_device* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %72, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @max6916_read_reg(i32*, i32, i8*) #1

declare dso_local i32 @max6916_write_reg(i32*, i32, i8 zeroext) #1

declare dso_local i32 @dev_info(i32*, i8*, i8 zeroext) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
