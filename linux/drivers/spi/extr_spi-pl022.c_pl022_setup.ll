; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_pl022_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022_config_chip = type { i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.spi_device = type { i32, i64, i32, %struct.TYPE_10__, i32, %struct.pl022_config_chip*, i32 }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.chip_data = type { i64, i32, i32, i32, i64, i64, i64, i32, i32, i64 }
%struct.ssp_clock_params = type { i32, i32 }
%struct.pl022 = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i32* }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"allocated memory for controller's runtime state\0A\00", align 1
@pl022_default_chip_info = common dso_local global %struct.pl022_config_chip zeroinitializer, align 8
@SSP_MASTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"pl022,interface\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"pl022,com-mode\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"pl022,rx-level-trig\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"pl022,tx-level-trig\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"pl022,ctrl-len\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"pl022,wait-state\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"pl022,duplex\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"using default controller_data settings\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"using user supplied controller_data settings\0A\00", align 1
@CPSDVR_MIN = common dso_local global i32 0, align 4
@CPSDVR_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"cpsdvsr is configured incorrectly\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"controller data is incorrect\00", align 1
@null_cs_control = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"invalid chip select\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"illegal data size for this controller!\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"This controller can only handle 4 <= n <= %d bit words\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"4 <= n <=8 bits per word\0A\00", align 1
@READING_U8 = common dso_local global i32 0, align 4
@WRITING_U8 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"9 <= n <= 16 bits per word\0A\00", align 1
@READING_U16 = common dso_local global i32 0, align 4
@WRITING_U16 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"17 <= n <= 32 bits per word\0A\00", align 1
@READING_U32 = common dso_local global i32 0, align 4
@WRITING_U32 = common dso_local global i32 0, align 4
@DMA_TRANSFER = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"DMA mode set in controller state\0A\00", align 1
@SSP_DMA_ENABLED = common dso_local global i32 0, align 4
@SSP_DMACR_MASK_RXDMAE = common dso_local global i32 0, align 4
@SSP_DMACR_MASK_TXDMAE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"DMA mode NOT set in controller state\0A\00", align 1
@SSP_DMA_DISABLED = common dso_local global i32 0, align 4
@SSP_CR1_MASK_FBCLKDEL_ST = common dso_local global i32 0, align 4
@SSP_CR0_MASK_HALFDUP_ST = common dso_local global i32 0, align 4
@SSP_CR0_MASK_CSS_ST = common dso_local global i32 0, align 4
@SSP_CR0_MASK_FRF_ST = common dso_local global i32 0, align 4
@SSP_CR1_MASK_MWAIT_ST = common dso_local global i32 0, align 4
@SSP_CR0_MASK_DSS_ST = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SSP_RX_LSB = common dso_local global i32 0, align 4
@SSP_TX_LSB = common dso_local global i32 0, align 4
@SSP_RX_MSB = common dso_local global i32 0, align 4
@SSP_TX_MSB = common dso_local global i32 0, align 4
@SSP_CR1_MASK_RENDN_ST = common dso_local global i32 0, align 4
@SSP_CR1_MASK_TENDN_ST = common dso_local global i32 0, align 4
@SSP_CR1_MASK_RXIFLSEL_ST = common dso_local global i32 0, align 4
@SSP_CR1_MASK_TXIFLSEL_ST = common dso_local global i32 0, align 4
@SSP_CR0_MASK_DSS = common dso_local global i32 0, align 4
@SSP_CR0_MASK_FRF = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SSP_CLK_POL_IDLE_HIGH = common dso_local global i32 0, align 4
@SSP_CLK_POL_IDLE_LOW = common dso_local global i32 0, align 4
@SSP_CR0_MASK_SPO = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SSP_CLK_SECOND_EDGE = common dso_local global i32 0, align 4
@SSP_CLK_FIRST_EDGE = common dso_local global i32 0, align 4
@SSP_CR0_MASK_SPH = common dso_local global i32 0, align 4
@SSP_CR0_MASK_SCR = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@LOOPBACK_ENABLED = common dso_local global i32 0, align 4
@LOOPBACK_DISABLED = common dso_local global i32 0, align 4
@SSP_CR1_MASK_LBM = common dso_local global i32 0, align 4
@SSP_DISABLED = common dso_local global i32 0, align 4
@SSP_CR1_MASK_SSE = common dso_local global i32 0, align 4
@SSP_CR1_MASK_MS = common dso_local global i32 0, align 4
@SSP_CR1_MASK_SOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @pl022_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl022_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.pl022_config_chip*, align 8
  %5 = alloca %struct.pl022_config_chip, align 8
  %6 = alloca %struct.chip_data*, align 8
  %7 = alloca %struct.ssp_clock_params, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pl022*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %14 = bitcast %struct.ssp_clock_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  store i32 0, i32* %8, align 4
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.pl022* @spi_master_get_devdata(i32 %17)
  store %struct.pl022* %18, %struct.pl022** %9, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  store %struct.device_node* %25, %struct.device_node** %12, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %557

33:                                               ; preds = %1
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %34)
  store %struct.chip_data* %35, %struct.chip_data** %6, align 8
  %36 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %37 = icmp eq %struct.chip_data* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.chip_data* @kzalloc(i32 64, i32 %39)
  store %struct.chip_data* %40, %struct.chip_data** %6, align 8
  %41 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %42 = icmp ne %struct.chip_data* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %557

46:                                               ; preds = %38
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 3
  %49 = call i32 @dev_dbg(%struct.TYPE_10__* %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %33
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 5
  %53 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %52, align 8
  store %struct.pl022_config_chip* %53, %struct.pl022_config_chip** %4, align 8
  %54 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %55 = icmp eq %struct.pl022_config_chip* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load %struct.device_node*, %struct.device_node** %12, align 8
  %58 = icmp ne %struct.device_node* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = bitcast %struct.pl022_config_chip* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 bitcast (%struct.pl022_config_chip* @pl022_default_chip_info to i8*), i64 96, i1 false)
  %61 = load i32, i32* @SSP_MASTER, align 4
  %62 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %5, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.device_node*, %struct.device_node** %12, align 8
  %64 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %5, i32 0, i32 1
  %65 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %64)
  %66 = load %struct.device_node*, %struct.device_node** %12, align 8
  %67 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %5, i32 0, i32 2
  %68 = call i32 @of_property_read_u32(%struct.device_node* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64* %67)
  %69 = load %struct.device_node*, %struct.device_node** %12, align 8
  %70 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %5, i32 0, i32 3
  %71 = call i32 @of_property_read_u32(%struct.device_node* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64* %70)
  %72 = load %struct.device_node*, %struct.device_node** %12, align 8
  %73 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %5, i32 0, i32 4
  %74 = call i32 @of_property_read_u32(%struct.device_node* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64* %73)
  %75 = load %struct.device_node*, %struct.device_node** %12, align 8
  %76 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %5, i32 0, i32 5
  %77 = call i32 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64* %76)
  %78 = load %struct.device_node*, %struct.device_node** %12, align 8
  %79 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %5, i32 0, i32 6
  %80 = call i32 @of_property_read_u32(%struct.device_node* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64* %79)
  %81 = load %struct.device_node*, %struct.device_node** %12, align 8
  %82 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %5, i32 0, i32 7
  %83 = call i32 @of_property_read_u32(%struct.device_node* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64* %82)
  store %struct.pl022_config_chip* %5, %struct.pl022_config_chip** %4, align 8
  br label %88

84:                                               ; preds = %56
  store %struct.pl022_config_chip* @pl022_default_chip_info, %struct.pl022_config_chip** %4, align 8
  %85 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %86 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %85, i32 0, i32 3
  %87 = call i32 @dev_dbg(%struct.TYPE_10__* %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %59
  br label %93

89:                                               ; preds = %50
  %90 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 3
  %92 = call i32 @dev_dbg(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %88
  %94 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %95 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 0, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %93
  %100 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %101 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 0, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = load %struct.pl022*, %struct.pl022** %9, align 8
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %108 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @calculate_effective_freq(%struct.pl022* %106, i32 %109, %struct.ssp_clock_params* %7)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %551

114:                                              ; preds = %105
  br label %129

115:                                              ; preds = %99, %93
  %116 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %117 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %116, i32 0, i32 11
  %118 = call i32 @memcpy(%struct.ssp_clock_params* %7, %struct.TYPE_9__* %117, i32 8)
  %119 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %7, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = srem i32 %120, 2
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %7, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %7, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %115
  br label %129

129:                                              ; preds = %128, %114
  %130 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CPSDVR_MIN, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %7, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @CPSDVR_MAX, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %134, %129
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %8, align 4
  %142 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %143 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %142, i32 0, i32 3
  %144 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %551

145:                                              ; preds = %134
  %146 = load %struct.pl022*, %struct.pl022** %9, align 8
  %147 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %148 = call i32 @verify_controller_parameters(%struct.pl022* %146, %struct.pl022_config_chip* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %153 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %152, i32 0, i32 3
  %154 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %551

155:                                              ; preds = %145
  %156 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %157 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.pl022*, %struct.pl022** %9, align 8
  %160 = getelementptr inbounds %struct.pl022, %struct.pl022* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %162 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.pl022*, %struct.pl022** %9, align 8
  %165 = getelementptr inbounds %struct.pl022, %struct.pl022* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %167 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %170 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %172 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %171, i32 0, i32 10
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %194, label %175

175:                                              ; preds = %155
  %176 = load i64, i64* @null_cs_control, align 8
  %177 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %178 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %177, i32 0, i32 9
  store i64 %176, i64* %178, align 8
  %179 = load %struct.pl022*, %struct.pl022** %9, align 8
  %180 = getelementptr inbounds %struct.pl022, %struct.pl022* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %183 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @gpio_is_valid(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %175
  %190 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %191 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %190, i32 0, i32 3
  %192 = call i32 @dev_warn(%struct.TYPE_10__* %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %193

193:                                              ; preds = %189, %175
  br label %200

194:                                              ; preds = %155
  %195 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %196 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %195, i32 0, i32 10
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %199 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %198, i32 0, i32 9
  store i64 %197, i64* %199, align 8
  br label %200

200:                                              ; preds = %194, %193
  %201 = load i32, i32* %10, align 4
  %202 = icmp ule i32 %201, 3
  br i1 %202, label %211, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.pl022*, %struct.pl022** %9, align 8
  %206 = getelementptr inbounds %struct.pl022, %struct.pl022* %205, i32 0, i32 2
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ugt i32 %204, %209
  br i1 %210, label %211, label %225

211:                                              ; preds = %203, %200
  %212 = load i32, i32* @ENOTSUPP, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %8, align 4
  %214 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %215 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %214, i32 0, i32 3
  %216 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %215, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %217 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %218 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %217, i32 0, i32 3
  %219 = load %struct.pl022*, %struct.pl022** %9, align 8
  %220 = getelementptr inbounds %struct.pl022, %struct.pl022* %219, i32 0, i32 2
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %218, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 %223)
  br label %551

225:                                              ; preds = %203
  %226 = load i32, i32* %10, align 4
  %227 = icmp ule i32 %226, 8
  br i1 %227, label %228, label %240

228:                                              ; preds = %225
  %229 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %230 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %229, i32 0, i32 3
  %231 = call i32 @dev_dbg(%struct.TYPE_10__* %230, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %232 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %233 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %232, i32 0, i32 1
  store i32 1, i32* %233, align 8
  %234 = load i32, i32* @READING_U8, align 4
  %235 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %236 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %235, i32 0, i32 8
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @WRITING_U8, align 4
  %238 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %239 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %238, i32 0, i32 7
  store i32 %237, i32* %239, align 8
  br label %268

240:                                              ; preds = %225
  %241 = load i32, i32* %10, align 4
  %242 = icmp ule i32 %241, 16
  br i1 %242, label %243, label %255

243:                                              ; preds = %240
  %244 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %245 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %244, i32 0, i32 3
  %246 = call i32 @dev_dbg(%struct.TYPE_10__* %245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %247 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %248 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %247, i32 0, i32 1
  store i32 2, i32* %248, align 8
  %249 = load i32, i32* @READING_U16, align 4
  %250 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %251 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %250, i32 0, i32 8
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* @WRITING_U16, align 4
  %253 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %254 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %253, i32 0, i32 7
  store i32 %252, i32* %254, align 8
  br label %267

255:                                              ; preds = %240
  %256 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %257 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %256, i32 0, i32 3
  %258 = call i32 @dev_dbg(%struct.TYPE_10__* %257, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %259 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %260 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %259, i32 0, i32 1
  store i32 4, i32* %260, align 8
  %261 = load i32, i32* @READING_U32, align 4
  %262 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %263 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %262, i32 0, i32 8
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* @WRITING_U32, align 4
  %265 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %266 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 8
  br label %267

267:                                              ; preds = %255, %243
  br label %268

268:                                              ; preds = %267, %228
  br label %269

269:                                              ; preds = %268
  %270 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %271 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %270, i32 0, i32 5
  store i64 0, i64* %271, align 8
  %272 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %273 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %272, i32 0, i32 4
  store i64 0, i64* %273, align 8
  %274 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %275 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %274, i32 0, i32 6
  store i64 0, i64* %275, align 8
  %276 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %277 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %276, i32 0, i32 2
  store i32 0, i32* %277, align 4
  %278 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %279 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @DMA_TRANSFER, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %308

283:                                              ; preds = %269
  %284 = load %struct.pl022*, %struct.pl022** %9, align 8
  %285 = getelementptr inbounds %struct.pl022, %struct.pl022* %284, i32 0, i32 3
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %283
  %291 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %292 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %291, i32 0, i32 3
  store i32 1, i32* %292, align 8
  %293 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %294 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %293, i32 0, i32 3
  %295 = call i32 @dev_dbg(%struct.TYPE_10__* %294, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %296 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %297 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %296, i32 0, i32 6
  %298 = load i64, i64* %297, align 8
  %299 = load i32, i32* @SSP_DMA_ENABLED, align 4
  %300 = load i32, i32* @SSP_DMACR_MASK_RXDMAE, align 4
  %301 = call i32 @SSP_WRITE_BITS(i64 %298, i32 %299, i32 %300, i32 0)
  %302 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %303 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* @SSP_DMA_ENABLED, align 4
  %306 = load i32, i32* @SSP_DMACR_MASK_TXDMAE, align 4
  %307 = call i32 @SSP_WRITE_BITS(i64 %304, i32 %305, i32 %306, i32 1)
  br label %326

308:                                              ; preds = %283, %269
  %309 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %310 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %309, i32 0, i32 3
  store i32 0, i32* %310, align 8
  %311 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %312 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %311, i32 0, i32 3
  %313 = call i32 @dev_dbg(%struct.TYPE_10__* %312, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %314 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %315 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %314, i32 0, i32 6
  %316 = load i64, i64* %315, align 8
  %317 = load i32, i32* @SSP_DMA_DISABLED, align 4
  %318 = load i32, i32* @SSP_DMACR_MASK_RXDMAE, align 4
  %319 = call i32 @SSP_WRITE_BITS(i64 %316, i32 %317, i32 %318, i32 0)
  %320 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %321 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %320, i32 0, i32 6
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* @SSP_DMA_DISABLED, align 4
  %324 = load i32, i32* @SSP_DMACR_MASK_TXDMAE, align 4
  %325 = call i32 @SSP_WRITE_BITS(i64 %322, i32 %323, i32 %324, i32 1)
  br label %326

326:                                              ; preds = %308, %290
  %327 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %7, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %330 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %329, i32 0, i32 2
  store i32 %328, i32* %330, align 4
  %331 = load %struct.pl022*, %struct.pl022** %9, align 8
  %332 = getelementptr inbounds %struct.pl022, %struct.pl022* %331, i32 0, i32 2
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %441

337:                                              ; preds = %326
  %338 = load %struct.pl022*, %struct.pl022** %9, align 8
  %339 = getelementptr inbounds %struct.pl022, %struct.pl022* %338, i32 0, i32 2
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %337
  %345 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %346 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %349 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @SSP_CR1_MASK_FBCLKDEL_ST, align 4
  %352 = call i32 @SSP_WRITE_BITS(i64 %347, i32 %350, i32 %351, i32 13)
  br label %390

353:                                              ; preds = %337
  %354 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %355 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %354, i32 0, i32 5
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %358 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %357, i32 0, i32 7
  %359 = load i64, i64* %358, align 8
  %360 = trunc i64 %359 to i32
  %361 = load i32, i32* @SSP_CR0_MASK_HALFDUP_ST, align 4
  %362 = call i32 @SSP_WRITE_BITS(i64 %356, i32 %360, i32 %361, i32 5)
  %363 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %364 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %367 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = load i32, i32* @SSP_CR0_MASK_CSS_ST, align 4
  %371 = call i32 @SSP_WRITE_BITS(i64 %365, i32 %369, i32 %370, i32 16)
  %372 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %373 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %372, i32 0, i32 5
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %376 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = trunc i64 %377 to i32
  %379 = load i32, i32* @SSP_CR0_MASK_FRF_ST, align 4
  %380 = call i32 @SSP_WRITE_BITS(i64 %374, i32 %378, i32 %379, i32 21)
  %381 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %382 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %381, i32 0, i32 4
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %385 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %384, i32 0, i32 6
  %386 = load i64, i64* %385, align 8
  %387 = trunc i64 %386 to i32
  %388 = load i32, i32* @SSP_CR1_MASK_MWAIT_ST, align 4
  %389 = call i32 @SSP_WRITE_BITS(i64 %383, i32 %387, i32 %388, i32 6)
  br label %390

390:                                              ; preds = %353, %344
  %391 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %392 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %391, i32 0, i32 5
  %393 = load i64, i64* %392, align 8
  %394 = load i32, i32* %10, align 4
  %395 = sub i32 %394, 1
  %396 = load i32, i32* @SSP_CR0_MASK_DSS_ST, align 4
  %397 = call i32 @SSP_WRITE_BITS(i64 %393, i32 %395, i32 %396, i32 0)
  %398 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %399 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @SPI_LSB_FIRST, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %390
  %405 = load i32, i32* @SSP_RX_LSB, align 4
  store i32 %405, i32* %11, align 4
  %406 = load i32, i32* @SSP_TX_LSB, align 4
  store i32 %406, i32* %13, align 4
  br label %410

407:                                              ; preds = %390
  %408 = load i32, i32* @SSP_RX_MSB, align 4
  store i32 %408, i32* %11, align 4
  %409 = load i32, i32* @SSP_TX_MSB, align 4
  store i32 %409, i32* %13, align 4
  br label %410

410:                                              ; preds = %407, %404
  %411 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %412 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %411, i32 0, i32 4
  %413 = load i64, i64* %412, align 8
  %414 = load i32, i32* %11, align 4
  %415 = load i32, i32* @SSP_CR1_MASK_RENDN_ST, align 4
  %416 = call i32 @SSP_WRITE_BITS(i64 %413, i32 %414, i32 %415, i32 4)
  %417 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %418 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %417, i32 0, i32 4
  %419 = load i64, i64* %418, align 8
  %420 = load i32, i32* %13, align 4
  %421 = load i32, i32* @SSP_CR1_MASK_TENDN_ST, align 4
  %422 = call i32 @SSP_WRITE_BITS(i64 %419, i32 %420, i32 %421, i32 5)
  %423 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %424 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %423, i32 0, i32 4
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %427 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %426, i32 0, i32 3
  %428 = load i64, i64* %427, align 8
  %429 = trunc i64 %428 to i32
  %430 = load i32, i32* @SSP_CR1_MASK_RXIFLSEL_ST, align 4
  %431 = call i32 @SSP_WRITE_BITS(i64 %425, i32 %429, i32 %430, i32 7)
  %432 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %433 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %432, i32 0, i32 4
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %436 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %435, i32 0, i32 4
  %437 = load i64, i64* %436, align 8
  %438 = trunc i64 %437 to i32
  %439 = load i32, i32* @SSP_CR1_MASK_TXIFLSEL_ST, align 4
  %440 = call i32 @SSP_WRITE_BITS(i64 %434, i32 %438, i32 %439, i32 10)
  br label %458

441:                                              ; preds = %326
  %442 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %443 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %442, i32 0, i32 5
  %444 = load i64, i64* %443, align 8
  %445 = load i32, i32* %10, align 4
  %446 = sub i32 %445, 1
  %447 = load i32, i32* @SSP_CR0_MASK_DSS, align 4
  %448 = call i32 @SSP_WRITE_BITS(i64 %444, i32 %446, i32 %447, i32 0)
  %449 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %450 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %449, i32 0, i32 5
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %453 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = trunc i64 %454 to i32
  %456 = load i32, i32* @SSP_CR0_MASK_FRF, align 4
  %457 = call i32 @SSP_WRITE_BITS(i64 %451, i32 %455, i32 %456, i32 4)
  br label %458

458:                                              ; preds = %441, %410
  %459 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %460 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @SPI_CPOL, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %458
  %466 = load i32, i32* @SSP_CLK_POL_IDLE_HIGH, align 4
  store i32 %466, i32* %11, align 4
  br label %469

467:                                              ; preds = %458
  %468 = load i32, i32* @SSP_CLK_POL_IDLE_LOW, align 4
  store i32 %468, i32* %11, align 4
  br label %469

469:                                              ; preds = %467, %465
  %470 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %471 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %470, i32 0, i32 5
  %472 = load i64, i64* %471, align 8
  %473 = load i32, i32* %11, align 4
  %474 = load i32, i32* @SSP_CR0_MASK_SPO, align 4
  %475 = call i32 @SSP_WRITE_BITS(i64 %472, i32 %473, i32 %474, i32 6)
  %476 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %477 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %476, i32 0, i32 2
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @SPI_CPHA, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %469
  %483 = load i32, i32* @SSP_CLK_SECOND_EDGE, align 4
  store i32 %483, i32* %11, align 4
  br label %486

484:                                              ; preds = %469
  %485 = load i32, i32* @SSP_CLK_FIRST_EDGE, align 4
  store i32 %485, i32* %11, align 4
  br label %486

486:                                              ; preds = %484, %482
  %487 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %488 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %487, i32 0, i32 5
  %489 = load i64, i64* %488, align 8
  %490 = load i32, i32* %11, align 4
  %491 = load i32, i32* @SSP_CR0_MASK_SPH, align 4
  %492 = call i32 @SSP_WRITE_BITS(i64 %489, i32 %490, i32 %491, i32 7)
  %493 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %494 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %493, i32 0, i32 5
  %495 = load i64, i64* %494, align 8
  %496 = getelementptr inbounds %struct.ssp_clock_params, %struct.ssp_clock_params* %7, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @SSP_CR0_MASK_SCR, align 4
  %499 = call i32 @SSP_WRITE_BITS(i64 %495, i32 %497, i32 %498, i32 8)
  %500 = load %struct.pl022*, %struct.pl022** %9, align 8
  %501 = getelementptr inbounds %struct.pl022, %struct.pl022* %500, i32 0, i32 2
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %524

506:                                              ; preds = %486
  %507 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %508 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @SPI_LOOP, align 4
  %511 = and i32 %509, %510
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %506
  %514 = load i32, i32* @LOOPBACK_ENABLED, align 4
  store i32 %514, i32* %11, align 4
  br label %517

515:                                              ; preds = %506
  %516 = load i32, i32* @LOOPBACK_DISABLED, align 4
  store i32 %516, i32* %11, align 4
  br label %517

517:                                              ; preds = %515, %513
  %518 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %519 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %518, i32 0, i32 4
  %520 = load i64, i64* %519, align 8
  %521 = load i32, i32* %11, align 4
  %522 = load i32, i32* @SSP_CR1_MASK_LBM, align 4
  %523 = call i32 @SSP_WRITE_BITS(i64 %520, i32 %521, i32 %522, i32 0)
  br label %524

524:                                              ; preds = %517, %486
  %525 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %526 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %525, i32 0, i32 4
  %527 = load i64, i64* %526, align 8
  %528 = load i32, i32* @SSP_DISABLED, align 4
  %529 = load i32, i32* @SSP_CR1_MASK_SSE, align 4
  %530 = call i32 @SSP_WRITE_BITS(i64 %527, i32 %528, i32 %529, i32 1)
  %531 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %532 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %531, i32 0, i32 4
  %533 = load i64, i64* %532, align 8
  %534 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %535 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @SSP_CR1_MASK_MS, align 4
  %538 = call i32 @SSP_WRITE_BITS(i64 %533, i32 %536, i32 %537, i32 2)
  %539 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %540 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %539, i32 0, i32 4
  %541 = load i64, i64* %540, align 8
  %542 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %4, align 8
  %543 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %542, i32 0, i32 9
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* @SSP_CR1_MASK_SOD, align 4
  %546 = call i32 @SSP_WRITE_BITS(i64 %541, i32 %544, i32 %545, i32 3)
  %547 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %548 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %549 = call i32 @spi_set_ctldata(%struct.spi_device* %547, %struct.chip_data* %548)
  %550 = load i32, i32* %8, align 4
  store i32 %550, i32* %2, align 4
  br label %557

551:                                              ; preds = %211, %151, %139, %113
  %552 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %553 = call i32 @spi_set_ctldata(%struct.spi_device* %552, %struct.chip_data* null)
  %554 = load %struct.chip_data*, %struct.chip_data** %6, align 8
  %555 = call i32 @kfree(%struct.chip_data* %554)
  %556 = load i32, i32* %8, align 4
  store i32 %556, i32* %2, align 4
  br label %557

557:                                              ; preds = %551, %524, %43, %30
  %558 = load i32, i32* %2, align 4
  ret i32 %558
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pl022* @spi_master_get_devdata(i32) #2

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #2

declare dso_local %struct.chip_data* @kzalloc(i32, i32) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #2

declare dso_local i32 @calculate_effective_freq(%struct.pl022*, i32, %struct.ssp_clock_params*) #2

declare dso_local i32 @memcpy(%struct.ssp_clock_params*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #2

declare dso_local i32 @verify_controller_parameters(%struct.pl022*, %struct.pl022_config_chip*) #2

declare dso_local i32 @gpio_is_valid(i32) #2

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @SSP_WRITE_BITS(i64, i32, i32, i32) #2

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.chip_data*) #2

declare dso_local i32 @kfree(%struct.chip_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
