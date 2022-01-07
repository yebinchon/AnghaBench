; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.spi_master = type { i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bcm2835aux_spi = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_NO_CS = common dso_local global i32 0, align 4
@bcm2835aux_spi_setup = common dso_local global i32 0, align 4
@bcm2835aux_spi_transfer_one = common dso_local global i32 0, align 4
@bcm2835aux_spi_handle_err = common dso_local global i32 0, align 4
@bcm2835aux_spi_prepare_message = common dso_local global i32 0, align 4
@bcm2835aux_spi_unprepare_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"could not get clk: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not prepare clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"clock returns 0 Hz\0A\00", align 1
@bcm2835aux_spi_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"could not request IRQ: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"could not register SPI master: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm2835aux_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835aux_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.bcm2835aux_spi*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__* %9, i32 12)
  store %struct.spi_master* %10, %struct.spi_master** %4, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %12 = icmp ne %struct.spi_master* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %187

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.spi_master* %18)
  %20 = load i32, i32* @SPI_CPOL, align 4
  %21 = load i32, i32* @SPI_CS_HIGH, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SPI_NO_CS, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %26 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = call i32 @SPI_BPW_MASK(i32 8)
  %28 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %29 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %31 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @bcm2835aux_spi_setup, align 4
  %33 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %34 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @bcm2835aux_spi_transfer_one, align 4
  %36 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %37 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @bcm2835aux_spi_handle_err, align 4
  %39 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %40 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @bcm2835aux_spi_prepare_message, align 4
  %42 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %43 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @bcm2835aux_spi_unprepare_message, align 4
  %45 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %46 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %52 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %55 = call %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master* %54)
  store %struct.bcm2835aux_spi* %55, %struct.bcm2835aux_spi** %5, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %56, i32 0)
  %58 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %59 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %61 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %16
  %66 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %67 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %7, align 4
  br label %183

70:                                               ; preds = %16
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @devm_clk_get(%struct.TYPE_9__* %72, i32* null)
  %74 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %75 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %77 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %70
  %82 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %83 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %183

90:                                               ; preds = %70
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = call i32 @platform_get_irq(%struct.platform_device* %91, i32 0)
  %93 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %94 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %96 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %90
  %100 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %101 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %106 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  br label %111

108:                                              ; preds = %99
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi i32 [ %107, %104 ], [ %110, %108 ]
  store i32 %112, i32* %7, align 4
  br label %183

113:                                              ; preds = %90
  %114 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %115 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @clk_prepare_enable(i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %183

125:                                              ; preds = %113
  %126 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %127 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @clk_get_rate(i32 %128)
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %125
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %136 = load i32, i32* @ENODEV, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %7, align 4
  br label %178

138:                                              ; preds = %125
  %139 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %140 = call i32 @bcm2835aux_spi_reset_hw(%struct.bcm2835aux_spi* %139)
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %144 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @bcm2835aux_spi_interrupt, align 4
  %147 = load i32, i32* @IRQF_SHARED, align 4
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 @dev_name(%struct.TYPE_9__* %149)
  %151 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %152 = call i32 @devm_request_irq(%struct.TYPE_9__* %142, i32 %145, i32 %146, i32 %147, i32 %150, %struct.spi_master* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %138
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  br label %178

160:                                              ; preds = %138
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %164 = call i32 @devm_spi_register_master(%struct.TYPE_9__* %162, %struct.spi_master* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load i32, i32* %7, align 4
  %171 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  br label %178

172:                                              ; preds = %160
  %173 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = call i32 @dev_name(%struct.TYPE_9__* %175)
  %177 = call i32 @bcm2835aux_debugfs_create(%struct.bcm2835aux_spi* %173, i32 %176)
  store i32 0, i32* %2, align 4
  br label %187

178:                                              ; preds = %167, %155, %132
  %179 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %5, align 8
  %180 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @clk_disable_unprepare(i32 %181)
  br label %183

183:                                              ; preds = %178, %120, %111, %81, %65
  %184 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %185 = call i32 @spi_master_put(%struct.spi_master* %184)
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %183, %172, %13
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @bcm2835aux_spi_reset_hw(%struct.bcm2835aux_spi*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i32, i32, i32, i32, %struct.spi_master*) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_9__*, %struct.spi_master*) #1

declare dso_local i32 @bcm2835aux_debugfs_create(%struct.bcm2835aux_spi*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
