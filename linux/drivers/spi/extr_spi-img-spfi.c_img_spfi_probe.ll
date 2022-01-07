; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-img-spfi.c_img_spfi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.img_spfi = type { i32, i8*, i8*, i8*, i8*, %struct.TYPE_14__*, i32, i8*, i32, %struct.spi_master* }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@img_spfi_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"spfi\00", align 1
@SPFI_INTERRUPT_IACCESS = common dso_local global i32 0, align 4
@SPFI_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"img,supports-quad-mode\00", align 1
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"spfi-max-frequency\00", align 1
@img_spfi_setup = common dso_local global i32 0, align 4
@img_spfi_cleanup = common dso_local global i32 0, align 4
@img_spfi_transfer_one = common dso_local global i32 0, align 4
@img_spfi_prepare = common dso_local global i32 0, align 4
@img_spfi_unprepare = common dso_local global i32 0, align 4
@img_spfi_handle_err = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Failed to get DMA channels, falling back to PIO mode\0A\00", align 1
@img_spfi_can_dma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @img_spfi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spfi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.img_spfi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_14__* %10, i32 80)
  store %struct.spi_master* %11, %struct.spi_master** %4, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %13 = icmp ne %struct.spi_master* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %357

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.spi_master* %19)
  %21 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %22 = call %struct.img_spfi* @spi_master_get_devdata(%struct.spi_master* %21)
  store %struct.img_spfi* %22, %struct.img_spfi** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %26 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %25, i32 0, i32 5
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %26, align 8
  %27 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %28 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %29 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %28, i32 0, i32 9
  store %struct.spi_master* %27, %struct.spi_master** %29, align 8
  %30 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %31 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %30, i32 0, i32 8
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %6, align 8
  %36 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %37 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %36, i32 0, i32 5
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %38, %struct.resource* %39)
  %41 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %42 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %44 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %43, i32 0, i32 7
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %17
  %49 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %50 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %49, i32 0, i32 7
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %7, align 4
  br label %353

53:                                               ; preds = %17
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %58 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = call i32 @platform_get_irq(%struct.platform_device* %59, i32 0)
  %61 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %62 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %64 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %69 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  br label %353

71:                                               ; preds = %53
  %72 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %73 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %72, i32 0, i32 5
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %76 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @img_spfi_irq, align 4
  %79 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %80 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %81 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %80, i32 0, i32 5
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = call i32 @dev_name(%struct.TYPE_14__* %82)
  %84 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %85 = call i32 @devm_request_irq(%struct.TYPE_14__* %74, i32 %77, i32 %78, i32 %79, i32 %83, %struct.img_spfi* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %71
  br label %353

89:                                               ; preds = %71
  %90 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %91 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %90, i32 0, i32 5
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = call i8* @devm_clk_get(%struct.TYPE_14__* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %95 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %97 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %89
  %102 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %103 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @PTR_ERR(i8* %104)
  store i32 %105, i32* %7, align 4
  br label %353

106:                                              ; preds = %89
  %107 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %108 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %107, i32 0, i32 5
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = call i8* @devm_clk_get(%struct.TYPE_14__* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %112 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %114 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @IS_ERR(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %106
  %119 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %120 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %7, align 4
  br label %353

123:                                              ; preds = %106
  %124 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %125 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @clk_prepare_enable(i8* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %353

131:                                              ; preds = %123
  %132 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %133 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @clk_prepare_enable(i8* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %348

139:                                              ; preds = %131
  %140 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %141 = call i32 @spfi_reset(%struct.img_spfi* %140)
  %142 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %143 = load i32, i32* @SPFI_INTERRUPT_IACCESS, align 4
  %144 = load i32, i32* @SPFI_INTERRUPT_ENABLE, align 4
  %145 = call i32 @spfi_writel(%struct.img_spfi* %142, i32 %143, i32 %144)
  %146 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %147 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %152 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %151, i32 0, i32 15
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @SPI_CPOL, align 4
  %154 = load i32, i32* @SPI_CPHA, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @SPI_TX_DUAL, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @SPI_RX_DUAL, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %161 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %163 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %162, i32 0, i32 5
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @of_property_read_bool(i32 %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %139
  %170 = load i32, i32* @SPI_TX_QUAD, align 4
  %171 = load i32, i32* @SPI_RX_QUAD, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %174 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %169, %139
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %183 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %182, i32 0, i32 14
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = call i32 @SPI_BPW_MASK(i32 32)
  %186 = call i32 @SPI_BPW_MASK(i32 8)
  %187 = or i32 %185, %186
  %188 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %189 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %191 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @clk_get_rate(i8* %192)
  %194 = sdiv i32 %193, 4
  %195 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %196 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  %197 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %198 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @clk_get_rate(i8* %199)
  %201 = sdiv i32 %200, 512
  %202 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %203 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  %204 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %205 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %204, i32 0, i32 5
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @of_property_read_u32(i32 %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %177
  %212 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %213 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %220 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %217, %211
  br label %222

222:                                              ; preds = %221, %177
  %223 = load i32, i32* @img_spfi_setup, align 4
  %224 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %225 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %224, i32 0, i32 13
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* @img_spfi_cleanup, align 4
  %227 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %228 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %227, i32 0, i32 12
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* @img_spfi_transfer_one, align 4
  %230 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %231 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %230, i32 0, i32 11
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @img_spfi_prepare, align 4
  %233 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %234 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %233, i32 0, i32 10
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* @img_spfi_unprepare, align 4
  %236 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %237 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %236, i32 0, i32 9
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* @img_spfi_handle_err, align 4
  %239 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %240 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %239, i32 0, i32 8
  store i32 %238, i32* %240, align 8
  %241 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %242 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %241, i32 0, i32 5
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = call i8* @dma_request_slave_channel(%struct.TYPE_14__* %243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %245 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %246 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %245, i32 0, i32 3
  store i8* %244, i8** %246, align 8
  %247 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %248 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %247, i32 0, i32 5
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = call i8* @dma_request_slave_channel(%struct.TYPE_14__* %249, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %251 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %252 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %251, i32 0, i32 4
  store i8* %250, i8** %252, align 8
  %253 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %254 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %253, i32 0, i32 3
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %222
  %258 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %259 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %258, i32 0, i32 4
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %287, label %262

262:                                              ; preds = %257, %222
  %263 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %264 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %263, i32 0, i32 3
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %269 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %268, i32 0, i32 3
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @dma_release_channel(i8* %270)
  br label %272

272:                                              ; preds = %267, %262
  %273 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %274 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %273, i32 0, i32 4
  %275 = load i8*, i8** %274, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %279 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %278, i32 0, i32 4
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @dma_release_channel(i8* %280)
  br label %282

282:                                              ; preds = %277, %272
  %283 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %284 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %283, i32 0, i32 5
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = call i32 @dev_warn(%struct.TYPE_14__* %285, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %301

287:                                              ; preds = %257
  %288 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %289 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %288, i32 0, i32 3
  %290 = load i8*, i8** %289, align 8
  %291 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %292 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %291, i32 0, i32 7
  store i8* %290, i8** %292, align 8
  %293 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %294 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %293, i32 0, i32 4
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %297 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %296, i32 0, i32 6
  store i8* %295, i8** %297, align 8
  %298 = load i32, i32* @img_spfi_can_dma, align 4
  %299 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %300 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %299, i32 0, i32 5
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %287, %282
  %302 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %303 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %302, i32 0, i32 5
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %303, align 8
  %305 = call i32 @pm_runtime_set_active(%struct.TYPE_14__* %304)
  %306 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %307 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %306, i32 0, i32 5
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %307, align 8
  %309 = call i32 @pm_runtime_enable(%struct.TYPE_14__* %308)
  %310 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %311 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %310, i32 0, i32 5
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %311, align 8
  %313 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %314 = call i32 @devm_spi_register_master(%struct.TYPE_14__* %312, %struct.spi_master* %313)
  store i32 %314, i32* %7, align 4
  %315 = load i32, i32* %7, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %301
  br label %319

318:                                              ; preds = %301
  store i32 0, i32* %2, align 4
  br label %357

319:                                              ; preds = %317
  %320 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %321 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %320, i32 0, i32 5
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %321, align 8
  %323 = call i32 @pm_runtime_disable(%struct.TYPE_14__* %322)
  %324 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %325 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %324, i32 0, i32 4
  %326 = load i8*, i8** %325, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %328, label %333

328:                                              ; preds = %319
  %329 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %330 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %329, i32 0, i32 4
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @dma_release_channel(i8* %331)
  br label %333

333:                                              ; preds = %328, %319
  %334 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %335 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %334, i32 0, i32 3
  %336 = load i8*, i8** %335, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %343

338:                                              ; preds = %333
  %339 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %340 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %339, i32 0, i32 3
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @dma_release_channel(i8* %341)
  br label %343

343:                                              ; preds = %338, %333
  %344 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %345 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %344, i32 0, i32 2
  %346 = load i8*, i8** %345, align 8
  %347 = call i32 @clk_disable_unprepare(i8* %346)
  br label %348

348:                                              ; preds = %343, %138
  %349 = load %struct.img_spfi*, %struct.img_spfi** %5, align 8
  %350 = getelementptr inbounds %struct.img_spfi, %struct.img_spfi* %349, i32 0, i32 1
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @clk_disable_unprepare(i8* %351)
  br label %353

353:                                              ; preds = %348, %130, %118, %101, %88, %67, %48
  %354 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %355 = call i32 @spi_master_put(%struct.spi_master* %354)
  %356 = load i32, i32* %7, align 4
  store i32 %356, i32* %2, align 4
  br label %357

357:                                              ; preds = %353, %318, %14
  %358 = load i32, i32* %2, align 4
  ret i32 %358
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.img_spfi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i32, %struct.img_spfi*) #1

declare dso_local i32 @dev_name(%struct.TYPE_14__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @spfi_reset(%struct.img_spfi*) #1

declare dso_local i32 @spfi_writel(%struct.img_spfi*, i32, i32) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i8* @dma_request_slave_channel(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @dma_release_channel(i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_14__*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_14__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
