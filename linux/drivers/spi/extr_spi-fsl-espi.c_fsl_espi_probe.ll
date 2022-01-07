; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.spi_master = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fsl_espi = type { i32, i32, i32, %struct.device*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@fsl_espi_setup = common dso_local global i32 0, align 4
@fsl_espi_cleanup = common dso_local global i32 0, align 4
@fsl_espi_do_one_msg = common dso_local global i32 0, align 4
@fsl_espi_max_message_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't get sys frequency!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fsl_espi_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fsl_espi\00", align 1
@AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"at 0x%p (irq = %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.resource*, i32, i32)* @fsl_espi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_espi_probe(%struct.device* %0, %struct.resource* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_master*, align 8
  %11 = alloca %struct.fsl_espi*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.resource* %1, %struct.resource** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.spi_master* @spi_alloc_master(%struct.device* %13, i32 32)
  store %struct.spi_master* %14, %struct.spi_master** %10, align 8
  %15 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %16 = icmp ne %struct.spi_master* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %165

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %23 = call i32 @dev_set_drvdata(%struct.device* %21, %struct.spi_master* %22)
  %24 = load i32, i32* @SPI_RX_DUAL, align 4
  %25 = load i32, i32* @SPI_CPOL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SPI_CPHA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SPI_CS_HIGH, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SPI_LSB_FIRST, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SPI_LOOP, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %36 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %41 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %40, i32 0, i32 10
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = call i32 @SPI_BPW_RANGE_MASK(i32 4, i32 16)
  %44 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %45 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @fsl_espi_setup, align 4
  %47 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %48 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @fsl_espi_cleanup, align 4
  %50 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %51 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @fsl_espi_do_one_msg, align 4
  %53 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %54 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %56 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* @fsl_espi_max_message_size, align 4
  %58 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %59 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %62 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %64 = call %struct.fsl_espi* @spi_master_get_devdata(%struct.spi_master* %63)
  store %struct.fsl_espi* %64, %struct.fsl_espi** %11, align 8
  %65 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %66 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %65, i32 0, i32 4
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %70 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %69, i32 0, i32 3
  store %struct.device* %68, %struct.device** %70, align 8
  %71 = call i32 (...) @fsl_get_sys_freq()
  %72 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %73 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %75 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %83

78:                                               ; preds = %20
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %12, align 4
  br label %161

83:                                               ; preds = %20
  %84 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %85 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @DIV_ROUND_UP(i32 %86, i32 1024)
  %88 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %89 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %91 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @DIV_ROUND_UP(i32 %92, i32 4)
  %94 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %95 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %97 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %96, i32 0, i32 2
  %98 = call i32 @init_completion(i32* %97)
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load %struct.resource*, %struct.resource** %7, align 8
  %101 = call i32 @devm_ioremap_resource(%struct.device* %99, %struct.resource* %100)
  %102 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %103 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %105 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @IS_ERR(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %83
  %110 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %111 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @PTR_ERR(i32 %112)
  store i32 %113, i32* %12, align 4
  br label %161

114:                                              ; preds = %83
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @fsl_espi_irq, align 4
  %118 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %119 = call i32 @devm_request_irq(%struct.device* %115, i32 %116, i32 %117, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.fsl_espi* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %161

123:                                              ; preds = %114
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = call i32 @fsl_espi_init_regs(%struct.device* %124, i32 1)
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = load i32, i32* @AUTOSUSPEND_TIMEOUT, align 4
  %128 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %126, i32 %127)
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = call i32 @pm_runtime_use_autosuspend(%struct.device* %129)
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i32 @pm_runtime_set_active(%struct.device* %131)
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = call i32 @pm_runtime_enable(%struct.device* %133)
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = call i32 @pm_runtime_get_sync(%struct.device* %135)
  %137 = load %struct.device*, %struct.device** %6, align 8
  %138 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %139 = call i32 @devm_spi_register_master(%struct.device* %137, %struct.spi_master* %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %123
  br label %154

143:                                              ; preds = %123
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = load %struct.fsl_espi*, %struct.fsl_espi** %11, align 8
  %146 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @dev_info(%struct.device* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load %struct.device*, %struct.device** %6, align 8
  %151 = call i32 @pm_runtime_mark_last_busy(%struct.device* %150)
  %152 = load %struct.device*, %struct.device** %6, align 8
  %153 = call i32 @pm_runtime_put_autosuspend(%struct.device* %152)
  store i32 0, i32* %5, align 4
  br label %165

154:                                              ; preds = %142
  %155 = load %struct.device*, %struct.device** %6, align 8
  %156 = call i32 @pm_runtime_put_noidle(%struct.device* %155)
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 @pm_runtime_disable(%struct.device* %157)
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = call i32 @pm_runtime_set_suspended(%struct.device* %159)
  br label %161

161:                                              ; preds = %154, %122, %109, %78
  %162 = load %struct.spi_master*, %struct.spi_master** %10, align 8
  %163 = call i32 @spi_master_put(%struct.spi_master* %162)
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %161, %143, %17
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.spi_master*) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local %struct.fsl_espi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fsl_get_sys_freq(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.fsl_espi*) #1

declare dso_local i32 @fsl_espi_init_regs(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @devm_spi_register_master(%struct.device*, %struct.spi_master*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
