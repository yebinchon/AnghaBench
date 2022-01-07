; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.davinci_spi = type { i32, i32, i32, i64, i32*, i32*, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32*, %struct.davinci_spi_platform_data }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.spi_master* }
%struct.davinci_spi_platform_data = type { i64, i64, i32, i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@davinci_spi_irq = common dso_local global i32 0, align 4
@dummy_thread_fn = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_RX = common dso_local global i32 0, align 4
@davinci_spi_setup = common dso_local global i32 0, align 4
@davinci_spi_cleanup = common dso_local global i32 0, align 4
@davinci_spi_can_dma = common dso_local global i32 0, align 4
@davinci_spi_chipselect = common dso_local global i32 0, align 4
@davinci_spi_setup_transfer = common dso_local global i32 0, align 4
@SPI_NO_CS = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@SPI_CS_WORD = common dso_local global i32 0, align 4
@SPI_VERSION_2 = common dso_local global i64 0, align 8
@SPI_READY = common dso_local global i32 0, align 4
@davinci_spi_bufs = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DMA is not supported (%d)\0A\00", align 1
@davinci_spi_rx_buf_u8 = common dso_local global i32 0, align 4
@davinci_spi_tx_buf_u8 = common dso_local global i32 0, align 4
@SPIGCR0 = common dso_local global i64 0, align 8
@SPIPC0_DIFUN_MASK = common dso_local global i32 0, align 4
@SPIPC0_DOFUN_MASK = common dso_local global i32 0, align 4
@SPIPC0_CLKFUN_MASK = common dso_local global i32 0, align 4
@SPIPC0 = common dso_local global i64 0, align 8
@SPI_INTLVL_1 = common dso_local global i32 0, align 4
@SPILVL = common dso_local global i64 0, align 8
@SPI_INTLVL_0 = common dso_local global i32 0, align 4
@CS_DEFAULT = common dso_local global i32 0, align 4
@SPIDEF = common dso_local global i64 0, align 8
@SPIGCR1 = common dso_local global i64 0, align 8
@SPIGCR1_CLKMOD_MASK = common dso_local global i32 0, align 4
@SPIGCR1_MASTER_MASK = common dso_local global i32 0, align 4
@SPIGCR1_POWERDOWN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Controller at 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.davinci_spi*, align 8
  %6 = alloca %struct.davinci_spi_platform_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_13__* %11, i32 120)
  store %struct.spi_master* %12, %struct.spi_master** %4, align 8
  %13 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %14 = icmp eq %struct.spi_master* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %382

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.spi_master* %20)
  %22 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %23 = call %struct.davinci_spi* @spi_master_get_devdata(%struct.spi_master* %22)
  store %struct.davinci_spi* %23, %struct.davinci_spi** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.davinci_spi_platform_data* @dev_get_platdata(%struct.TYPE_13__* %25)
  %27 = icmp ne %struct.davinci_spi_platform_data* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call %struct.davinci_spi_platform_data* @dev_get_platdata(%struct.TYPE_13__* %30)
  store %struct.davinci_spi_platform_data* %31, %struct.davinci_spi_platform_data** %6, align 8
  %32 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %33 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %32, i32 0, i32 13
  %34 = load %struct.davinci_spi_platform_data*, %struct.davinci_spi_platform_data** %6, align 8
  %35 = bitcast %struct.davinci_spi_platform_data* %33 to i8*
  %36 = bitcast %struct.davinci_spi_platform_data* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  br label %45

37:                                               ; preds = %18
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %40 = call i32 @spi_davinci_get_pdata(%struct.platform_device* %38, %struct.davinci_spi* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %379

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %47 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %46, i32 0, i32 13
  store %struct.davinci_spi_platform_data* %47, %struct.davinci_spi_platform_data** %6, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.davinci_spi_platform_data*, %struct.davinci_spi_platform_data** %6, align 8
  %51 = getelementptr inbounds %struct.davinci_spi_platform_data, %struct.davinci_spi_platform_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32* @devm_kcalloc(%struct.TYPE_13__* %49, i32 %52, i32 4, i32 %53)
  %55 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %56 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %55, i32 0, i32 12
  store i32* %54, i32** %56, align 8
  %57 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %58 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %57, i32 0, i32 12
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %379

64:                                               ; preds = %45
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load i32, i32* @IORESOURCE_MEM, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %65, i32 %66, i32 0)
  store %struct.resource* %67, %struct.resource** %7, align 8
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = icmp eq %struct.resource* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %379

73:                                               ; preds = %64
  %74 = load %struct.resource*, %struct.resource** %7, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %78 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.resource*, %struct.resource** %7, align 8
  %82 = call i32 @devm_ioremap_resource(%struct.TYPE_13__* %80, %struct.resource* %81)
  %83 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %84 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %86 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %73
  %91 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %92 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %8, align 4
  br label %379

95:                                               ; preds = %73
  %96 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %97 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %96, i32 0, i32 10
  %98 = call i32 @init_completion(i32* %97)
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = call i32 @platform_get_irq(%struct.platform_device* %99, i32 0)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %95
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %379

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %113 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %117 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @davinci_spi_irq, align 4
  %120 = load i32, i32* @dummy_thread_fn, align 4
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_name(%struct.TYPE_13__* %122)
  %124 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %125 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %115, i32 %118, i32 %119, i32 %120, i32 0, i32 %123, %struct.davinci_spi* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %110
  br label %379

129:                                              ; preds = %110
  %130 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %131 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %132 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  store %struct.spi_master* %130, %struct.spi_master** %133, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i32 @devm_clk_get(%struct.TYPE_13__* %135, i32* null)
  %137 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %138 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %140 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @IS_ERR(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %129
  %145 = load i32, i32* @ENODEV, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %8, align 4
  br label %379

147:                                              ; preds = %129
  %148 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %149 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @clk_prepare_enable(i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %379

155:                                              ; preds = %147
  %156 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %157 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %156, i32 0, i32 0
  store i32 1, i32* %157, align 4
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %163 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %162, i32 0, i32 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 4
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %169 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 4
  %170 = load %struct.davinci_spi_platform_data*, %struct.davinci_spi_platform_data** %6, align 8
  %171 = getelementptr inbounds %struct.davinci_spi_platform_data, %struct.davinci_spi_platform_data* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %174 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  %175 = call i32 @SPI_BPW_RANGE_MASK(i32 2, i32 16)
  %176 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %177 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @SPI_MASTER_MUST_RX, align 4
  %179 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %180 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @davinci_spi_setup, align 4
  %182 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %183 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @davinci_spi_cleanup, align 4
  %185 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %186 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @davinci_spi_can_dma, align 4
  %188 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %189 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @davinci_spi_chipselect, align 4
  %191 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %192 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  store i32 %190, i32* %193, align 4
  %194 = load i32, i32* @davinci_spi_setup_transfer, align 4
  %195 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %196 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  store i32 %194, i32* %197, align 8
  %198 = load %struct.davinci_spi_platform_data*, %struct.davinci_spi_platform_data** %6, align 8
  %199 = getelementptr inbounds %struct.davinci_spi_platform_data, %struct.davinci_spi_platform_data* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %202 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 8
  %203 = load %struct.davinci_spi_platform_data*, %struct.davinci_spi_platform_data** %6, align 8
  %204 = getelementptr inbounds %struct.davinci_spi_platform_data, %struct.davinci_spi_platform_data* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %207 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %206, i32 0, i32 3
  store i64 %205, i64* %207, align 8
  %208 = load i32, i32* @SPI_NO_CS, align 4
  %209 = load i32, i32* @SPI_LSB_FIRST, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @SPI_LOOP, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @SPI_CS_WORD, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %216 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 8
  %218 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %219 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @SPI_VERSION_2, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %155
  %224 = load i32, i32* @SPI_READY, align 4
  %225 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %226 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %224
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %223, %155
  %231 = load i32, i32* @davinci_spi_bufs, align 4
  %232 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %233 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  store i32 %231, i32* %234, align 4
  %235 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %236 = call i32 @davinci_spi_request_dma(%struct.davinci_spi* %235)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @EPROBE_DEFER, align 4
  %239 = sub nsw i32 0, %238
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %230
  br label %374

242:                                              ; preds = %230
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %246, i32 0, i32 0
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @dev_info(%struct.TYPE_13__* %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %248)
  %250 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %251 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %250, i32 0, i32 5
  store i32* null, i32** %251, align 8
  %252 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %253 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %252, i32 0, i32 4
  store i32* null, i32** %253, align 8
  br label %254

254:                                              ; preds = %245, %242
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* @davinci_spi_rx_buf_u8, align 4
  %257 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %258 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %257, i32 0, i32 8
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* @davinci_spi_tx_buf_u8, align 4
  %260 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %261 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %260, i32 0, i32 7
  store i32 %259, i32* %261, align 8
  %262 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %263 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* @SPIGCR0, align 8
  %267 = add nsw i64 %265, %266
  %268 = call i32 @iowrite32(i32 0, i64 %267)
  %269 = call i32 @udelay(i32 100)
  %270 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %271 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = load i64, i64* @SPIGCR0, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @iowrite32(i32 1, i64 %275)
  %277 = load i32, i32* @SPIPC0_DIFUN_MASK, align 4
  %278 = load i32, i32* @SPIPC0_DOFUN_MASK, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* @SPIPC0_CLKFUN_MASK, align 4
  %281 = or i32 %279, %280
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %284 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = load i64, i64* @SPIPC0, align 8
  %288 = add nsw i64 %286, %287
  %289 = call i32 @iowrite32(i32 %282, i64 %288)
  %290 = load %struct.davinci_spi_platform_data*, %struct.davinci_spi_platform_data** %6, align 8
  %291 = getelementptr inbounds %struct.davinci_spi_platform_data, %struct.davinci_spi_platform_data* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %255
  %295 = load i32, i32* @SPI_INTLVL_1, align 4
  %296 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %297 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = load i64, i64* @SPILVL, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 @iowrite32(i32 %295, i64 %301)
  br label %312

303:                                              ; preds = %255
  %304 = load i32, i32* @SPI_INTLVL_0, align 4
  %305 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %306 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = load i64, i64* @SPILVL, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @iowrite32(i32 %304, i64 %310)
  br label %312

312:                                              ; preds = %303, %294
  %313 = load i32, i32* @CS_DEFAULT, align 4
  %314 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %315 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = load i64, i64* @SPIDEF, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @iowrite32(i32 %313, i64 %319)
  %321 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %322 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = sext i32 %323 to i64
  %325 = load i64, i64* @SPIGCR1, align 8
  %326 = add nsw i64 %324, %325
  %327 = load i32, i32* @SPIGCR1_CLKMOD_MASK, align 4
  %328 = call i32 @set_io_bits(i64 %326, i32 %327)
  %329 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %330 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = load i64, i64* @SPIGCR1, align 8
  %334 = add nsw i64 %332, %333
  %335 = load i32, i32* @SPIGCR1_MASTER_MASK, align 4
  %336 = call i32 @set_io_bits(i64 %334, i32 %335)
  %337 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %338 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = load i64, i64* @SPIGCR1, align 8
  %342 = add nsw i64 %340, %341
  %343 = load i32, i32* @SPIGCR1_POWERDOWN_MASK, align 4
  %344 = call i32 @set_io_bits(i64 %342, i32 %343)
  %345 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %346 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %345, i32 0, i32 6
  %347 = call i32 @spi_bitbang_start(%struct.TYPE_12__* %346)
  store i32 %347, i32* %8, align 4
  %348 = load i32, i32* %8, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %312
  br label %359

351:                                              ; preds = %312
  %352 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %353 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %352, i32 0, i32 0
  %354 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %355 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @dev_info(%struct.TYPE_13__* %353, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %356)
  %358 = load i32, i32* %8, align 4
  store i32 %358, i32* %2, align 4
  br label %384

359:                                              ; preds = %350
  %360 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %361 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %360, i32 0, i32 5
  %362 = load i32*, i32** %361, align 8
  %363 = icmp ne i32* %362, null
  br i1 %363, label %364, label %373

364:                                              ; preds = %359
  %365 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %366 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %365, i32 0, i32 5
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 @dma_release_channel(i32* %367)
  %369 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %370 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %369, i32 0, i32 4
  %371 = load i32*, i32** %370, align 8
  %372 = call i32 @dma_release_channel(i32* %371)
  br label %373

373:                                              ; preds = %364, %359
  br label %374

374:                                              ; preds = %373, %241
  %375 = load %struct.davinci_spi*, %struct.davinci_spi** %5, align 8
  %376 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @clk_disable_unprepare(i32 %377)
  br label %379

379:                                              ; preds = %374, %154, %144, %128, %109, %90, %70, %61, %43
  %380 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %381 = call i32 @spi_master_put(%struct.spi_master* %380)
  br label %382

382:                                              ; preds = %379, %15
  %383 = load i32, i32* %8, align 4
  store i32 %383, i32* %2, align 4
  br label %384

384:                                              ; preds = %382, %351
  %385 = load i32, i32* %2, align 4
  ret i32 %385
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.davinci_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local %struct.davinci_spi_platform_data* @dev_get_platdata(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spi_davinci_get_pdata(%struct.platform_device*, %struct.davinci_spi*) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i32, i32, i32, i32, i32, %struct.davinci_spi*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @davinci_spi_request_dma(%struct.davinci_spi*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @set_io_bits(i64, i32) #1

declare dso_local i32 @spi_bitbang_start(%struct.TYPE_12__*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
