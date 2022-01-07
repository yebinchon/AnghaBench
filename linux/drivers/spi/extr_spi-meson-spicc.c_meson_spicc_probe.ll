; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-meson-spicc.c_meson_spicc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.meson_spicc_device = type { i64, i64, %struct.platform_device*, %struct.spi_master* }

@.str = private unnamed_addr constant [26 x i8] c"master allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"io resource mapping failed\0A\00", align 1
@SPICC_INTREG = common dso_local global i64 0, align 8
@meson_spicc_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"core clock request failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"core clock enable failed\0A\00", align 1
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_RX = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_TX = common dso_local global i32 0, align 4
@meson_spicc_setup = common dso_local global i32 0, align 4
@meson_spicc_cleanup = common dso_local global i32 0, align 4
@meson_spicc_prepare_message = common dso_local global i32 0, align 4
@meson_spicc_unprepare_transfer = common dso_local global i32 0, align 4
@meson_spicc_transfer_one = common dso_local global i32 0, align 4
@SPICC_MAX_FREQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"spi master registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_spicc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_spicc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.meson_spicc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__* %10, i32 32)
  store %struct.spi_master* %11, %struct.spi_master** %4, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %13 = icmp ne %struct.spi_master* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %191

20:                                               ; preds = %1
  %21 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %22 = call %struct.meson_spicc_device* @spi_master_get_devdata(%struct.spi_master* %21)
  store %struct.meson_spicc_device* %22, %struct.meson_spicc_device** %5, align 8
  %23 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %24 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %25 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %24, i32 0, i32 3
  store %struct.spi_master* %23, %struct.spi_master** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %28 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %27, i32 0, i32 2
  store %struct.platform_device* %26, %struct.platform_device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.meson_spicc_device* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %32, i32 0)
  %34 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %35 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %37 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @IS_ERR(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %20
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(%struct.TYPE_9__* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %46 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @PTR_ERR(i64 %47)
  store i32 %48, i32* %6, align 4
  br label %187

49:                                               ; preds = %20
  %50 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %51 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SPICC_INTREG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 0, i64 %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = call i32 @platform_get_irq(%struct.platform_device* %56, i32 0)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @meson_spicc_irq, align 4
  %62 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %63 = call i32 @devm_request_irq(%struct.TYPE_9__* %59, i32 %60, i32 %61, i32 0, i32* null, %struct.meson_spicc_device* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %49
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(%struct.TYPE_9__* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %187

70:                                               ; preds = %49
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i64 @devm_clk_get(%struct.TYPE_9__* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %75 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %77 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @IS_ERR(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(%struct.TYPE_9__* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %86 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @PTR_ERR(i64 %87)
  store i32 %88, i32* %6, align 4
  br label %187

89:                                               ; preds = %70
  %90 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %91 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @clk_prepare_enable(i64 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(%struct.TYPE_9__* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %187

100:                                              ; preds = %89
  %101 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %102 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @clk_get_rate(i64 %103)
  store i32 %104, i32* %8, align 4
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @device_reset_optional(%struct.TYPE_9__* %106)
  %108 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %109 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %108, i32 0, i32 0
  store i32 4, i32* %109, align 4
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %115 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @SPI_CPHA, align 4
  %118 = load i32, i32* @SPI_CPOL, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @SPI_CS_HIGH, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %123 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = call i32 @SPI_BPW_MASK(i32 32)
  %125 = call i32 @SPI_BPW_MASK(i32 24)
  %126 = or i32 %124, %125
  %127 = call i32 @SPI_BPW_MASK(i32 16)
  %128 = or i32 %126, %127
  %129 = call i32 @SPI_BPW_MASK(i32 8)
  %130 = or i32 %128, %129
  %131 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %132 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @SPI_MASTER_MUST_RX, align 4
  %134 = load i32, i32* @SPI_MASTER_MUST_TX, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %137 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = ashr i32 %138, 9
  %140 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %141 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @meson_spicc_setup, align 4
  %143 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %144 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %143, i32 0, i32 10
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @meson_spicc_cleanup, align 4
  %146 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %147 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %146, i32 0, i32 9
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @meson_spicc_prepare_message, align 4
  %149 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %150 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @meson_spicc_unprepare_transfer, align 4
  %152 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %153 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @meson_spicc_transfer_one, align 4
  %155 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %156 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %8, align 4
  %158 = ashr i32 %157, 2
  %159 = load i32, i32* @SPICC_MAX_FREQ, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %100
  %162 = load i32, i32* @SPICC_MAX_FREQ, align 4
  %163 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %164 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  br label %170

165:                                              ; preds = %100
  %166 = load i32, i32* %8, align 4
  %167 = ashr i32 %166, 2
  %168 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %169 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %165, %161
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %174 = call i32 @devm_spi_register_master(%struct.TYPE_9__* %172, %struct.spi_master* %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %170
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @dev_err(%struct.TYPE_9__* %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %182

181:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %191

182:                                              ; preds = %177
  %183 = load %struct.meson_spicc_device*, %struct.meson_spicc_device** %5, align 8
  %184 = getelementptr inbounds %struct.meson_spicc_device, %struct.meson_spicc_device* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @clk_disable_unprepare(i64 %185)
  br label %187

187:                                              ; preds = %182, %96, %81, %66, %41
  %188 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %189 = call i32 @spi_master_put(%struct.spi_master* %188)
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %181, %14
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.meson_spicc_device* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_spicc_device*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i32, i32, i32, i32*, %struct.meson_spicc_device*) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i32 @device_reset_optional(%struct.TYPE_9__*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_9__*, %struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
