; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-cpm.c_fsl_spi_cpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_spi = type { i32, %struct.TYPE_2__*, i8*, %struct.TYPE_2__*, %struct.TYPE_2__*, i8*, i32, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@SPI_CPM_MODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_QE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cell-index unspecified, assuming SPI1\0A\00", align 1
@QE_CR_SUBBLOCK_SPI1 = common dso_local global i32 0, align 4
@QE_CR_SUBBLOCK_SPI2 = common dso_local global i32 0, align 4
@SPI_CPM1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"can't allocate spi parameter ram\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"can't allocate bds\0A\00", align 1
@empty_zero_page = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to map dummy tx buffer\0A\00", align 1
@fsl_dummy_rx = common dso_local global i32 0, align 4
@SPI_MRBLR = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to map dummy rx buffer\0A\00", align 1
@CPMFCR_EB = common dso_local global i32 0, align 4
@CPMFCR_GBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_spi_cpm_init(%struct.mpc8xxx_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpc8xxx_spi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.mpc8xxx_spi* %0, %struct.mpc8xxx_spi** %3, align 8
  %11 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %12 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %11, i32 0, i32 7
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %18 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SPI_CPM_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %287

24:                                               ; preds = %1
  %25 = call i32 (...) @fsl_spi_alloc_dummy_rx()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %287

30:                                               ; preds = %24
  %31 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %32 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SPI_QE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %30
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32* @of_get_property(%struct.device_node* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %50 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %42, %37
  %52 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %53 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %55 [
    i32 0, label %58
    i32 1, label %62
  ]

55:                                               ; preds = %51
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_warn(%struct.device* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %51, %55
  %59 = load i32, i32* @QE_CR_SUBBLOCK_SPI1, align 4
  %60 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %61 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  br label %66

62:                                               ; preds = %51
  %63 = load i32, i32* @QE_CR_SUBBLOCK_SPI2, align 4
  %64 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %65 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %30
  %68 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %69 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SPI_CPM1, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 @to_platform_device(%struct.device* %75)
  %77 = call i8* @devm_platform_ioremap_resource(i32 %76, i32 1)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %83 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %82, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %83, align 8
  br label %89

84:                                               ; preds = %74
  %85 = load i8*, i8** %9, align 8
  %86 = bitcast i8* %85 to %struct.TYPE_2__*
  %87 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %88 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %87, i32 0, i32 1
  store %struct.TYPE_2__* %86, %struct.TYPE_2__** %88, align 8
  br label %89

89:                                               ; preds = %84, %81
  br label %106

90:                                               ; preds = %67
  %91 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %92 = call i64 @fsl_spi_cpm_get_pram(%struct.mpc8xxx_spi* %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i64 @IS_ERR_VALUE(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %98 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %97, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %98, align 8
  br label %105

99:                                               ; preds = %90
  %100 = load i64, i64* %10, align 8
  %101 = call i8* @cpm_muram_addr(i64 %100)
  %102 = bitcast i8* %101 to %struct.TYPE_2__*
  %103 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %104 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %103, i32 0, i32 1
  store %struct.TYPE_2__* %102, %struct.TYPE_2__** %104, align 8
  br label %105

105:                                              ; preds = %99, %96
  br label %106

106:                                              ; preds = %105, %89
  %107 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %108 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = icmp eq %struct.TYPE_2__* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %283

114:                                              ; preds = %106
  %115 = call i64 @cpm_muram_alloc(i32 120, i32 8)
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i64 @IS_ERR_VALUE(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %269

122:                                              ; preds = %114
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = load i32, i32* @empty_zero_page, align 4
  %125 = load i64, i64* @PAGE_SIZE, align 8
  %126 = load i32, i32* @DMA_TO_DEVICE, align 4
  %127 = call i8* @dma_map_single(%struct.device* %123, i32 %124, i64 %125, i32 %126)
  %128 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %129 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %132 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @dma_mapping_error(%struct.device* %130, i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %122
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = call i32 @dev_err(%struct.device* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %266

139:                                              ; preds = %122
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = load i32, i32* @fsl_dummy_rx, align 4
  %142 = load i64, i64* @SPI_MRBLR, align 8
  %143 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %144 = call i8* @dma_map_single(%struct.device* %140, i32 %141, i64 %142, i32 %143)
  %145 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %146 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %145, i32 0, i32 5
  store i8* %144, i8** %146, align 8
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %149 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %148, i32 0, i32 5
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @dma_mapping_error(%struct.device* %147, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %139
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %258

156:                                              ; preds = %139
  %157 = load i64, i64* %8, align 8
  %158 = call i8* @cpm_muram_addr(i64 %157)
  %159 = bitcast i8* %158 to %struct.TYPE_2__*
  %160 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %161 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %160, i32 0, i32 4
  store %struct.TYPE_2__* %159, %struct.TYPE_2__** %161, align 8
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, 60
  %164 = call i8* @cpm_muram_addr(i64 %163)
  %165 = bitcast i8* %164 to %struct.TYPE_2__*
  %166 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %167 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %166, i32 0, i32 3
  store %struct.TYPE_2__* %165, %struct.TYPE_2__** %167, align 8
  %168 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %169 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 14
  %172 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %173 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %172, i32 0, i32 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = call i64 @cpm_muram_offset(%struct.TYPE_2__* %174)
  %176 = call i32 @out_be16(i32* %171, i64 %175)
  %177 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %178 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 13
  %181 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %182 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %181, i32 0, i32 3
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = call i64 @cpm_muram_offset(%struct.TYPE_2__* %183)
  %185 = call i32 @out_be16(i32* %180, i64 %184)
  %186 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %187 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %186, i32 0, i32 1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 12
  %190 = load i32, i32* @CPMFCR_EB, align 4
  %191 = load i32, i32* @CPMFCR_GBL, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @out_8(i32* %189, i32 %192)
  %194 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %195 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 11
  %198 = load i32, i32* @CPMFCR_EB, align 4
  %199 = load i32, i32* @CPMFCR_GBL, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @out_8(i32* %197, i32 %200)
  %202 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %203 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %202, i32 0, i32 1
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 10
  %206 = load i64, i64* @SPI_MRBLR, align 8
  %207 = call i32 @out_be16(i32* %205, i64 %206)
  %208 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %209 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %208, i32 0, i32 1
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 9
  %212 = call i32 @out_be32(i32* %211, i32 0)
  %213 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %214 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %213, i32 0, i32 1
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 8
  %217 = call i32 @out_be32(i32* %216, i32 0)
  %218 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %219 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %218, i32 0, i32 1
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 7
  %222 = call i32 @out_be16(i32* %221, i64 0)
  %223 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %224 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %223, i32 0, i32 1
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 6
  %227 = call i32 @out_be16(i32* %226, i64 0)
  %228 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %229 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %228, i32 0, i32 1
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 5
  %232 = call i32 @out_be32(i32* %231, i32 0)
  %233 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %234 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %233, i32 0, i32 1
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 4
  %237 = call i32 @out_be32(i32* %236, i32 0)
  %238 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %239 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %238, i32 0, i32 1
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 3
  %242 = call i32 @out_be32(i32* %241, i32 0)
  %243 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %244 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %243, i32 0, i32 1
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 2
  %247 = call i32 @out_be16(i32* %246, i64 0)
  %248 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %249 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %248, i32 0, i32 1
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 1
  %252 = call i32 @out_be16(i32* %251, i64 0)
  %253 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %254 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %253, i32 0, i32 1
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = call i32 @out_be32(i32* %256, i32 0)
  store i32 0, i32* %2, align 4
  br label %287

258:                                              ; preds = %153
  %259 = load %struct.device*, %struct.device** %4, align 8
  %260 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %261 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %260, i32 0, i32 2
  %262 = load i8*, i8** %261, align 8
  %263 = load i64, i64* @PAGE_SIZE, align 8
  %264 = load i32, i32* @DMA_TO_DEVICE, align 4
  %265 = call i32 @dma_unmap_single(%struct.device* %259, i8* %262, i64 %263, i32 %264)
  br label %266

266:                                              ; preds = %258, %136
  %267 = load i64, i64* %8, align 8
  %268 = call i32 @cpm_muram_free(i64 %267)
  br label %269

269:                                              ; preds = %266, %119
  %270 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %271 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @SPI_CPM1, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %269
  %277 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %3, align 8
  %278 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %277, i32 0, i32 1
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = call i64 @cpm_muram_offset(%struct.TYPE_2__* %279)
  %281 = call i32 @cpm_muram_free(i64 %280)
  br label %282

282:                                              ; preds = %276, %269
  br label %283

283:                                              ; preds = %282, %111
  %284 = call i32 (...) @fsl_spi_free_dummy_rx()
  %285 = load i32, i32* @ENOMEM, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %283, %156, %27, %23
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local i32 @fsl_spi_alloc_dummy_rx(...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i8* @devm_platform_ioremap_resource(i32, i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @fsl_spi_cpm_get_pram(%struct.mpc8xxx_spi*) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i8* @cpm_muram_addr(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @cpm_muram_alloc(i32, i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @out_be16(i32*, i64) #1

declare dso_local i64 @cpm_muram_offset(%struct.TYPE_2__*) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i64, i32) #1

declare dso_local i32 @cpm_muram_free(i64) #1

declare dso_local i32 @fsl_spi_free_dummy_rx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
