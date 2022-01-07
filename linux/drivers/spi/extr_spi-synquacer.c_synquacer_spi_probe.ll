; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, %struct.device_node* }
%struct.synquacer_spi = type { i8*, %struct.TYPE_16__*, i32, i32, i8*, i8*, i8*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_CLOCK_SRC_IHCLK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"socionext,ihclk-rate\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iHCLK\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iPCLK\00", align 1
@SYNQUACER_HSSPI_CLOCK_SRC_IPCLK = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"specified wrong clock source\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"clock not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to enable clock (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"missing clock source\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"socionext,set-aces\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"socionext,use-rtm\00", align 1
@SYNQUACER_HSSPI_NUM_CHIP_SELECT = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_IRQ_NAME_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"%s-rx\00", align 1
@sq_spi_rx_handler = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"request rx_irq failed (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s-tx\00", align 1
@sq_spi_tx_handler = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"request tx_irq failed (%d)\0A\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@synquacer_spi_set_cs = common dso_local global i32 0, align 4
@synquacer_spi_transfer_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @synquacer_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.synquacer_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_16__* %15, i32 64)
  store %struct.spi_master* %16, %struct.spi_master** %5, align 8
  %17 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %18 = icmp ne %struct.spi_master* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %319

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.spi_master* %24)
  %26 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %27 = call %struct.synquacer_spi* @spi_master_get_devdata(%struct.spi_master* %26)
  store %struct.synquacer_spi* %27, %struct.synquacer_spi** %6, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 1
  %30 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %31 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %30, i32 0, i32 1
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %31, align 8
  %32 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %33 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %32, i32 0, i32 8
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %35, i32 0)
  %37 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %38 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %40 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %39, i32 0, i32 7
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %22
  %45 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %46 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %45, i32 0, i32 7
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %7, align 4
  br label %315

49:                                               ; preds = %22
  %50 = load i8*, i8** @SYNQUACER_HSSPI_CLOCK_SRC_IHCLK, align 8
  %51 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %52 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 1
  %55 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %56 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %55, i32 0, i32 0
  %57 = call i32 @device_property_read_u32(%struct.TYPE_16__* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  %60 = call i64 @dev_of_node(%struct.TYPE_16__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %141

62:                                               ; preds = %49
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 1
  %65 = call i64 @device_property_match_string(%struct.TYPE_16__* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i8*, i8** @SYNQUACER_HSSPI_CLOCK_SRC_IHCLK, align 8
  %69 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %70 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %72 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %71, i32 0, i32 1
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = call i8* @devm_clk_get(%struct.TYPE_16__* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %76 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %99

77:                                               ; preds = %62
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = call i64 @device_property_match_string(%struct.TYPE_16__* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** @SYNQUACER_HSSPI_CLOCK_SRC_IPCLK, align 8
  %84 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %85 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %87 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %86, i32 0, i32 1
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = call i8* @devm_clk_get(%struct.TYPE_16__* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %91 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %98

92:                                               ; preds = %77
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 1
  %95 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %315

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %67
  %100 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %101 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @IS_ERR(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %107 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @PTR_ERR(i8* %108)
  %110 = load i32, i32* @EPROBE_DEFER, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %105
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 1
  %116 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %105
  %118 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %119 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  store i32 %121, i32* %7, align 4
  br label %315

122:                                              ; preds = %99
  %123 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %124 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @clk_prepare_enable(i8* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 1
  %132 = load i32, i32* %7, align 4
  %133 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %315

134:                                              ; preds = %122
  %135 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %136 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @clk_get_rate(i8* %137)
  %139 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %140 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %134, %49
  %142 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %143 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 1
  %149 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %319

152:                                              ; preds = %141
  %153 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %154 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sdiv i32 %155, 254
  %157 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %158 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 1
  %161 = call i8* @device_property_read_bool(%struct.TYPE_16__* %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %162 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %163 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %162, i32 0, i32 5
  store i8* %161, i8** %163, align 8
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 1
  %166 = call i8* @device_property_read_bool(%struct.TYPE_16__* %165, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %167 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %168 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* @SYNQUACER_HSSPI_NUM_CHIP_SELECT, align 4
  %170 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %171 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %170, i32 0, i32 9
  store i32 %169, i32* %171, align 8
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = call i32 @platform_get_irq(%struct.platform_device* %172, i32 0)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp sle i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %152
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %7, align 4
  br label %315

178:                                              ; preds = %152
  %179 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %180 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @SYNQUACER_HSSPI_IRQ_NAME_MAX, align 4
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 1
  %185 = call i8* @dev_name(%struct.TYPE_16__* %184)
  %186 = call i32 @snprintf(i32 %181, i32 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %185)
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 1
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @sq_spi_rx_handler, align 4
  %191 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %192 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %195 = call i32 @devm_request_irq(%struct.TYPE_16__* %188, i32 %189, i32 %190, i32 0, i32 %193, %struct.synquacer_spi* %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %178
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 1
  %201 = load i32, i32* %7, align 4
  %202 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %201)
  br label %315

203:                                              ; preds = %178
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = call i32 @platform_get_irq(%struct.platform_device* %204, i32 1)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp sle i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load i32, i32* %9, align 4
  store i32 %209, i32* %7, align 4
  br label %315

210:                                              ; preds = %203
  %211 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %212 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @SYNQUACER_HSSPI_IRQ_NAME_MAX, align 4
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 1
  %217 = call i8* @dev_name(%struct.TYPE_16__* %216)
  %218 = call i32 @snprintf(i32 %213, i32 %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %217)
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 1
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* @sq_spi_tx_handler, align 4
  %223 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %224 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %227 = call i32 @devm_request_irq(%struct.TYPE_16__* %220, i32 %221, i32 %222, i32 0, i32 %225, %struct.synquacer_spi* %226)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %210
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 1
  %233 = load i32, i32* %7, align 4
  %234 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %232, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %233)
  br label %315

235:                                              ; preds = %210
  %236 = load %struct.device_node*, %struct.device_node** %4, align 8
  %237 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %238 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  store %struct.device_node* %236, %struct.device_node** %239, align 8
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %245 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %244, i32 0, i32 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 8
  %247 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %248 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %247, i32 0, i32 2
  store i32 1, i32* %248, align 8
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %253 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %252, i32 0, i32 7
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @SPI_CPOL, align 4
  %255 = load i32, i32* @SPI_CPHA, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @SPI_TX_DUAL, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @SPI_RX_DUAL, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @SPI_TX_QUAD, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @SPI_RX_QUAD, align 4
  %264 = or i32 %262, %263
  %265 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %266 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 4
  %267 = call i32 @SPI_BPW_MASK(i32 32)
  %268 = call i32 @SPI_BPW_MASK(i32 24)
  %269 = or i32 %267, %268
  %270 = call i32 @SPI_BPW_MASK(i32 16)
  %271 = or i32 %269, %270
  %272 = call i32 @SPI_BPW_MASK(i32 8)
  %273 = or i32 %271, %272
  %274 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %275 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %274, i32 0, i32 4
  store i32 %273, i32* %275, align 8
  %276 = load i32, i32* @synquacer_spi_set_cs, align 4
  %277 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %278 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* @synquacer_spi_transfer_one, align 4
  %280 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %281 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %280, i32 0, i32 5
  store i32 %279, i32* %281, align 4
  %282 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %283 = call i32 @synquacer_spi_enable(%struct.spi_master* %282)
  store i32 %283, i32* %7, align 4
  %284 = load i32, i32* %7, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %235
  br label %310

287:                                              ; preds = %235
  %288 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %289 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %288, i32 0, i32 1
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = call i32 @pm_runtime_set_active(%struct.TYPE_16__* %290)
  %292 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %293 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %292, i32 0, i32 1
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %293, align 8
  %295 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %294)
  %296 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %297 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %296, i32 0, i32 1
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %297, align 8
  %299 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %300 = call i32 @devm_spi_register_master(%struct.TYPE_16__* %298, %struct.spi_master* %299)
  store i32 %300, i32* %7, align 4
  %301 = load i32, i32* %7, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %287
  br label %305

304:                                              ; preds = %287
  store i32 0, i32* %2, align 4
  br label %319

305:                                              ; preds = %303
  %306 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %307 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %306, i32 0, i32 1
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %307, align 8
  %309 = call i32 @pm_runtime_disable(%struct.TYPE_16__* %308)
  br label %310

310:                                              ; preds = %305, %286
  %311 = load %struct.synquacer_spi*, %struct.synquacer_spi** %6, align 8
  %312 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 @clk_disable_unprepare(i8* %313)
  br label %315

315:                                              ; preds = %310, %230, %208, %198, %176, %129, %117, %92, %44
  %316 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %317 = call i32 @spi_master_put(%struct.spi_master* %316)
  %318 = load i32, i32* %7, align 4
  store i32 %318, i32* %2, align 4
  br label %319

319:                                              ; preds = %315, %304, %146, %19
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.synquacer_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i64 @dev_of_node(%struct.TYPE_16__*) #1

declare dso_local i64 @device_property_match_string(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i8* @device_property_read_bool(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_16__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_16__*, i32, i32, i32, i32, %struct.synquacer_spi*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @synquacer_spi_enable(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_16__*, %struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_16__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
