; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.spi_controller = type { i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.bcm2835_spi = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BCM2835_SPI_MODE_BITS = common dso_local global i32 0, align 4
@BCM2835_SPI_NUM_CS = common dso_local global i32 0, align 4
@bcm2835_spi_setup = common dso_local global i32 0, align 4
@bcm2835_spi_transfer_one = common dso_local global i32 0, align 4
@bcm2835_spi_handle_err = common dso_local global i32 0, align 4
@bcm2835_spi_prepare_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not get clk: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_CLEAR_RX = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_CLEAR_TX = common dso_local global i32 0, align 4
@bcm2835_spi_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not request IRQ: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not register SPI controller: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.bcm2835_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 (...) @dma_get_cache_alignment()
  %10 = call i32 @ALIGN(i32 12, i32 %9)
  %11 = call %struct.spi_controller* @spi_alloc_master(%struct.TYPE_10__* %8, i32 %10)
  store %struct.spi_controller* %11, %struct.spi_controller** %4, align 8
  %12 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %13 = icmp ne %struct.spi_controller* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %171

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.spi_controller* %19)
  %21 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %22 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @BCM2835_SPI_MODE_BITS, align 4
  %24 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %25 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = call i32 @SPI_BPW_MASK(i32 8)
  %27 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %28 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @BCM2835_SPI_NUM_CS, align 4
  %30 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %31 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @bcm2835_spi_setup, align 4
  %33 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %34 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @bcm2835_spi_transfer_one, align 4
  %36 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %37 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @bcm2835_spi_handle_err, align 4
  %39 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %40 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @bcm2835_spi_prepare_message, align 4
  %42 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %43 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %49 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %52 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %51)
  store %struct.bcm2835_spi* %52, %struct.bcm2835_spi** %5, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %53, i32 0)
  %55 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %56 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %58 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %17
  %63 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %64 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %6, align 4
  br label %167

67:                                               ; preds = %17
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @devm_clk_get(%struct.TYPE_10__* %69, i32* null)
  %71 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %72 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %74 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %67
  %79 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %80 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dev_err(%struct.TYPE_10__* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %167

87:                                               ; preds = %67
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = call i32 @platform_get_irq(%struct.platform_device* %88, i32 0)
  %90 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %91 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %93 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %87
  %97 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %98 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %103 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %108

105:                                              ; preds = %96
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi i32 [ %104, %101 ], [ %107, %105 ]
  store i32 %109, i32* %6, align 4
  br label %167

110:                                              ; preds = %87
  %111 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %112 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @clk_prepare_enable(i32 %113)
  %115 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %119 = call i32 @bcm2835_dma_init(%struct.spi_controller* %115, %struct.TYPE_10__* %117, %struct.bcm2835_spi* %118)
  %120 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %121 = load i32, i32* @BCM2835_SPI_CS, align 4
  %122 = load i32, i32* @BCM2835_SPI_CS_CLEAR_RX, align 4
  %123 = load i32, i32* @BCM2835_SPI_CS_CLEAR_TX, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %120, i32 %121, i32 %124)
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %129 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @bcm2835_spi_interrupt, align 4
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_name(%struct.TYPE_10__* %133)
  %135 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %136 = call i32 @devm_request_irq(%struct.TYPE_10__* %127, i32 %130, i32 %131, i32 0, i32 %134, %struct.spi_controller* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %110
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @dev_err(%struct.TYPE_10__* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  br label %162

144:                                              ; preds = %110
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %148 = call i32 @devm_spi_register_controller(%struct.TYPE_10__* %146, %struct.spi_controller* %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @dev_err(%struct.TYPE_10__* %153, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  br label %162

156:                                              ; preds = %144
  %157 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 @dev_name(%struct.TYPE_10__* %159)
  %161 = call i32 @bcm2835_debugfs_create(%struct.bcm2835_spi* %157, i32 %160)
  store i32 0, i32* %2, align 4
  br label %171

162:                                              ; preds = %151, %139
  %163 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %5, align 8
  %164 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @clk_disable_unprepare(i32 %165)
  br label %167

167:                                              ; preds = %162, %108, %78, %62
  %168 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %169 = call i32 @spi_controller_put(%struct.spi_controller* %168)
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %167, %156, %14
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_controller*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @bcm2835_dma_init(%struct.spi_controller*, %struct.TYPE_10__*, %struct.bcm2835_spi*) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.spi_controller*) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_spi_register_controller(%struct.TYPE_10__*, %struct.spi_controller*) #1

declare dso_local i32 @bcm2835_debugfs_create(%struct.bcm2835_spi*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
