; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rs5c348.c_rs5c348_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rs5c348_plat_data* }
%struct.rs5c348_plat_data = type { i32, %struct.rtc_device* }
%struct.rtc_device = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RS5C348_REG_SECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"not found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"spiclk %u KHz.\0A\00", align 1
@RS5C348_REG_CTL1 = common dso_local global i32 0, align 4
@RS5C348_BIT_24H = common dso_local global i32 0, align 4
@rs5c348_rtc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @rs5c348_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c348_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtc_device*, align 8
  %6 = alloca %struct.rs5c348_plat_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rs5c348_plat_data* @devm_kzalloc(%struct.TYPE_5__* %8, i32 16, i32 %9)
  store %struct.rs5c348_plat_data* %10, %struct.rs5c348_plat_data** %6, align 8
  %11 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %6, align 8
  %12 = icmp ne %struct.rs5c348_plat_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %6, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.rs5c348_plat_data* %17, %struct.rs5c348_plat_data** %20, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load i32, i32* @RS5C348_REG_SECS, align 4
  %23 = call i32 @RS5C348_CMD_R(i32 %22)
  %24 = call i32 @spi_w8r8(%struct.spi_device* %21, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %16
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 1
  %34 = call i32 @dev_err(%struct.TYPE_5__* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %79

36:                                               ; preds = %27
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 1
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 500
  %43 = sdiv i32 %42, 1000
  %44 = call i32 @dev_info(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %46 = load i32, i32* @RS5C348_REG_CTL1, align 4
  %47 = call i32 @RS5C348_CMD_R(i32 %46)
  %48 = call i32 @spi_w8r8(%struct.spi_device* %45, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %79

53:                                               ; preds = %36
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @RS5C348_BIT_24H, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %6, align 8
  %60 = getelementptr inbounds %struct.rs5c348_plat_data, %struct.rs5c348_plat_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 1
  %64 = call %struct.rtc_device* @devm_rtc_allocate_device(%struct.TYPE_5__* %63)
  store %struct.rtc_device* %64, %struct.rtc_device** %5, align 8
  %65 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %66 = call i64 @IS_ERR(%struct.rtc_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %70 = call i32 @PTR_ERR(%struct.rtc_device* %69)
  store i32 %70, i32* %2, align 4
  br label %79

71:                                               ; preds = %61
  %72 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %73 = load %struct.rs5c348_plat_data*, %struct.rs5c348_plat_data** %6, align 8
  %74 = getelementptr inbounds %struct.rs5c348_plat_data, %struct.rs5c348_plat_data* %73, i32 0, i32 1
  store %struct.rtc_device* %72, %struct.rtc_device** %74, align 8
  %75 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %76 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %75, i32 0, i32 0
  store i32* @rs5c348_rtc_ops, i32** %76, align 8
  %77 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  %78 = call i32 @rtc_register_device(%struct.rtc_device* %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %71, %68, %51, %31, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.rs5c348_plat_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local i32 @RS5C348_CMD_R(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local %struct.rtc_device* @devm_rtc_allocate_device(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @rtc_register_device(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
