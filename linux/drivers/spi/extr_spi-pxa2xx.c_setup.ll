; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, %struct.pxa2xx_spi_chip*, i32 }
%struct.pxa2xx_spi_chip = type { i32, i32, i32, i64, i64 }
%struct.chip_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.lpss_config = type { i32, i32, i32 }
%struct.driver_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TX_THRESH_QUARK_X1000_DFLT = common dso_local global i32 0, align 4
@RX_THRESH_QUARK_X1000_DFLT = common dso_local global i32 0, align 4
@TX_THRESH_CE4100_DFLT = common dso_local global i32 0, align 4
@RX_THRESH_CE4100_DFLT = common dso_local global i32 0, align 4
@TX_THRESH_DFLT = common dso_local global i32 0, align 4
@RX_THRESH_DFLT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed setup: cs number must not be > 4.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TIMOUT_DFLT = common dso_local global i64 0, align 8
@SSCR1_LBM = common dso_local global i32 0, align 4
@SSCR1_SCFR = common dso_local global i32 0, align 4
@SSCR1_SCLKDIR = common dso_local global i32 0, align 4
@SSCR1_SFRMDIR = common dso_local global i32 0, align 4
@SSCR1_SPH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"in setup: DMA burst size reduced to match bits_per_word\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"in setup: DMA burst size set to %u\0A\00", align 1
@QUARK_X1000_SSCR1_RFT = common dso_local global i32 0, align 4
@QUARK_X1000_SSCR1_TFT = common dso_local global i32 0, align 4
@CE4100_SSCR1_RFT = common dso_local global i32 0, align 4
@CE4100_SSCR1_TFT = common dso_local global i32 0, align 4
@SSCR1_RFT = common dso_local global i32 0, align 4
@SSCR1_TFT = common dso_local global i32 0, align 4
@SSCR1_SPO = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@u8_reader = common dso_local global i32 0, align 4
@u8_writer = common dso_local global i32 0, align 4
@u16_reader = common dso_local global i32 0, align 4
@u16_writer = common dso_local global i32 0, align 4
@u32_reader = common dso_local global i32 0, align 4
@u32_writer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.pxa2xx_spi_chip*, align 8
  %5 = alloca %struct.chip_data*, align 8
  %6 = alloca %struct.lpss_config*, align 8
  %7 = alloca %struct.driver_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.driver_data* @spi_controller_get_devdata(i32 %13)
  store %struct.driver_data* %14, %struct.driver_data** %7, align 8
  %15 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %36 [
    i32 128, label %18
    i32 135, label %21
    i32 130, label %24
    i32 132, label %24
    i32 134, label %24
    i32 129, label %24
    i32 133, label %24
    i32 131, label %24
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @TX_THRESH_QUARK_X1000_DFLT, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @RX_THRESH_QUARK_X1000_DFLT, align 4
  store i32 %20, i32* %10, align 4
  br label %47

21:                                               ; preds = %1
  %22 = load i32, i32* @TX_THRESH_CE4100_DFLT, align 4
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* @RX_THRESH_CE4100_DFLT, align 4
  store i32 %23, i32* %10, align 4
  br label %47

24:                                               ; preds = %1, %1, %1, %1, %1, %1
  %25 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %26 = call %struct.lpss_config* @lpss_get_config(%struct.driver_data* %25)
  store %struct.lpss_config* %26, %struct.lpss_config** %6, align 8
  %27 = load %struct.lpss_config*, %struct.lpss_config** %6, align 8
  %28 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.lpss_config*, %struct.lpss_config** %6, align 8
  %31 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.lpss_config*, %struct.lpss_config** %6, align 8
  %34 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  br label %47

36:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %37 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %38 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @spi_controller_is_slave(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  store i32 2, i32* %10, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @TX_THRESH_DFLT, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @RX_THRESH_DFLT, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %46, %24, %21, %18
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %48)
  store %struct.chip_data* %49, %struct.chip_data** %5, align 8
  %50 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %51 = icmp ne %struct.chip_data* %50, null
  br i1 %51, label %95, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.chip_data* @kzalloc(i32 64, i32 %53)
  store %struct.chip_data* %54, %struct.chip_data** %5, align 8
  %55 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %56 = icmp ne %struct.chip_data* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %365

60:                                               ; preds = %52
  %61 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %62 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 135
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 4
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 3
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %75 = call i32 @kfree(%struct.chip_data* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %365

78:                                               ; preds = %65
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %83 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %78, %60
  %85 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %86 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %91 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %90, i32 0, i32 9
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* @TIMOUT_DFLT, align 8
  %93 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %94 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %93, i32 0, i32 11
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %84, %47
  %96 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %97 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %96, i32 0, i32 4
  %98 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %97, align 8
  store %struct.pxa2xx_spi_chip* %98, %struct.pxa2xx_spi_chip** %4, align 8
  %99 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %100 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  %101 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %102 = icmp ne %struct.pxa2xx_spi_chip* %101, null
  br i1 %102, label %103, label %153

103:                                              ; preds = %95
  %104 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %105 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %110 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %113 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %112, i32 0, i32 11
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %116 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %121 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %125 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %130 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %134 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %139 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %143 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %142, i32 0, i32 8
  store i64 0, i64* %143, align 8
  %144 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %145 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i32, i32* @SSCR1_LBM, align 4
  %150 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %151 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %148, %141
  br label %153

153:                                              ; preds = %152, %95
  %154 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %155 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @spi_controller_is_slave(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %153
  %160 = load i32, i32* @SSCR1_SCFR, align 4
  %161 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %162 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* @SSCR1_SCLKDIR, align 4
  %166 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %167 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* @SSCR1_SFRMDIR, align 4
  %171 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %172 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @SSCR1_SPH, align 4
  %176 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %177 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %159, %153
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @SSIRF_RxThresh(i32 %181)
  %183 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %184 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %183, i32 0, i32 10
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @SSITF_TxLoThresh(i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @SSITF_TxHiThresh(i32 %187)
  %189 = or i32 %186, %188
  %190 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %191 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %193 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %192, i32 0, i32 9
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %219

196:                                              ; preds = %180
  %197 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %198 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %199 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %200 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %203 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %202, i32 0, i32 7
  %204 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %205 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %204, i32 0, i32 8
  %206 = call i64 @pxa2xx_spi_set_dma_burst_and_threshold(%struct.chip_data* %197, %struct.spi_device* %198, i32 %201, i32* %203, i64* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %196
  %209 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %210 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %209, i32 0, i32 3
  %211 = call i32 @dev_warn(i32* %210, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %212

212:                                              ; preds = %208, %196
  %213 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %214 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %213, i32 0, i32 3
  %215 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %216 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @dev_dbg(i32* %214, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %212, %180
  %220 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %221 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  switch i32 %222, label %247 [
    i32 128, label %223
    i32 135, label %235
  ]

223:                                              ; preds = %219
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @QUARK_X1000_SSCR1_RxTresh(i32 %224)
  %226 = load i32, i32* @QUARK_X1000_SSCR1_RFT, align 4
  %227 = and i32 %225, %226
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @QUARK_X1000_SSCR1_TxTresh(i32 %228)
  %230 = load i32, i32* @QUARK_X1000_SSCR1_TFT, align 4
  %231 = and i32 %229, %230
  %232 = or i32 %227, %231
  %233 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %234 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  br label %259

235:                                              ; preds = %219
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @CE4100_SSCR1_RxTresh(i32 %236)
  %238 = load i32, i32* @CE4100_SSCR1_RFT, align 4
  %239 = and i32 %237, %238
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @CE4100_SSCR1_TxTresh(i32 %240)
  %242 = load i32, i32* @CE4100_SSCR1_TFT, align 4
  %243 = and i32 %241, %242
  %244 = or i32 %239, %243
  %245 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %246 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  br label %259

247:                                              ; preds = %219
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @SSCR1_RxTresh(i32 %248)
  %250 = load i32, i32* @SSCR1_RFT, align 4
  %251 = and i32 %249, %250
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @SSCR1_TxTresh(i32 %252)
  %254 = load i32, i32* @SSCR1_TFT, align 4
  %255 = and i32 %253, %254
  %256 = or i32 %251, %255
  %257 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %258 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %247, %235, %223
  %260 = load i32, i32* @SSCR1_SPO, align 4
  %261 = load i32, i32* @SSCR1_SPH, align 4
  %262 = or i32 %260, %261
  %263 = xor i32 %262, -1
  %264 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %265 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 4
  %268 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %269 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @SPI_CPHA, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %259
  %275 = load i32, i32* @SSCR1_SPH, align 4
  br label %277

276:                                              ; preds = %259
  br label %277

277:                                              ; preds = %276, %274
  %278 = phi i32 [ %275, %274 ], [ 0, %276 ]
  %279 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %280 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @SPI_CPOL, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %277
  %286 = load i32, i32* @SSCR1_SPO, align 4
  br label %288

287:                                              ; preds = %277
  br label %288

288:                                              ; preds = %287, %285
  %289 = phi i32 [ %286, %285 ], [ 0, %287 ]
  %290 = or i32 %278, %289
  %291 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %292 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %296 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @SPI_LOOP, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %288
  %302 = load i32, i32* @SSCR1_LBM, align 4
  %303 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %304 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %301, %288
  %308 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %309 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = icmp sle i32 %310, 8
  br i1 %311, label %312, label %321

312:                                              ; preds = %307
  %313 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %314 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %313, i32 0, i32 4
  store i32 1, i32* %314, align 8
  %315 = load i32, i32* @u8_reader, align 4
  %316 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %317 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %316, i32 0, i32 6
  store i32 %315, i32* %317, align 8
  %318 = load i32, i32* @u8_writer, align 4
  %319 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %320 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %319, i32 0, i32 5
  store i32 %318, i32* %320, align 4
  br label %351

321:                                              ; preds = %307
  %322 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %323 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp sle i32 %324, 16
  br i1 %325, label %326, label %335

326:                                              ; preds = %321
  %327 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %328 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %327, i32 0, i32 4
  store i32 2, i32* %328, align 8
  %329 = load i32, i32* @u16_reader, align 4
  %330 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %331 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %330, i32 0, i32 6
  store i32 %329, i32* %331, align 8
  %332 = load i32, i32* @u16_writer, align 4
  %333 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %334 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %333, i32 0, i32 5
  store i32 %332, i32* %334, align 4
  br label %350

335:                                              ; preds = %321
  %336 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %337 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp sle i32 %338, 32
  br i1 %339, label %340, label %349

340:                                              ; preds = %335
  %341 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %342 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %341, i32 0, i32 4
  store i32 4, i32* %342, align 8
  %343 = load i32, i32* @u32_reader, align 4
  %344 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %345 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %344, i32 0, i32 6
  store i32 %343, i32* %345, align 8
  %346 = load i32, i32* @u32_writer, align 4
  %347 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %348 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %347, i32 0, i32 5
  store i32 %346, i32* %348, align 4
  br label %349

349:                                              ; preds = %340, %335
  br label %350

350:                                              ; preds = %349, %326
  br label %351

351:                                              ; preds = %350, %312
  %352 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %353 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %354 = call i32 @spi_set_ctldata(%struct.spi_device* %352, %struct.chip_data* %353)
  %355 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %356 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp eq i32 %357, 135
  br i1 %358, label %359, label %360

359:                                              ; preds = %351
  store i32 0, i32* %2, align 4
  br label %365

360:                                              ; preds = %351
  %361 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %362 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %363 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %364 = call i32 @setup_cs(%struct.spi_device* %361, %struct.chip_data* %362, %struct.pxa2xx_spi_chip* %363)
  store i32 %364, i32* %2, align 4
  br label %365

365:                                              ; preds = %360, %359, %70, %57
  %366 = load i32, i32* %2, align 4
  ret i32 %366
}

declare dso_local %struct.driver_data* @spi_controller_get_devdata(i32) #1

declare dso_local %struct.lpss_config* @lpss_get_config(%struct.driver_data*) #1

declare dso_local i64 @spi_controller_is_slave(i32) #1

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.chip_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.chip_data*) #1

declare dso_local i32 @SSIRF_RxThresh(i32) #1

declare dso_local i32 @SSITF_TxLoThresh(i32) #1

declare dso_local i32 @SSITF_TxHiThresh(i32) #1

declare dso_local i64 @pxa2xx_spi_set_dma_burst_and_threshold(%struct.chip_data*, %struct.spi_device*, i32, i32*, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @QUARK_X1000_SSCR1_RxTresh(i32) #1

declare dso_local i32 @QUARK_X1000_SSCR1_TxTresh(i32) #1

declare dso_local i32 @CE4100_SSCR1_RxTresh(i32) #1

declare dso_local i32 @CE4100_SSCR1_TxTresh(i32) #1

declare dso_local i32 @SSCR1_RxTresh(i32) #1

declare dso_local i32 @SSCR1_TxTresh(i32) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.chip_data*) #1

declare dso_local i32 @setup_cs(%struct.spi_device*, %struct.chip_data*, %struct.pxa2xx_spi_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
