; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lp8841-rtc.c_spi_lp8841_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lp8841-rtc.c_spi_lp8841_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.spi_master = type { i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.spi_lp8841_rtc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_MASTER_HALF_DUPLEX = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@spi_lp8841_rtc_setup = common dso_local global i32 0, align 4
@spi_lp8841_rtc_set_cs = common dso_local global i32 0, align 4
@spi_lp8841_rtc_transfer_one = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get IO address\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot register spi master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_lp8841_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_lp8841_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_lp8841_rtc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_6__* %8, i32 4)
  store %struct.spi_master* %9, %struct.spi_master** %5, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %11 = icmp ne %struct.spi_master* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.spi_master* %17)
  %19 = load i32, i32* @SPI_MASTER_HALF_DUPLEX, align 4
  %20 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %21 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @SPI_CS_HIGH, align 4
  %23 = load i32, i32* @SPI_3WIRE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SPI_LSB_FIRST, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %28 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %33 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @spi_lp8841_rtc_setup, align 4
  %37 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %38 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @spi_lp8841_rtc_set_cs, align 4
  %40 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %41 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @spi_lp8841_rtc_transfer_one, align 4
  %43 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %44 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = call i32 @SPI_BPW_MASK(i32 8)
  %46 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %47 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %49 = call %struct.spi_lp8841_rtc* @spi_master_get_devdata(%struct.spi_master* %48)
  store %struct.spi_lp8841_rtc* %49, %struct.spi_lp8841_rtc** %6, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %50, i32 0)
  %52 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %6, align 8
  %53 = getelementptr inbounds %struct.spi_lp8841_rtc, %struct.spi_lp8841_rtc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.spi_lp8841_rtc*, %struct.spi_lp8841_rtc** %6, align 8
  %55 = getelementptr inbounds %struct.spi_lp8841_rtc, %struct.spi_lp8841_rtc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR_OR_ZERO(i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %15
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_err(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %77

64:                                               ; preds = %15
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %68 = call i32 @devm_spi_register_master(%struct.TYPE_6__* %66, %struct.spi_master* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(%struct.TYPE_6__* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %71, %60
  %78 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %79 = call i32 @spi_master_put(%struct.spi_master* %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %75, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local %struct.spi_lp8841_rtc* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_6__*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
