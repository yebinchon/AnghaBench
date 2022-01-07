; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spi_controller = type { i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.resource = type { i32 }
%struct.nxp_fspi = type { i32, i8*, i8*, i32, i32, i8*, i8*, i32, %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_OCTAL = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_OCTAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fspi_base\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fspi_mmap\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"fspi_en\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fspi\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"can not enable the clock\0A\00", align 1
@nxp_fspi_irq_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@NXP_FSPI_MAX_CHIPSELECT = common dso_local global i32 0, align 4
@nxp_fspi_mem_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"NXP FSPI probe failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nxp_fspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_fspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.nxp_fspi*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = call %struct.spi_controller* @spi_alloc_master(%struct.device* %16, i32 64)
  store %struct.spi_controller* %17, %struct.spi_controller** %4, align 8
  %18 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %19 = icmp ne %struct.spi_controller* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %198

23:                                               ; preds = %1
  %24 = load i32, i32* @SPI_RX_DUAL, align 4
  %25 = load i32, i32* @SPI_RX_QUAD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SPI_RX_OCTAL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SPI_TX_DUAL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SPI_TX_QUAD, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SPI_TX_OCTAL, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %36 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %38 = call %struct.nxp_fspi* @spi_controller_get_devdata(%struct.spi_controller* %37)
  store %struct.nxp_fspi* %38, %struct.nxp_fspi** %8, align 8
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %41 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %40, i32 0, i32 8
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i32 @of_device_get_match_data(%struct.device* %42)
  %44 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %45 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %47 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %23
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %192

53:                                               ; preds = %23
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.nxp_fspi* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %57, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %59, %struct.resource** %7, align 8
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load %struct.resource*, %struct.resource** %7, align 8
  %62 = call i8* @devm_ioremap_resource(%struct.device* %60, %struct.resource* %61)
  %63 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %64 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %66 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %53
  %71 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %72 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %9, align 4
  br label %192

75:                                               ; preds = %53
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load i32, i32* @IORESOURCE_MEM, align 4
  %78 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %76, i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %78, %struct.resource** %7, align 8
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load %struct.resource*, %struct.resource** %7, align 8
  %81 = call i8* @devm_ioremap_resource(%struct.device* %79, %struct.resource* %80)
  %82 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %83 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %85 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %75
  %90 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %91 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %90, i32 0, i32 5
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %9, align 4
  br label %192

94:                                               ; preds = %75
  %95 = load %struct.resource*, %struct.resource** %7, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %99 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.resource*, %struct.resource** %7, align 8
  %101 = call i32 @resource_size(%struct.resource* %100)
  %102 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %103 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = call i8* @devm_clk_get(%struct.device* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %107 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %109 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %94
  %114 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %115 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %9, align 4
  br label %192

118:                                              ; preds = %94
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = call i8* @devm_clk_get(%struct.device* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %122 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %124 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @IS_ERR(i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %130 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @PTR_ERR(i8* %131)
  store i32 %132, i32* %9, align 4
  br label %192

133:                                              ; preds = %118
  %134 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %135 = call i32 @nxp_fspi_clk_prep_enable(%struct.nxp_fspi* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.device*, %struct.device** %5, align 8
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %192

141:                                              ; preds = %133
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = call i32 @platform_get_irq(%struct.platform_device* %142, i32 0)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %189

147:                                              ; preds = %141
  %148 = load %struct.device*, %struct.device** %5, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @nxp_fspi_irq_handler, align 4
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %155 = call i32 @devm_request_irq(%struct.device* %148, i32 %149, i32 %150, i32 0, i32 %153, %struct.nxp_fspi* %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %147
  %159 = load %struct.device*, %struct.device** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  br label %189

162:                                              ; preds = %147
  %163 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %164 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %163, i32 0, i32 0
  %165 = call i32 @mutex_init(i32* %164)
  %166 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %167 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %166, i32 0, i32 1
  store i32 -1, i32* %167, align 4
  %168 = load i32, i32* @NXP_FSPI_MAX_CHIPSELECT, align 4
  %169 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %170 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %172 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %171, i32 0, i32 3
  store i32* @nxp_fspi_mem_ops, i32** %172, align 8
  %173 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %174 = call i32 @nxp_fspi_default_setup(%struct.nxp_fspi* %173)
  %175 = load %struct.device_node*, %struct.device_node** %6, align 8
  %176 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %177 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  store %struct.device_node* %175, %struct.device_node** %178, align 8
  %179 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %180 = call i32 @spi_register_controller(%struct.spi_controller* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %162
  br label %185

184:                                              ; preds = %162
  store i32 0, i32* %2, align 4
  br label %198

185:                                              ; preds = %183
  %186 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %187 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %186, i32 0, i32 0
  %188 = call i32 @mutex_destroy(i32* %187)
  br label %189

189:                                              ; preds = %185, %158, %146
  %190 = load %struct.nxp_fspi*, %struct.nxp_fspi** %8, align 8
  %191 = call i32 @nxp_fspi_clk_disable_unprep(%struct.nxp_fspi* %190)
  br label %192

192:                                              ; preds = %189, %138, %128, %113, %89, %70, %50
  %193 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %194 = call i32 @spi_controller_put(%struct.spi_controller* %193)
  %195 = load %struct.device*, %struct.device** %5, align 8
  %196 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %192, %184, %20
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.nxp_fspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nxp_fspi*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @nxp_fspi_clk_prep_enable(%struct.nxp_fspi*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.nxp_fspi*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nxp_fspi_default_setup(%struct.nxp_fspi*) #1

declare dso_local i32 @spi_register_controller(%struct.spi_controller*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @nxp_fspi_clk_disable_unprep(%struct.nxp_fspi*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
