; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun4i.c_sun4i_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun4i.c_sun4i_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.sun4i_spi = type { i32, i8*, i8*, %struct.spi_master*, i8* }

@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate SPI Master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@sun4i_spi_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sun4i-spi\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Cannot request IRQ\0A\00", align 1
@sun4i_spi_set_cs = common dso_local global i32 0, align 4
@sun4i_spi_transfer_one = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@sun4i_spi_max_transfer_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to acquire AHB clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to acquire module clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Couldn't resume the device\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"cannot register SPI master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.sun4i_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_14__* %9, i32 40)
  store %struct.spi_master* %10, %struct.spi_master** %4, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %12 = icmp ne %struct.spi_master* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_14__* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %182

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.spi_master* %21)
  %23 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %24 = call %struct.sun4i_spi* @spi_master_get_devdata(%struct.spi_master* %23)
  store %struct.sun4i_spi* %24, %struct.sun4i_spi** %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %25, i32 0)
  %27 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %28 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %30 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %36 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %35, i32 0, i32 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %6, align 4
  br label %178

39:                                               ; preds = %19
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call i32 @platform_get_irq(%struct.platform_device* %40, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %178

47:                                               ; preds = %39
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @sun4i_spi_handler, align 4
  %52 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %53 = call i32 @devm_request_irq(%struct.TYPE_14__* %49, i32 %50, i32 %51, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.sun4i_spi* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_14__* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %178

60:                                               ; preds = %47
  %61 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %62 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %63 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %62, i32 0, i32 3
  store %struct.spi_master* %61, %struct.spi_master** %63, align 8
  %64 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %65 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %64, i32 0, i32 0
  store i32 100000000, i32* %65, align 4
  %66 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %67 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %66, i32 0, i32 1
  store i32 3000, i32* %67, align 4
  %68 = load i32, i32* @sun4i_spi_set_cs, align 4
  %69 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %70 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @sun4i_spi_transfer_one, align 4
  %72 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %73 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %75 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %74, i32 0, i32 2
  store i32 4, i32* %75, align 4
  %76 = load i32, i32* @SPI_CPOL, align 4
  %77 = load i32, i32* @SPI_CPHA, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SPI_CS_HIGH, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SPI_LSB_FIRST, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %84 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = call i32 @SPI_BPW_MASK(i32 8)
  %86 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %87 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %93 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %96 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %95, i32 0, i32 4
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* @sun4i_spi_max_transfer_size, align 4
  %98 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %99 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i8* @devm_clk_get(%struct.TYPE_14__* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %103 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %104 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %106 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @IS_ERR(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %60
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @dev_err(%struct.TYPE_14__* %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %114 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %115 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %6, align 4
  br label %178

118:                                              ; preds = %60
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i8* @devm_clk_get(%struct.TYPE_14__* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %123 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %125 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @IS_ERR(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %118
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @dev_err(%struct.TYPE_14__* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %133 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %134 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @PTR_ERR(i8* %135)
  store i32 %136, i32* %6, align 4
  br label %178

137:                                              ; preds = %118
  %138 = load %struct.sun4i_spi*, %struct.sun4i_spi** %5, align 8
  %139 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %138, i32 0, i32 0
  %140 = call i32 @init_completion(i32* %139)
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 @sun4i_spi_runtime_resume(%struct.TYPE_14__* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 @dev_err(%struct.TYPE_14__* %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %178

150:                                              ; preds = %137
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 @pm_runtime_set_active(%struct.TYPE_14__* %152)
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @pm_runtime_enable(%struct.TYPE_14__* %155)
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @pm_runtime_idle(%struct.TYPE_14__* %158)
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %163 = call i32 @devm_spi_register_master(%struct.TYPE_14__* %161, %struct.spi_master* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %150
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 @dev_err(%struct.TYPE_14__* %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %171

170:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %182

171:                                              ; preds = %166
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = call i32 @pm_runtime_disable(%struct.TYPE_14__* %173)
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = call i32 @sun4i_spi_runtime_suspend(%struct.TYPE_14__* %176)
  br label %178

178:                                              ; preds = %171, %146, %129, %110, %56, %44, %34
  %179 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %180 = call i32 @spi_master_put(%struct.spi_master* %179)
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %178, %170, %13
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.sun4i_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i32, i32, i32, i8*, %struct.sun4i_spi*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @sun4i_spi_runtime_resume(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_14__*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_14__*) #1

declare dso_local i32 @sun4i_spi_runtime_suspend(%struct.TYPE_14__*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
