; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.sun6i_spi = type { i64, i8*, i32, i8*, i8*, %struct.spi_master*, i8* }

@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate SPI Master\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@sun6i_spi_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sun6i-spi\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Cannot request IRQ\0A\00", align 1
@sun6i_spi_set_cs = common dso_local global i32 0, align 4
@sun6i_spi_transfer_one = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@sun6i_spi_max_transfer_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to acquire AHB clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unable to acquire module clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Couldn't get reset controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Couldn't resume the device\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"cannot register SPI master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun6i_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.sun6i_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_16__* %9, i32 56)
  store %struct.spi_master* %10, %struct.spi_master** %4, align 8
  %11 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %12 = icmp ne %struct.spi_master* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_16__* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %206

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.spi_master* %21)
  %23 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %24 = call %struct.sun6i_spi* @spi_master_get_devdata(%struct.spi_master* %23)
  store %struct.sun6i_spi* %24, %struct.sun6i_spi** %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %25, i32 0)
  %27 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %28 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %27, i32 0, i32 6
  store i8* %26, i8** %28, align 8
  %29 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %30 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %29, i32 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %36 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %35, i32 0, i32 6
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %6, align 4
  br label %202

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
  br label %202

47:                                               ; preds = %39
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @sun6i_spi_handler, align 4
  %52 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %53 = call i32 @devm_request_irq(%struct.TYPE_16__* %49, i32 %50, i32 %51, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.sun6i_spi* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_16__* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %202

60:                                               ; preds = %47
  %61 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %62 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %63 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %62, i32 0, i32 5
  store %struct.spi_master* %61, %struct.spi_master** %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i64 @of_device_get_match_data(%struct.TYPE_16__* %65)
  %67 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %68 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %70 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %69, i32 0, i32 0
  store i32 100000000, i32* %70, align 4
  %71 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %72 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %71, i32 0, i32 1
  store i32 3000, i32* %72, align 4
  %73 = load i32, i32* @sun6i_spi_set_cs, align 4
  %74 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %75 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @sun6i_spi_transfer_one, align 4
  %77 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %78 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %80 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %79, i32 0, i32 2
  store i32 4, i32* %80, align 4
  %81 = load i32, i32* @SPI_CPOL, align 4
  %82 = load i32, i32* @SPI_CPHA, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SPI_CS_HIGH, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SPI_LSB_FIRST, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %89 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = call i32 @SPI_BPW_MASK(i32 8)
  %91 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %92 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %98 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %101 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %100, i32 0, i32 4
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* @sun6i_spi_max_transfer_size, align 4
  %103 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %104 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i8* @devm_clk_get(%struct.TYPE_16__* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %109 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %111 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %60
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @dev_err(%struct.TYPE_16__* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %120 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %6, align 4
  br label %202

123:                                              ; preds = %60
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i8* @devm_clk_get(%struct.TYPE_16__* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %127 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %128 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %130 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @IS_ERR(i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %123
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @dev_err(%struct.TYPE_16__* %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %138 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %139 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @PTR_ERR(i8* %140)
  store i32 %141, i32* %6, align 4
  br label %202

142:                                              ; preds = %123
  %143 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %144 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %143, i32 0, i32 2
  %145 = call i32 @init_completion(i32* %144)
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = call i8* @devm_reset_control_get_exclusive(%struct.TYPE_16__* %147, i32* null)
  %149 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %150 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %152 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @IS_ERR(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %142
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @dev_err(%struct.TYPE_16__* %158, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %160 = load %struct.sun6i_spi*, %struct.sun6i_spi** %5, align 8
  %161 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @PTR_ERR(i8* %162)
  store i32 %163, i32* %6, align 4
  br label %202

164:                                              ; preds = %142
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 @sun6i_spi_runtime_resume(%struct.TYPE_16__* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 @dev_err(%struct.TYPE_16__* %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %202

174:                                              ; preds = %164
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = call i32 @pm_runtime_set_active(%struct.TYPE_16__* %176)
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %179)
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 @pm_runtime_idle(%struct.TYPE_16__* %182)
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %187 = call i32 @devm_spi_register_master(%struct.TYPE_16__* %185, %struct.spi_master* %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %174
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = call i32 @dev_err(%struct.TYPE_16__* %192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %195

194:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %206

195:                                              ; preds = %190
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = call i32 @pm_runtime_disable(%struct.TYPE_16__* %197)
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @sun6i_spi_runtime_suspend(%struct.TYPE_16__* %200)
  br label %202

202:                                              ; preds = %195, %170, %156, %134, %115, %56, %44, %34
  %203 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %204 = call i32 @spi_master_put(%struct.spi_master* %203)
  %205 = load i32, i32* %6, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %202, %194, %13
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.sun6i_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_16__*, i32, i32, i32, i8*, %struct.sun6i_spi*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_16__*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @sun6i_spi_runtime_resume(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_idle(%struct.TYPE_16__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_16__*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_16__*) #1

declare dso_local i32 @sun6i_spi_runtime_suspend(%struct.TYPE_16__*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
