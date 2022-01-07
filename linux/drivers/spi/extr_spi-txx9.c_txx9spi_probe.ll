; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-txx9.c_txx9spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-txx9.c_txx9spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.spi_master = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.txx9spi = type { i32, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.resource = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@txx9spi_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"spi-baseclk\00", align 1
@SPI_MAX_DIVIDER = common dso_local global i64 0, align 8
@SPI_MIN_DIVIDER = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@TXx9_SPMCR = common dso_local global i32 0, align 4
@TXx9_SPMCR_OPMODE = common dso_local global i32 0, align 4
@TXx9_SPMCR_SPSTP = common dso_local global i32 0, align 4
@TXx9_SPMCR_BCLR = common dso_local global i32 0, align 4
@TXx9_SPMCR_CONFIG = common dso_local global i32 0, align 4
@txx9spi_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"spi_txx9\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"at %#llx, irq %d, %dMHz\0A\00", align 1
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@txx9spi_setup = common dso_local global i32 0, align 4
@txx9spi_transfer = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @txx9spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.txx9spi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.spi_master* @spi_alloc_master(i32* %13, i32 40)
  store %struct.spi_master* %14, %struct.spi_master** %4, align 8
  %15 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %16 = icmp ne %struct.spi_master* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %2, align 4
  br label %198

19:                                               ; preds = %1
  %20 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %21 = call %struct.txx9spi* @spi_master_get_devdata(%struct.spi_master* %20)
  store %struct.txx9spi* %21, %struct.txx9spi** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.spi_master* %23)
  %25 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %26 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %25, i32 0, i32 7
  %27 = load i32, i32* @txx9spi_work, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %30 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %29, i32 0, i32 6
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %33 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %32, i32 0, i32 5
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %36 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %35, i32 0, i32 4
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32* @devm_clk_get(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %42 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %44 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %19
  %49 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %50 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @PTR_ERR(i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %54 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  br label %190

55:                                               ; preds = %19
  %56 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %57 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @clk_prepare_enable(i32* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %64 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  br label %190

65:                                               ; preds = %55
  %66 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %67 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @clk_get_rate(i32* %68)
  %70 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %71 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %73 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @SPI_MAX_DIVIDER, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @DIV_ROUND_UP(i32 %74, i64 %76)
  %78 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %79 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %81 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SPI_MIN_DIVIDER, align 4
  %84 = add nsw i32 %83, 1
  %85 = sdiv i32 %82, %84
  %86 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %87 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = load i32, i32* @IORESOURCE_MEM, align 4
  %90 = call %struct.resource* @platform_get_resource(%struct.platform_device* %88, i32 %89, i32 0)
  store %struct.resource* %90, %struct.resource** %6, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.resource*, %struct.resource** %6, align 8
  %94 = call i32* @devm_ioremap_resource(i32* %92, %struct.resource* %93)
  %95 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %96 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %95, i32 0, i32 3
  store i32* %94, i32** %96, align 8
  %97 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %98 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @IS_ERR(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %65
  br label %187

103:                                              ; preds = %65
  %104 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %105 = load i32, i32* @TXx9_SPMCR, align 4
  %106 = call i32 @txx9spi_rd(%struct.txx9spi* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @TXx9_SPMCR_OPMODE, align 4
  %108 = load i32, i32* @TXx9_SPMCR_SPSTP, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @TXx9_SPMCR_BCLR, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @TXx9_SPMCR_CONFIG, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @TXx9_SPMCR_BCLR, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @TXx9_SPMCR, align 4
  %122 = call i32 @txx9spi_wr(%struct.txx9spi* %115, i32 %120, i32 %121)
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = call i32 @platform_get_irq(%struct.platform_device* %123, i32 0)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %103
  br label %187

128:                                              ; preds = %103
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @txx9spi_interrupt, align 4
  %133 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %134 = call i32 @devm_request_irq(i32* %130, i32 %131, i32 %132, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.txx9spi* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %190

138:                                              ; preds = %128
  %139 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %140 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %139, i32 0, i32 1
  store i32 -1, i32* %140, align 4
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load %struct.resource*, %struct.resource** %6, align 8
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %148 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 500000
  %151 = sdiv i32 %150, 1000000
  %152 = call i32 @dev_info(i32* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %145, i32 %146, i32 %151)
  %153 = load i32, i32* @SPI_CS_HIGH, align 4
  %154 = load i32, i32* @SPI_CPOL, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @SPI_CPHA, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %159 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %164 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @txx9spi_setup, align 4
  %166 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %167 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @txx9spi_transfer, align 4
  %169 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %170 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  %171 = load i64, i64* @UINT_MAX, align 8
  %172 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %173 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %172, i32 0, i32 3
  store i64 %171, i64* %173, align 8
  %174 = call i32 @SPI_BPW_MASK(i32 8)
  %175 = call i32 @SPI_BPW_MASK(i32 16)
  %176 = or i32 %174, %175
  %177 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %178 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %182 = call i32 @devm_spi_register_master(i32* %180, %struct.spi_master* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %138
  br label %190

186:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %198

187:                                              ; preds = %127, %102
  %188 = load i32, i32* @EBUSY, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %187, %185, %137, %62, %48
  %191 = load %struct.txx9spi*, %struct.txx9spi** %5, align 8
  %192 = getelementptr inbounds %struct.txx9spi, %struct.txx9spi* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @clk_disable_unprepare(i32* %193)
  %195 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %196 = call i32 @spi_master_put(%struct.spi_master* %195)
  %197 = load i32, i32* %7, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %190, %186, %17
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local %struct.txx9spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @txx9spi_rd(%struct.txx9spi*, i32) #1

declare dso_local i32 @txx9spi_wr(%struct.txx9spi*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.txx9spi*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @devm_spi_register_master(i32*, %struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
