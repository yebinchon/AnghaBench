; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-coldfire-qspi.c_mcfqspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-coldfire-qspi.c_mcfqspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcfqspi = type { i64, i32, i32, i64, i32 }
%struct.mcfqspi_platform_data = type { i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"platform data is missing\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"pdata->cs_control is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"spi_alloc_master failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"platform_get_irq failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@mcfqspi_irq_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"qspi_clk\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clk_get failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"error initializing cs_control\0A\00", align 1
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@mcfqspi_setup = common dso_local global i32 0, align 4
@mcfqspi_set_cs = common dso_local global i32 0, align 4
@mcfqspi_transfer_one = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"spi_register_master failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Coldfire QSPI bus driver\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Coldfire QSPI probe failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcfqspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcfqspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.mcfqspi*, align 8
  %6 = alloca %struct.mcfqspi_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.mcfqspi_platform_data* @dev_get_platdata(i32* %9)
  store %struct.mcfqspi_platform_data* %10, %struct.mcfqspi_platform_data** %6, align 8
  %11 = load %struct.mcfqspi_platform_data*, %struct.mcfqspi_platform_data** %6, align 8
  %12 = icmp ne %struct.mcfqspi_platform_data* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %202

19:                                               ; preds = %1
  %20 = load %struct.mcfqspi_platform_data*, %struct.mcfqspi_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.mcfqspi_platform_data, %struct.mcfqspi_platform_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %202

30:                                               ; preds = %19
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call %struct.spi_master* @spi_alloc_master(i32* %32, i32 32)
  store %struct.spi_master* %33, %struct.spi_master** %4, align 8
  %34 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %35 = icmp eq %struct.spi_master* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %202

42:                                               ; preds = %30
  %43 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %44 = call %struct.mcfqspi* @spi_master_get_devdata(%struct.spi_master* %43)
  store %struct.mcfqspi* %44, %struct.mcfqspi** %5, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %45, i32 0)
  %47 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %48 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %50 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %56 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %7, align 4
  br label %195

59:                                               ; preds = %42
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = call i64 @platform_get_irq(%struct.platform_device* %60, i32 0)
  %62 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %63 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %65 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %195

74:                                               ; preds = %59
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %78 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @mcfqspi_irq_handler, align 4
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %85 = call i32 @devm_request_irq(i32* %76, i64 %79, i32 %80, i32 0, i32 %83, %struct.mcfqspi* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %195

92:                                               ; preds = %74
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @devm_clk_get(i32* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %97 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %99 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @IS_ERR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %92
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_dbg(i32* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %107 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %108 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @PTR_ERR(i32 %109)
  store i32 %110, i32* %7, align 4
  br label %195

111:                                              ; preds = %92
  %112 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %113 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @clk_enable(i32 %114)
  %116 = load %struct.mcfqspi_platform_data*, %struct.mcfqspi_platform_data** %6, align 8
  %117 = getelementptr inbounds %struct.mcfqspi_platform_data, %struct.mcfqspi_platform_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %120 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load %struct.mcfqspi_platform_data*, %struct.mcfqspi_platform_data** %6, align 8
  %122 = getelementptr inbounds %struct.mcfqspi_platform_data, %struct.mcfqspi_platform_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %125 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  %126 = load %struct.mcfqspi_platform_data*, %struct.mcfqspi_platform_data** %6, align 8
  %127 = getelementptr inbounds %struct.mcfqspi_platform_data, %struct.mcfqspi_platform_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %130 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %132 = call i32 @mcfqspi_cs_setup(%struct.mcfqspi* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %111
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_dbg(i32* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %190

139:                                              ; preds = %111
  %140 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %141 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %140, i32 0, i32 2
  %142 = call i32 @init_waitqueue_head(i32* %141)
  %143 = load i32, i32* @SPI_CS_HIGH, align 4
  %144 = load i32, i32* @SPI_CPOL, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @SPI_CPHA, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %149 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = call i32 @SPI_BPW_RANGE_MASK(i32 8, i32 16)
  %151 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %152 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @mcfqspi_setup, align 4
  %154 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %155 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @mcfqspi_set_cs, align 4
  %157 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %158 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @mcfqspi_transfer_one, align 4
  %160 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %161 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  %162 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %163 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %166 = call i32 @platform_set_drvdata(%struct.platform_device* %164, %struct.spi_master* %165)
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 @pm_runtime_enable(i32* %168)
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %173 = call i32 @devm_spi_register_master(i32* %171, %struct.spi_master* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %139
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i32 @dev_dbg(i32* %178, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %184

180:                                              ; preds = %139
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 @dev_info(i32* %182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %202

184:                                              ; preds = %176
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i32 @pm_runtime_disable(i32* %186)
  %188 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %189 = call i32 @mcfqspi_cs_teardown(%struct.mcfqspi* %188)
  br label %190

190:                                              ; preds = %184, %135
  %191 = load %struct.mcfqspi*, %struct.mcfqspi** %5, align 8
  %192 = getelementptr inbounds %struct.mcfqspi, %struct.mcfqspi* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @clk_disable(i32 %193)
  br label %195

195:                                              ; preds = %190, %103, %88, %68, %54
  %196 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %197 = call i32 @spi_master_put(%struct.spi_master* %196)
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 @dev_dbg(i32* %199, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %195, %180, %36, %24, %13
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local %struct.mcfqspi_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local %struct.mcfqspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.mcfqspi*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @mcfqspi_cs_setup(%struct.mcfqspi*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @devm_spi_register_master(i32*, %struct.spi_master*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @mcfqspi_cs_teardown(%struct.mcfqspi*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
