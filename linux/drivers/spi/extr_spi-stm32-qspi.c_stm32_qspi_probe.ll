; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.spi_controller = type { i32, i32, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.reset_control = type { i32 }
%struct.stm32_qspi = type { i64, i32, %struct.device*, %struct.reset_control*, i32, i32, %struct.reset_control*, i32, %struct.reset_control*, %struct.spi_controller* }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"qspi\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"qspi_mm\00", align 1
@STM32_QSPI_MAX_MMAP_SZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@stm32_qspi_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"can not enable the clock\0A\00", align 1
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@stm32_qspi_setup = common dso_local global i32 0, align 4
@stm32_qspi_mem_ops = common dso_local global i32 0, align 4
@STM32_QSPI_MAX_NORCHIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_qspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_qspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.reset_control*, align 8
  %7 = alloca %struct.stm32_qspi*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.spi_controller* @spi_alloc_master(%struct.device* %13, i32 72)
  store %struct.spi_controller* %14, %struct.spi_controller** %5, align 8
  %15 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %16 = icmp ne %struct.spi_controller* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %205

20:                                               ; preds = %1
  %21 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %22 = call %struct.stm32_qspi* @spi_controller_get_devdata(%struct.spi_controller* %21)
  store %struct.stm32_qspi* %22, %struct.stm32_qspi** %7, align 8
  %23 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %24 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %25 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %24, i32 0, i32 9
  store %struct.spi_controller* %23, %struct.spi_controller** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %28, %struct.resource** %8, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = call i8* @devm_ioremap_resource(%struct.device* %29, %struct.resource* %30)
  %32 = bitcast i8* %31 to %struct.reset_control*
  %33 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %34 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %33, i32 0, i32 8
  store %struct.reset_control* %32, %struct.reset_control** %34, align 8
  %35 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %36 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %35, i32 0, i32 8
  %37 = load %struct.reset_control*, %struct.reset_control** %36, align 8
  %38 = call i64 @IS_ERR(%struct.reset_control* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %20
  %41 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %42 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %41, i32 0, i32 8
  %43 = load %struct.reset_control*, %struct.reset_control** %42, align 8
  %44 = call i32 @PTR_ERR(%struct.reset_control* %43)
  store i32 %44, i32* %9, align 4
  br label %201

45:                                               ; preds = %20
  %46 = load %struct.resource*, %struct.resource** %8, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %50 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load i32, i32* @IORESOURCE_MEM, align 4
  %53 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %51, i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %53, %struct.resource** %8, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.resource*, %struct.resource** %8, align 8
  %56 = call i8* @devm_ioremap_resource(%struct.device* %54, %struct.resource* %55)
  %57 = bitcast i8* %56 to %struct.reset_control*
  %58 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %59 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %58, i32 0, i32 6
  store %struct.reset_control* %57, %struct.reset_control** %59, align 8
  %60 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %61 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %60, i32 0, i32 6
  %62 = load %struct.reset_control*, %struct.reset_control** %61, align 8
  %63 = call i64 @IS_ERR(%struct.reset_control* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %45
  %66 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %67 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %66, i32 0, i32 6
  %68 = load %struct.reset_control*, %struct.reset_control** %67, align 8
  %69 = call i32 @PTR_ERR(%struct.reset_control* %68)
  store i32 %69, i32* %9, align 4
  br label %201

70:                                               ; preds = %45
  %71 = load %struct.resource*, %struct.resource** %8, align 8
  %72 = call i64 @resource_size(%struct.resource* %71)
  %73 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %74 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %76 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @STM32_QSPI_MAX_MMAP_SZ, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %201

83:                                               ; preds = %70
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = call i32 @platform_get_irq(%struct.platform_device* %84, i32 0)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %2, align 4
  br label %205

90:                                               ; preds = %83
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @stm32_qspi_irq, align 4
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @dev_name(%struct.device* %94)
  %96 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %97 = call i32 @devm_request_irq(%struct.device* %91, i32 %92, i32 %93, i32 0, i32 %95, %struct.stm32_qspi* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %201

103:                                              ; preds = %90
  %104 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %105 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %104, i32 0, i32 5
  %106 = call i32 @init_completion(i32* %105)
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call %struct.reset_control* @devm_clk_get(%struct.device* %107, i32* null)
  %109 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %110 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %109, i32 0, i32 3
  store %struct.reset_control* %108, %struct.reset_control** %110, align 8
  %111 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %112 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %111, i32 0, i32 3
  %113 = load %struct.reset_control*, %struct.reset_control** %112, align 8
  %114 = call i64 @IS_ERR(%struct.reset_control* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %118 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %117, i32 0, i32 3
  %119 = load %struct.reset_control*, %struct.reset_control** %118, align 8
  %120 = call i32 @PTR_ERR(%struct.reset_control* %119)
  store i32 %120, i32* %9, align 4
  br label %201

121:                                              ; preds = %103
  %122 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %123 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %122, i32 0, i32 3
  %124 = load %struct.reset_control*, %struct.reset_control** %123, align 8
  %125 = call i32 @clk_get_rate(%struct.reset_control* %124)
  %126 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %127 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %129 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  br label %201

135:                                              ; preds = %121
  %136 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %137 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %136, i32 0, i32 3
  %138 = load %struct.reset_control*, %struct.reset_control** %137, align 8
  %139 = call i32 @clk_prepare_enable(%struct.reset_control* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %201

145:                                              ; preds = %135
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = call %struct.reset_control* @devm_reset_control_get_exclusive(%struct.device* %146, i32* null)
  store %struct.reset_control* %147, %struct.reset_control** %6, align 8
  %148 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %149 = call i64 @IS_ERR(%struct.reset_control* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %153 = call i32 @reset_control_assert(%struct.reset_control* %152)
  %154 = call i32 @udelay(i32 2)
  %155 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %156 = call i32 @reset_control_deassert(%struct.reset_control* %155)
  br label %157

157:                                              ; preds = %151, %145
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %160 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %159, i32 0, i32 2
  store %struct.device* %158, %struct.device** %160, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %163 = call i32 @platform_set_drvdata(%struct.platform_device* %161, %struct.stm32_qspi* %162)
  %164 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %165 = call i32 @stm32_qspi_dma_setup(%struct.stm32_qspi* %164)
  %166 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %167 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %166, i32 0, i32 1
  %168 = call i32 @mutex_init(i32* %167)
  %169 = load i32, i32* @SPI_RX_DUAL, align 4
  %170 = load i32, i32* @SPI_RX_QUAD, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @SPI_TX_DUAL, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @SPI_TX_QUAD, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %177 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @stm32_qspi_setup, align 4
  %179 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %180 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  %181 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %182 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %181, i32 0, i32 1
  store i32 -1, i32* %182, align 4
  %183 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %184 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %183, i32 0, i32 4
  store i32* @stm32_qspi_mem_ops, i32** %184, align 8
  %185 = load i32, i32* @STM32_QSPI_MAX_NORCHIP, align 4
  %186 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %187 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = getelementptr inbounds %struct.device, %struct.device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %192 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 8
  %194 = load %struct.device*, %struct.device** %4, align 8
  %195 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %196 = call i32 @devm_spi_register_master(%struct.device* %194, %struct.spi_controller* %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %157
  store i32 0, i32* %2, align 4
  br label %205

200:                                              ; preds = %157
  br label %201

201:                                              ; preds = %200, %142, %132, %116, %100, %80, %65, %40
  %202 = load %struct.stm32_qspi*, %struct.stm32_qspi** %7, align 8
  %203 = call i32 @stm32_qspi_release(%struct.stm32_qspi* %202)
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %201, %199, %88, %17
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.stm32_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.stm32_qspi*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_get_rate(%struct.reset_control*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_qspi*) #1

declare dso_local i32 @stm32_qspi_dma_setup(%struct.stm32_qspi*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_spi_register_master(%struct.device*, %struct.spi_controller*) #1

declare dso_local i32 @stm32_qspi_release(%struct.stm32_qspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
