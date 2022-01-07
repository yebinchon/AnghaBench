; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__, i32, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.spi_controller = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.sh_msiof_chipdata = type { i32, i32, i64, i64, i32 }
%struct.sh_msiof_spi_info = type { i64, i32, i64, i64 }
%struct.sh_msiof_spi_priv = type { %struct.sh_msiof_spi_info*, i64, i64, %struct.platform_device*, i32, i32, i32, i32, i32, %struct.spi_controller* }

@.str = private unnamed_addr constant [30 x i8] c"failed to obtain device info\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MSIOF_SPI_SLAVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@sh_msiof_spi_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to request irq\0A\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@sh_msiof_spi_setup = common dso_local global i32 0, align 4
@sh_msiof_prepare_message = common dso_local global i32 0, align 4
@sh_msiof_slave_abort = common dso_local global i32 0, align 4
@sh_msiof_transfer_one = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"DMA not available, using PIO\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"devm_spi_register_controller error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_msiof_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.sh_msiof_chipdata*, align 8
  %6 = alloca %struct.sh_msiof_spi_info*, align 8
  %7 = alloca %struct.sh_msiof_spi_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.sh_msiof_chipdata* @of_device_get_match_data(%struct.TYPE_18__* %11)
  store %struct.sh_msiof_chipdata* %12, %struct.sh_msiof_chipdata** %5, align 8
  %13 = load %struct.sh_msiof_chipdata*, %struct.sh_msiof_chipdata** %5, align 8
  %14 = icmp ne %struct.sh_msiof_chipdata* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.sh_msiof_spi_info* @sh_msiof_spi_parse_dt(%struct.TYPE_18__* %17)
  store %struct.sh_msiof_spi_info* %18, %struct.sh_msiof_spi_info** %6, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.sh_msiof_chipdata*
  store %struct.sh_msiof_chipdata* %26, %struct.sh_msiof_chipdata** %5, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.sh_msiof_spi_info* @dev_get_platdata(%struct.TYPE_18__* %28)
  store %struct.sh_msiof_spi_info* %29, %struct.sh_msiof_spi_info** %6, align 8
  br label %30

30:                                               ; preds = %19, %15
  %31 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %6, align 8
  %32 = icmp ne %struct.sh_msiof_spi_info* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_18__* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %280

39:                                               ; preds = %30
  %40 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %6, align 8
  %41 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MSIOF_SPI_SLAVE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call %struct.spi_controller* @spi_alloc_slave(%struct.TYPE_18__* %47, i32 64)
  store %struct.spi_controller* %48, %struct.spi_controller** %4, align 8
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call %struct.spi_controller* @spi_alloc_master(%struct.TYPE_18__* %51, i32 64)
  store %struct.spi_controller* %52, %struct.spi_controller** %4, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %55 = icmp eq %struct.spi_controller* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %280

59:                                               ; preds = %53
  %60 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %61 = call %struct.sh_msiof_spi_priv* @spi_controller_get_devdata(%struct.spi_controller* %60)
  store %struct.sh_msiof_spi_priv* %61, %struct.sh_msiof_spi_priv** %7, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %64 = call i32 @platform_set_drvdata(%struct.platform_device* %62, %struct.sh_msiof_spi_priv* %63)
  %65 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %66 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %67 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %66, i32 0, i32 9
  store %struct.spi_controller* %65, %struct.spi_controller** %67, align 8
  %68 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %6, align 8
  %69 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %70 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %69, i32 0, i32 0
  store %struct.sh_msiof_spi_info* %68, %struct.sh_msiof_spi_info** %70, align 8
  %71 = load %struct.sh_msiof_chipdata*, %struct.sh_msiof_chipdata** %5, align 8
  %72 = getelementptr inbounds %struct.sh_msiof_chipdata, %struct.sh_msiof_chipdata* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %75 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %77 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %76, i32 0, i32 7
  %78 = call i32 @init_completion(i32* %77)
  %79 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %80 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %79, i32 0, i32 6
  %81 = call i32 @init_completion(i32* %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @devm_clk_get(%struct.TYPE_18__* %83, i32* null)
  %85 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %86 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %88 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %59
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(%struct.TYPE_18__* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %97 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %9, align 4
  br label %276

100:                                              ; preds = %59
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = call i32 @platform_get_irq(%struct.platform_device* %101, i32 0)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %9, align 4
  br label %276

107:                                              ; preds = %100
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %108, i32 0)
  %110 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %111 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %113 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @IS_ERR(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %107
  %118 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %119 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %9, align 4
  br label %276

122:                                              ; preds = %107
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @sh_msiof_spi_irq, align 4
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @dev_name(%struct.TYPE_18__* %128)
  %130 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %131 = call i32 @devm_request_irq(%struct.TYPE_18__* %124, i32 %125, i32 %126, i32 0, i32 %129, %struct.sh_msiof_spi_priv* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %122
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @dev_err(%struct.TYPE_18__* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %276

138:                                              ; preds = %122
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %141 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %140, i32 0, i32 3
  store %struct.platform_device* %139, %struct.platform_device** %141, align 8
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %143)
  %145 = load %struct.sh_msiof_chipdata*, %struct.sh_msiof_chipdata** %5, align 8
  %146 = getelementptr inbounds %struct.sh_msiof_chipdata, %struct.sh_msiof_chipdata* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %149 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load %struct.sh_msiof_chipdata*, %struct.sh_msiof_chipdata** %5, align 8
  %151 = getelementptr inbounds %struct.sh_msiof_chipdata, %struct.sh_msiof_chipdata* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %154 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %156 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %155, i32 0, i32 0
  %157 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %156, align 8
  %158 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %138
  %162 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %163 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %162, i32 0, i32 0
  %164 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %163, align 8
  %165 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %168 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %161, %138
  %170 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %171 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %170, i32 0, i32 0
  %172 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %171, align 8
  %173 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %169
  %177 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %178 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %177, i32 0, i32 0
  %179 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %178, align 8
  %180 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %183 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %176, %169
  %185 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %186 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %185, i32 0, i32 0
  %187 = load %struct.sh_msiof_spi_info*, %struct.sh_msiof_spi_info** %186, align 8
  %188 = getelementptr inbounds %struct.sh_msiof_spi_info, %struct.sh_msiof_spi_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %191 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %190, i32 0, i32 11
  store i32 %189, i32* %191, align 4
  %192 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %193 = call i32 @sh_msiof_get_cs_gpios(%struct.sh_msiof_spi_priv* %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  br label %276

197:                                              ; preds = %184
  %198 = load i32, i32* @SPI_CPOL, align 4
  %199 = load i32, i32* @SPI_CPHA, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @SPI_CS_HIGH, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %204 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* @SPI_LSB_FIRST, align 4
  %206 = load i32, i32* @SPI_3WIRE, align 4
  %207 = or i32 %205, %206
  %208 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %209 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  %212 = load %struct.sh_msiof_chipdata*, %struct.sh_msiof_chipdata** %5, align 8
  %213 = getelementptr inbounds %struct.sh_msiof_chipdata, %struct.sh_msiof_chipdata* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %216 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %215, i32 0, i32 10
  store i32 %214, i32* %216, align 4
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %221 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %220, i32 0, i32 9
  store i32 %219, i32* %221, align 4
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %227 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %226, i32 0, i32 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* @sh_msiof_spi_setup, align 4
  %230 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %231 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %230, i32 0, i32 7
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @sh_msiof_prepare_message, align 4
  %233 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %234 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @sh_msiof_slave_abort, align 4
  %236 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %237 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 4
  %238 = load %struct.sh_msiof_chipdata*, %struct.sh_msiof_chipdata** %5, align 8
  %239 = getelementptr inbounds %struct.sh_msiof_chipdata, %struct.sh_msiof_chipdata* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %242 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 4
  %243 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %244 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %243, i32 0, i32 1
  store i32 1, i32* %244, align 4
  %245 = load i32, i32* @sh_msiof_transfer_one, align 4
  %246 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %247 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %249 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %248, i32 0, i32 2
  store i32 1, i32* %249, align 4
  %250 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %251 = call i32 @sh_msiof_request_dma(%struct.sh_msiof_spi_priv* %250)
  store i32 %251, i32* %9, align 4
  %252 = load i32, i32* %9, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %197
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %255, i32 0, i32 0
  %257 = call i32 @dev_warn(%struct.TYPE_18__* %256, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %258

258:                                              ; preds = %254, %197
  %259 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %260 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %259, i32 0, i32 0
  %261 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %262 = call i32 @devm_spi_register_controller(%struct.TYPE_18__* %260, %struct.spi_controller* %261)
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %266, i32 0, i32 0
  %268 = call i32 @dev_err(%struct.TYPE_18__* %267, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %270

269:                                              ; preds = %258
  store i32 0, i32* %2, align 4
  br label %280

270:                                              ; preds = %265
  %271 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %7, align 8
  %272 = call i32 @sh_msiof_release_dma(%struct.sh_msiof_spi_priv* %271)
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %273, i32 0, i32 0
  %275 = call i32 @pm_runtime_disable(%struct.TYPE_18__* %274)
  br label %276

276:                                              ; preds = %270, %196, %134, %117, %105, %92
  %277 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %278 = call i32 @spi_controller_put(%struct.spi_controller* %277)
  %279 = load i32, i32* %9, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %276, %269, %56, %33
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local %struct.sh_msiof_chipdata* @of_device_get_match_data(%struct.TYPE_18__*) #1

declare dso_local %struct.sh_msiof_spi_info* @sh_msiof_spi_parse_dt(%struct.TYPE_18__*) #1

declare dso_local %struct.sh_msiof_spi_info* @dev_get_platdata(%struct.TYPE_18__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.spi_controller* @spi_alloc_slave(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.sh_msiof_spi_priv* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_msiof_spi_priv*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i32, %struct.sh_msiof_spi_priv*) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @sh_msiof_get_cs_gpios(%struct.sh_msiof_spi_priv*) #1

declare dso_local i32 @sh_msiof_request_dma(%struct.sh_msiof_spi_priv*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @devm_spi_register_controller(%struct.TYPE_18__*, %struct.spi_controller*) #1

declare dso_local i32 @sh_msiof_release_dma(%struct.sh_msiof_spi_priv*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
