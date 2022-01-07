; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ifx6x60.c_ifx_spi_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifx_spi_device = type { %struct.TYPE_8__, i32, i32, i32, i8*, i32, %struct.spi_device*, i8*, i32, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ifx_modem_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@saved_ifx_dev = common dso_local global %struct.ifx_spi_device* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"ignoring subsequent detection\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"missing platform data!\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"spi device allocation failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFX_SPI_STATE_IO_IN_PROGRESS = common dso_local global i32 0, align 4
@ifx_spi_timeout = common dso_local global i32 0, align 4
@IFX_SPI_MODE = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@spi_bpw = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"SPI setup wasn't successful %d\00", align 1
@swap_buf_32 = common dso_local global i32 0, align 4
@swap_buf_16 = common dso_local global i32 0, align 4
@swap_buf_8 = common dso_local global i32 0, align 4
@IFX_SPI_TRANSFER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"DMA-TX buffer allocation failed\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"DMA-RX buffer allocation failed\00", align 1
@ifx_spi_io = common dso_local global i32 0, align 4
@IFX_SPI_STATE_PRESENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"create default tty port failed\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"gpios %d, %d, %d, %d, %d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ifxModem\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Unable to allocate GPIO%d (RESET)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Unable to configure GPIO%d (RESET)\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Unable to configure GPIO%d (ON)\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Unable to allocate GPIO%d (MRDY)\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Unable to configure GPIO%d (MRDY)\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Unable to allocate GPIO%d (SRDY)\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Unable to configure GPIO%d (SRDY)\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Unable to allocate GPIO%d (RESET_OUT)\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"Unable to configure GPIO%d (RESET_OUT)\00", align 1
@ifx_spi_reset_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [22 x i8] c"Unable to get irq %x\0A\00", align 1
@ifx_spi_srdy_interrupt = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"Unable to get irq %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ifx_spi_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifx_spi_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifx_modem_platform_data*, align 8
  %7 = alloca %struct.ifx_spi_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** @saved_ifx_dev, align 8
  %9 = icmp ne %struct.ifx_spi_device* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 2
  %13 = call i32 @dev_dbg(%struct.TYPE_9__* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %597

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 2
  %19 = call %struct.ifx_modem_platform_data* @dev_get_platdata(%struct.TYPE_9__* %18)
  store %struct.ifx_modem_platform_data* %19, %struct.ifx_modem_platform_data** %6, align 8
  %20 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %21 = icmp ne %struct.ifx_modem_platform_data* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 2
  %25 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %597

28:                                               ; preds = %16
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ifx_spi_device* @kzalloc(i32 128, i32 %29)
  store %struct.ifx_spi_device* %30, %struct.ifx_spi_device** %7, align 8
  %31 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %32 = icmp ne %struct.ifx_spi_device* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 2
  %36 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %597

39:                                               ; preds = %28
  %40 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  store %struct.ifx_spi_device* %40, %struct.ifx_spi_device** @saved_ifx_dev, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %43 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %42, i32 0, i32 6
  store %struct.spi_device* %41, %struct.spi_device** %43, align 8
  %44 = load i32, i32* @IFX_SPI_STATE_IO_IN_PROGRESS, align 4
  %45 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %46 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %45, i32 0, i32 1
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %49 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %48, i32 0, i32 18
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %52 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %51, i32 0, i32 17
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %55 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %54, i32 0, i32 16
  store i64 0, i64* %55, align 8
  %56 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %57 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %56, i32 0, i32 15
  %58 = load i32, i32* @ifx_spi_timeout, align 4
  %59 = call i32 @timer_setup(i32* %57, i32 %58, i32 0)
  %60 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %61 = getelementptr inbounds %struct.ifx_modem_platform_data, %struct.ifx_modem_platform_data* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %64 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %66 = getelementptr inbounds %struct.ifx_modem_platform_data, %struct.ifx_modem_platform_data* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %69 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %68, i32 0, i32 13
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %71 = getelementptr inbounds %struct.ifx_modem_platform_data, %struct.ifx_modem_platform_data* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %74 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %73, i32 0, i32 12
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %76 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @IFX_SPI_MODE, align 4
  %81 = load i32, i32* @SPI_LOOP, align 4
  %82 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %83 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %81, %84
  %86 = or i32 %80, %85
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @spi_bpw, align 4
  %90 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = call i32 @spi_setup(%struct.spi_device* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %39
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 2
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %102 = call i32 @kfree(%struct.ifx_spi_device* %101)
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %597

105:                                              ; preds = %39
  %106 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %107 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 32
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @swap_buf_32, align 4
  %112 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %113 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %112, i32 0, i32 11
  store i32 %111, i32* %113, align 8
  br label %128

114:                                              ; preds = %105
  %115 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %116 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 16
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @swap_buf_16, align 4
  %121 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %122 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %121, i32 0, i32 11
  store i32 %120, i32* %122, align 8
  br label %127

123:                                              ; preds = %114
  %124 = load i32, i32* @swap_buf_8, align 4
  %125 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %126 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %125, i32 0, i32 11
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %119
  br label %128

128:                                              ; preds = %127, %110
  %129 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %130 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %129, i32 0, i32 10
  store i64 0, i64* %130, align 8
  %131 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %132 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %131, i32 0, i32 9
  store i64 0, i64* %132, align 8
  %133 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %134 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %133, i32 0, i32 6
  %135 = load %struct.spi_device*, %struct.spi_device** %134, align 8
  %136 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IFX_SPI_TRANSFER_SIZE, align 4
  %140 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %141 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %140, i32 0, i32 8
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i8* @dma_alloc_coherent(i32 %138, i32 %139, i32* %141, i32 %142)
  %144 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %145 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %144, i32 0, i32 7
  store i8* %143, i8** %145, align 8
  %146 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %147 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %146, i32 0, i32 7
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %128
  %151 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %152 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %151, i32 0, i32 2
  %153 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %593

156:                                              ; preds = %128
  %157 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %158 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %157, i32 0, i32 6
  %159 = load %struct.spi_device*, %struct.spi_device** %158, align 8
  %160 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IFX_SPI_TRANSFER_SIZE, align 4
  %164 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %165 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %164, i32 0, i32 5
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call i8* @dma_alloc_coherent(i32 %162, i32 %163, i32* %165, i32 %166)
  %168 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %169 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %168, i32 0, i32 4
  store i8* %167, i8** %169, align 8
  %170 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %171 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %156
  %175 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %176 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %175, i32 0, i32 2
  %177 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %593

180:                                              ; preds = %156
  %181 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %182 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %181, i32 0, i32 3
  %183 = call i32 @init_waitqueue_head(i32* %182)
  %184 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %185 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %186 = call i32 @spi_set_drvdata(%struct.spi_device* %184, %struct.ifx_spi_device* %185)
  %187 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %188 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %187, i32 0, i32 2
  %189 = load i32, i32* @ifx_spi_io, align 4
  %190 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %191 = ptrtoint %struct.ifx_spi_device* %190 to i64
  %192 = call i32 @tasklet_init(i32* %188, i32 %189, i64 %191)
  %193 = load i32, i32* @IFX_SPI_STATE_PRESENT, align 4
  %194 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %195 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %194, i32 0, i32 1
  %196 = call i32 @set_bit(i32 %193, i32* %195)
  %197 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %198 = call i32 @ifx_spi_create_port(%struct.ifx_spi_device* %197)
  store i32 %198, i32* %4, align 4
  %199 = load i32, i32* %4, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %180
  %202 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %203 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %202, i32 0, i32 2
  %204 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %593

205:                                              ; preds = %180
  %206 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %207 = getelementptr inbounds %struct.ifx_modem_platform_data, %struct.ifx_modem_platform_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %210 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  %212 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %213 = getelementptr inbounds %struct.ifx_modem_platform_data, %struct.ifx_modem_platform_data* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %216 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 4
  %218 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %219 = getelementptr inbounds %struct.ifx_modem_platform_data, %struct.ifx_modem_platform_data* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %222 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  store i32 %220, i32* %223, align 8
  %224 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %225 = getelementptr inbounds %struct.ifx_modem_platform_data, %struct.ifx_modem_platform_data* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %228 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 3
  store i32 %226, i32* %229, align 4
  %230 = load %struct.ifx_modem_platform_data*, %struct.ifx_modem_platform_data** %6, align 8
  %231 = getelementptr inbounds %struct.ifx_modem_platform_data, %struct.ifx_modem_platform_data* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %234 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 4
  store i32 %232, i32* %235, align 8
  %236 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %237 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %236, i32 0, i32 2
  %238 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %239 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %243 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %247 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %251 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %255 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @dev_info(%struct.TYPE_9__* %237, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %241, i32 %245, i32 %249, i32 %253, i32 %257)
  %259 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %260 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @gpio_request(i32 %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %263, i32* %4, align 4
  %264 = load i32, i32* %4, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %205
  %267 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %268 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %267, i32 0, i32 2
  %269 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %270 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %268, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %272)
  br label %593

274:                                              ; preds = %205
  %275 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %276 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @gpio_direction_output(i32 %278, i32 0)
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %279
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %4, align 4
  %284 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %285 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i64 @gpio_export(i32 %287, i32 1)
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %290, %288
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %4, align 4
  %293 = load i32, i32* %4, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %305

295:                                              ; preds = %274
  %296 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %297 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %296, i32 0, i32 2
  %298 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %299 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %297, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %301)
  %303 = load i32, i32* @EBUSY, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %4, align 4
  br label %587

305:                                              ; preds = %274
  %306 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %307 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @gpio_request(i32 %309, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %310, i32* %4, align 4
  %311 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %312 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i64 @gpio_direction_output(i32 %314, i32 0)
  %316 = load i32, i32* %4, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %315
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %4, align 4
  %320 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %321 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i64 @gpio_export(i32 %323, i32 1)
  %325 = load i32, i32* %4, align 4
  %326 = sext i32 %325 to i64
  %327 = add nsw i64 %326, %324
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %4, align 4
  %329 = load i32, i32* %4, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %341

331:                                              ; preds = %305
  %332 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %333 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %332, i32 0, i32 2
  %334 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %335 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %333, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %337)
  %339 = load i32, i32* @EBUSY, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %4, align 4
  br label %581

341:                                              ; preds = %305
  %342 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %343 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @gpio_request(i32 %345, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %346, i32* %4, align 4
  %347 = load i32, i32* %4, align 4
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %341
  %350 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %351 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %350, i32 0, i32 2
  %352 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %353 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %351, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %355)
  br label %581

357:                                              ; preds = %341
  %358 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %359 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i64 @gpio_export(i32 %361, i32 1)
  %363 = load i32, i32* %4, align 4
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %364, %362
  %366 = trunc i64 %365 to i32
  store i32 %366, i32* %4, align 4
  %367 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %368 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = call i64 @gpio_direction_output(i32 %370, i32 0)
  %372 = load i32, i32* %4, align 4
  %373 = sext i32 %372 to i64
  %374 = add nsw i64 %373, %371
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %4, align 4
  %376 = load i32, i32* %4, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %388

378:                                              ; preds = %357
  %379 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %380 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %379, i32 0, i32 2
  %381 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %382 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %380, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %384)
  %386 = load i32, i32* @EBUSY, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %4, align 4
  br label %575

388:                                              ; preds = %357
  %389 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %390 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @gpio_request(i32 %392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %393, i32* %4, align 4
  %394 = load i32, i32* %4, align 4
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %388
  %397 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %398 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %397, i32 0, i32 2
  %399 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %400 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %398, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %402)
  %404 = load i32, i32* @EBUSY, align 4
  %405 = sub nsw i32 0, %404
  store i32 %405, i32* %4, align 4
  br label %575

406:                                              ; preds = %388
  %407 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %408 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = call i64 @gpio_export(i32 %410, i32 1)
  %412 = load i32, i32* %4, align 4
  %413 = sext i32 %412 to i64
  %414 = add nsw i64 %413, %411
  %415 = trunc i64 %414 to i32
  store i32 %415, i32* %4, align 4
  %416 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %417 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = call i64 @gpio_direction_input(i32 %419)
  %421 = load i32, i32* %4, align 4
  %422 = sext i32 %421 to i64
  %423 = add nsw i64 %422, %420
  %424 = trunc i64 %423 to i32
  store i32 %424, i32* %4, align 4
  %425 = load i32, i32* %4, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %437

427:                                              ; preds = %406
  %428 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %429 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %428, i32 0, i32 2
  %430 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %431 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 4
  %434 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %429, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %433)
  %435 = load i32, i32* @EBUSY, align 4
  %436 = sub nsw i32 0, %435
  store i32 %436, i32* %4, align 4
  br label %569

437:                                              ; preds = %406
  %438 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %439 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @gpio_request(i32 %441, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %442, i32* %4, align 4
  %443 = load i32, i32* %4, align 4
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %445, label %453

445:                                              ; preds = %437
  %446 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %447 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %446, i32 0, i32 2
  %448 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %449 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %447, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %451)
  br label %569

453:                                              ; preds = %437
  %454 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %455 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = call i64 @gpio_export(i32 %457, i32 1)
  %459 = load i32, i32* %4, align 4
  %460 = sext i32 %459 to i64
  %461 = add nsw i64 %460, %458
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %4, align 4
  %463 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %464 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 4
  %466 = load i32, i32* %465, align 8
  %467 = call i64 @gpio_direction_input(i32 %466)
  %468 = load i32, i32* %4, align 4
  %469 = sext i32 %468 to i64
  %470 = add nsw i64 %469, %467
  %471 = trunc i64 %470 to i32
  store i32 %471, i32* %4, align 4
  %472 = load i32, i32* %4, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %484

474:                                              ; preds = %453
  %475 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %476 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %475, i32 0, i32 2
  %477 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %478 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i32 0, i32 4
  %480 = load i32, i32* %479, align 8
  %481 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %476, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 %480)
  %482 = load i32, i32* @EBUSY, align 4
  %483 = sub nsw i32 0, %482
  store i32 %483, i32* %4, align 4
  br label %563

484:                                              ; preds = %453
  %485 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %486 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 4
  %488 = load i32, i32* %487, align 8
  %489 = call i32 @gpio_to_irq(i32 %488)
  %490 = load i32, i32* @ifx_spi_reset_interrupt, align 4
  %491 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %492 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %493 = or i32 %491, %492
  %494 = load i32, i32* @DRVNAME, align 4
  %495 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %496 = call i32 @request_irq(i32 %489, i32 %490, i32 %493, i32 %494, %struct.ifx_spi_device* %495)
  store i32 %496, i32* %4, align 4
  %497 = load i32, i32* %4, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %508

499:                                              ; preds = %484
  %500 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %501 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %500, i32 0, i32 2
  %502 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %503 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 4
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @gpio_to_irq(i32 %505)
  %507 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %501, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %506)
  br label %563

508:                                              ; preds = %484
  %509 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %510 = call i32 @ifx_spi_reset(%struct.ifx_spi_device* %509)
  store i32 %510, i32* %4, align 4
  %511 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %512 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @gpio_to_irq(i32 %514)
  %516 = load i32, i32* @ifx_spi_srdy_interrupt, align 4
  %517 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %518 = load i32, i32* @DRVNAME, align 4
  %519 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %520 = call i32 @request_irq(i32 %515, i32 %516, i32 %517, i32 %518, %struct.ifx_spi_device* %519)
  store i32 %520, i32* %4, align 4
  %521 = load i32, i32* %4, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %532

523:                                              ; preds = %508
  %524 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %525 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %524, i32 0, i32 2
  %526 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %527 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %527, i32 0, i32 3
  %529 = load i32, i32* %528, align 4
  %530 = call i32 @gpio_to_irq(i32 %529)
  %531 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %525, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %530)
  br label %555

532:                                              ; preds = %508
  %533 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %534 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %533, i32 0, i32 2
  %535 = call i32 @pm_runtime_set_active(%struct.TYPE_9__* %534)
  %536 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %537 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %536, i32 0, i32 2
  %538 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %537)
  %539 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %540 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 3
  %542 = load i32, i32* %541, align 4
  %543 = call i32 @gpio_get_value(i32 %542)
  store i32 %543, i32* %5, align 4
  %544 = load i32, i32* %5, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %551

546:                                              ; preds = %532
  %547 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %548 = call i32 @mrdy_assert(%struct.ifx_spi_device* %547)
  %549 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %550 = call i32 @ifx_spi_handle_srdy(%struct.ifx_spi_device* %549)
  br label %554

551:                                              ; preds = %532
  %552 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %553 = call i32 @mrdy_set_low(%struct.ifx_spi_device* %552)
  br label %554

554:                                              ; preds = %551, %546
  store i32 0, i32* %2, align 4
  br label %597

555:                                              ; preds = %523
  %556 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %557 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 4
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @gpio_to_irq(i32 %559)
  %561 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %562 = call i32 @free_irq(i32 %560, %struct.ifx_spi_device* %561)
  br label %563

563:                                              ; preds = %555, %499, %474
  %564 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %565 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @gpio_free(i32 %567)
  br label %569

569:                                              ; preds = %563, %445, %427
  %570 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %571 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 8
  %574 = call i32 @gpio_free(i32 %573)
  br label %575

575:                                              ; preds = %569, %396, %378
  %576 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %577 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = call i32 @gpio_free(i32 %579)
  br label %581

581:                                              ; preds = %575, %349, %331
  %582 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %583 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = call i32 @gpio_free(i32 %585)
  br label %587

587:                                              ; preds = %581, %295
  %588 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %589 = getelementptr inbounds %struct.ifx_spi_device, %struct.ifx_spi_device* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %589, i32 0, i32 4
  %591 = load i32, i32* %590, align 8
  %592 = call i32 @gpio_free(i32 %591)
  br label %593

593:                                              ; preds = %587, %266, %201, %174, %150
  %594 = load %struct.ifx_spi_device*, %struct.ifx_spi_device** %7, align 8
  %595 = call i32 @ifx_spi_free_device(%struct.ifx_spi_device* %594)
  store %struct.ifx_spi_device* null, %struct.ifx_spi_device** @saved_ifx_dev, align 8
  %596 = load i32, i32* %4, align 4
  store i32 %596, i32* %2, align 4
  br label %597

597:                                              ; preds = %593, %554, %96, %33, %22, %10
  %598 = load i32, i32* %2, align 4
  ret i32 %598
}

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.ifx_modem_platform_data* @dev_get_platdata(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.ifx_spi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @kfree(%struct.ifx_spi_device*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ifx_spi_device*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ifx_spi_create_port(%struct.ifx_spi_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i64 @gpio_direction_output(i32, i32) #1

declare dso_local i64 @gpio_export(i32, i32) #1

declare dso_local i64 @gpio_direction_input(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ifx_spi_device*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @ifx_spi_reset(%struct.ifx_spi_device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @mrdy_assert(%struct.ifx_spi_device*) #1

declare dso_local i32 @ifx_spi_handle_srdy(%struct.ifx_spi_device*) #1

declare dso_local i32 @mrdy_set_low(%struct.ifx_spi_device*) #1

declare dso_local i32 @free_irq(i32, %struct.ifx_spi_device*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @ifx_spi_free_device(%struct.ifx_spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
