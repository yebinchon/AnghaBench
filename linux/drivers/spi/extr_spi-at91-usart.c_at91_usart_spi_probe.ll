; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.resource = type { i32 }
%struct.spi_controller = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.at91_usart_spi = type { i32, i32, i32, i32, i32, i32, %struct.clk*, %struct.clk*, %struct.TYPE_12__* }
%struct.clk = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"usart\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@at91_usart_spi_setup = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_RX = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_TX = common dso_local global i32 0, align 4
@at91_usart_spi_transfer_one = common dso_local global i32 0, align 4
@at91_usart_spi_prepare_message = common dso_local global i32 0, align 4
@at91_usart_spi_unprepare_message = common dso_local global i32 0, align 4
@at91_usart_spi_can_dma = common dso_local global i32 0, align 4
@at91_usart_spi_cleanup = common dso_local global i32 0, align 4
@US_MIN_CLK_DIV = common dso_local global i32 0, align 4
@US_MAX_CLK_DIV = common dso_local global i32 0, align 4
@at91_usart_spi_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"AT91 USART SPI Controller version 0x%x at %pa (irq %d)\0A\00", align 1
@VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_usart_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_usart_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.at91_usart_spi*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = call i32 @to_platform_device(%struct.TYPE_11__* %13)
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(i32 %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %4, align 8
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %226

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = call i32 @to_platform_device(%struct.TYPE_11__* %26)
  %28 = call i32 @platform_get_irq(i32 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %226

33:                                               ; preds = %22
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = call %struct.clk* @devm_clk_get(%struct.TYPE_11__* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %38, %struct.clk** %7, align 8
  %39 = load %struct.clk*, %struct.clk** %7, align 8
  %40 = call i64 @IS_ERR(%struct.clk* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.clk*, %struct.clk** %7, align 8
  %44 = call i32 @PTR_ERR(%struct.clk* %43)
  store i32 %44, i32* %2, align 4
  br label %226

45:                                               ; preds = %33
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call %struct.spi_controller* @spi_alloc_master(%struct.TYPE_12__* %49, i32 48)
  store %struct.spi_controller* %50, %struct.spi_controller** %5, align 8
  %51 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %52 = icmp ne %struct.spi_controller* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %222

54:                                               ; preds = %45
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i32 @at91_usart_gpio_setup(%struct.platform_device* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %222

60:                                               ; preds = %54
  %61 = load i32, i32* @SPI_CPOL, align 4
  %62 = load i32, i32* @SPI_CPHA, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SPI_LOOP, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SPI_CS_HIGH, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %69 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %77 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %76, i32 0, i32 11
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = call i32 @SPI_BPW_MASK(i32 8)
  %80 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %81 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @at91_usart_spi_setup, align 4
  %83 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %84 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @SPI_MASTER_MUST_RX, align 4
  %86 = load i32, i32* @SPI_MASTER_MUST_TX, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %89 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @at91_usart_spi_transfer_one, align 4
  %91 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %92 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @at91_usart_spi_prepare_message, align 4
  %94 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %95 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @at91_usart_spi_unprepare_message, align 4
  %97 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %98 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @at91_usart_spi_can_dma, align 4
  %100 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %101 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @at91_usart_spi_cleanup, align 4
  %103 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %104 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.clk*, %struct.clk** %7, align 8
  %106 = call i32 @clk_get_rate(%struct.clk* %105)
  %107 = load i32, i32* @US_MIN_CLK_DIV, align 4
  %108 = call i8* @DIV_ROUND_UP(i32 %106, i32 %107)
  %109 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %110 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.clk*, %struct.clk** %7, align 8
  %112 = call i32 @clk_get_rate(%struct.clk* %111)
  %113 = load i32, i32* @US_MAX_CLK_DIV, align 4
  %114 = call i8* @DIV_ROUND_UP(i32 %112, i32 %113)
  %115 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %116 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %119 = call i32 @platform_set_drvdata(%struct.platform_device* %117, %struct.spi_controller* %118)
  %120 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %121 = call %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller* %120)
  store %struct.at91_usart_spi* %121, %struct.at91_usart_spi** %6, align 8
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %125 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %124, i32 0, i32 8
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %125, align 8
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.resource*, %struct.resource** %4, align 8
  %129 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_12__* %127, %struct.resource* %128)
  %130 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %131 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %130, i32 0, i32 7
  store %struct.clk* %129, %struct.clk** %131, align 8
  %132 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %133 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %132, i32 0, i32 7
  %134 = load %struct.clk*, %struct.clk** %133, align 8
  %135 = call i64 @IS_ERR(%struct.clk* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %60
  %138 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %139 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %138, i32 0, i32 7
  %140 = load %struct.clk*, %struct.clk** %139, align 8
  %141 = call i32 @PTR_ERR(%struct.clk* %140)
  store i32 %141, i32* %9, align 4
  br label %222

142:                                              ; preds = %60
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %145 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.clk*, %struct.clk** %7, align 8
  %147 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %148 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %147, i32 0, i32 6
  store %struct.clk* %146, %struct.clk** %148, align 8
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @at91_usart_spi_interrupt, align 4
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 @dev_name(%struct.TYPE_12__* %154)
  %156 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %157 = call i32 @devm_request_irq(%struct.TYPE_12__* %150, i32 %151, i32 %152, i32 0, i32 %155, %struct.spi_controller* %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %142
  br label %222

161:                                              ; preds = %142
  %162 = load %struct.clk*, %struct.clk** %7, align 8
  %163 = call i32 @clk_prepare_enable(%struct.clk* %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %222

167:                                              ; preds = %161
  %168 = load %struct.clk*, %struct.clk** %7, align 8
  %169 = call i32 @clk_get_rate(%struct.clk* %168)
  %170 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %171 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  %172 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %173 = call i32 @at91_usart_spi_init(%struct.at91_usart_spi* %172)
  %174 = load %struct.resource*, %struct.resource** %4, align 8
  %175 = getelementptr inbounds %struct.resource, %struct.resource* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %178 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = call i32 @to_platform_device(%struct.TYPE_11__* %182)
  %184 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %185 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %187 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %188 = call i32 @at91_usart_spi_configure_dma(%struct.spi_controller* %186, %struct.at91_usart_spi* %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %167
  br label %219

192:                                              ; preds = %167
  %193 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %194 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %193, i32 0, i32 2
  %195 = call i32 @spin_lock_init(i32* %194)
  %196 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %197 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %196, i32 0, i32 1
  %198 = call i32 @init_completion(i32* %197)
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %202 = call i32 @devm_spi_register_master(%struct.TYPE_12__* %200, %struct.spi_controller* %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %192
  br label %216

206:                                              ; preds = %192
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %210 = load i32, i32* @VERSION, align 4
  %211 = call i32 @at91_usart_spi_readl(%struct.at91_usart_spi* %209, i32 %210)
  %212 = load %struct.resource*, %struct.resource** %4, align 8
  %213 = getelementptr inbounds %struct.resource, %struct.resource* %212, i32 0, i32 0
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @dev_info(%struct.TYPE_12__* %208, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %211, i32* %213, i32 %214)
  store i32 0, i32* %2, align 4
  br label %226

216:                                              ; preds = %205
  %217 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %218 = call i32 @at91_usart_spi_release_dma(%struct.spi_controller* %217)
  br label %219

219:                                              ; preds = %216, %191
  %220 = load %struct.clk*, %struct.clk** %7, align 8
  %221 = call i32 @clk_disable_unprepare(%struct.clk* %220)
  br label %222

222:                                              ; preds = %219, %166, %160, %137, %59, %53
  %223 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %224 = call i32 @spi_master_put(%struct.spi_controller* %223)
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %222, %206, %42, %31, %19
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.resource* @platform_get_resource(i32, i32, i32) #1

declare dso_local i32 @to_platform_device(%struct.TYPE_11__*) #1

declare dso_local i32 @platform_get_irq(i32, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @at91_usart_gpio_setup(%struct.platform_device*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_controller*) #1

declare dso_local %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller*) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.spi_controller*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @at91_usart_spi_init(%struct.at91_usart_spi*) #1

declare dso_local i32 @at91_usart_spi_configure_dma(%struct.spi_controller*, %struct.at91_usart_spi*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_12__*, %struct.spi_controller*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @at91_usart_spi_readl(%struct.at91_usart_spi*, i32) #1

declare dso_local i32 @at91_usart_spi_release_dma(%struct.spi_controller*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @spi_master_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
