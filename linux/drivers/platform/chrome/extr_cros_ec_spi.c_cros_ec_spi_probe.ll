; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_spi.c_cros_ec_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.device, i32, i32 }
%struct.device = type { i32 }
%struct.cros_ec_device = type { i32, i64, i32, i32, i32, i32, %struct.cros_ec_spi*, %struct.device* }
%struct.cros_ec_spi = type { i32, %struct.spi_device* }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cros_ec_cmd_xfer_spi = common dso_local global i32 0, align 4
@cros_ec_pkt_xfer_spi = common dso_local global i32 0, align 4
@EC_MSG_PREAMBLE_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"cannot register EC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @cros_ec_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca %struct.cros_ec_spi*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  store i32 8, i32* %11, align 4
  %12 = load i32, i32* @SPI_MODE_0, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = call i32 @spi_setup(%struct.spi_device* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.device* %24, i32 16, i32 %25)
  %27 = bitcast i8* %26 to %struct.cros_ec_spi*
  store %struct.cros_ec_spi* %27, %struct.cros_ec_spi** %6, align 8
  %28 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %29 = icmp eq %struct.cros_ec_spi* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %107

33:                                               ; preds = %23
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %36 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %35, i32 0, i32 1
  store %struct.spi_device* %34, %struct.spi_device** %36, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kzalloc(%struct.device* %37, i32 48, i32 %38)
  %40 = bitcast i8* %39 to %struct.cros_ec_device*
  store %struct.cros_ec_device* %40, %struct.cros_ec_device** %5, align 8
  %41 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %42 = icmp ne %struct.cros_ec_device* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %107

46:                                               ; preds = %33
  %47 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @cros_ec_spi_dt_probe(%struct.cros_ec_spi* %47, %struct.device* %48)
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %52 = call i32 @spi_set_drvdata(%struct.spi_device* %50, %struct.cros_ec_device* %51)
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %55 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %54, i32 0, i32 7
  store %struct.device* %53, %struct.device** %55, align 8
  %56 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %57 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %58 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %57, i32 0, i32 6
  store %struct.cros_ec_spi* %56, %struct.cros_ec_spi** %58, align 8
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %63 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @cros_ec_cmd_xfer_spi, align 4
  %65 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %66 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @cros_ec_pkt_xfer_spi, align 4
  %68 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %69 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %71 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %70, i32 0, i32 1
  %72 = load %struct.spi_device*, %struct.spi_device** %71, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 2
  %74 = call i32 @dev_name(%struct.device* %73)
  %75 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %76 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* @EC_MSG_PREAMBLE_COUNT, align 8
  %78 = add i64 %77, 4
  %79 = add i64 %78, 4
  %80 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %81 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %83 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %82, i32 0, i32 0
  store i32 4, i32* %83, align 8
  %84 = call i32 (...) @ktime_get_ns()
  %85 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %86 = getelementptr inbounds %struct.cros_ec_spi, %struct.cros_ec_spi* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load %struct.cros_ec_spi*, %struct.cros_ec_spi** %6, align 8
  %89 = call i32 @cros_ec_spi_devm_high_pri_alloc(%struct.device* %87, %struct.cros_ec_spi* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %46
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %107

94:                                               ; preds = %46
  %95 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %96 = call i32 @cros_ec_register(%struct.cros_ec_device* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %94
  %104 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %105 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %104, i32 0, i32 2
  %106 = call i32 @device_init_wakeup(%struct.device* %105, i32 1)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %103, %99, %92, %43, %30, %21
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @cros_ec_spi_dt_probe(%struct.cros_ec_spi*, %struct.device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.cros_ec_device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @cros_ec_spi_devm_high_pri_alloc(%struct.device*, %struct.cros_ec_spi*) #1

declare dso_local i32 @cros_ec_register(%struct.cros_ec_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
