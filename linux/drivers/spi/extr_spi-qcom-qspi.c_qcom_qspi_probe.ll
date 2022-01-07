; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qcom_qspi = type { %struct.TYPE_4__*, i32, %struct.device*, i32 }
%struct.TYPE_4__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@QSPI_CLK_CORE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@QSPI_CLK_IFACE = common dso_local global i64 0, align 8
@QSPI_NUM_CLKS = common dso_local global i32 0, align 4
@qcom_qspi_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to request irq %d\0A\00", align 1
@QSPI_NUM_CS = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_MASTER_HALF_DUPLEX = common dso_local global i32 0, align 4
@qcom_qspi_prepare_message = common dso_local global i32 0, align 4
@qcom_qspi_transfer_one = common dso_local global i32 0, align 4
@qcom_qspi_handle_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_qspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_qspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.qcom_qspi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.device* %10, i32 32)
  store %struct.spi_master* %11, %struct.spi_master** %6, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %13 = icmp ne %struct.spi_master* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %140

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.spi_master* %19)
  %21 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %22 = call %struct.qcom_qspi* @spi_master_get_devdata(%struct.spi_master* %21)
  store %struct.qcom_qspi* %22, %struct.qcom_qspi** %7, align 8
  %23 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %24 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %23, i32 0, i32 3
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %28 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %27, i32 0, i32 2
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %29, i32 0)
  %31 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %32 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %34 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %17
  %39 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %40 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %136

43:                                               ; preds = %17
  %44 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %45 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @QSPI_CLK_CORE, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %51 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* @QSPI_CLK_IFACE, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* @QSPI_NUM_CLKS, align 4
  %58 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %59 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @devm_clk_bulk_get(%struct.device* %56, i32 %57, %struct.TYPE_4__* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %43
  br label %136

65:                                               ; preds = %43
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = call i32 @platform_get_irq(%struct.platform_device* %66, i32 0)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %136

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @qcom_qspi_irq, align 4
  %75 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @dev_name(%struct.device* %76)
  %78 = load %struct.qcom_qspi*, %struct.qcom_qspi** %7, align 8
  %79 = call i32 @devm_request_irq(%struct.device* %72, i32 %73, i32 %74, i32 %75, i32 %77, %struct.qcom_qspi* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %136

86:                                               ; preds = %71
  %87 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %88 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %87, i32 0, i32 0
  store i32 300000000, i32* %88, align 4
  %89 = load i32, i32* @QSPI_NUM_CS, align 4
  %90 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %91 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 4
  %92 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %93 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %92, i32 0, i32 1
  store i32 -1, i32* %93, align 4
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.device, %struct.device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %99 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @SPI_MODE_0, align 4
  %102 = load i32, i32* @SPI_TX_DUAL, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @SPI_RX_DUAL, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SPI_TX_QUAD, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SPI_RX_QUAD, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %111 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @SPI_MASTER_HALF_DUPLEX, align 4
  %113 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %114 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @qcom_qspi_prepare_message, align 4
  %116 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %117 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @qcom_qspi_transfer_one, align 4
  %119 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %120 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @qcom_qspi_handle_err, align 4
  %122 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %123 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %125 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = call i32 @pm_runtime_enable(%struct.device* %126)
  %128 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %129 = call i32 @spi_register_master(%struct.spi_master* %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %140

133:                                              ; preds = %86
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = call i32 @pm_runtime_disable(%struct.device* %134)
  br label %136

136:                                              ; preds = %133, %82, %70, %64, %38
  %137 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %138 = call i32 @spi_master_put(%struct.spi_master* %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %132, %14
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.qcom_qspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_bulk_get(%struct.device*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.qcom_qspi*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @spi_register_master(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
