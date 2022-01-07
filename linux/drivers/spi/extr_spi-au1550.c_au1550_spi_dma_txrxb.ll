; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_dma_txrxb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_dma_txrxb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i64, i64, i64, i64 }
%struct.au1550_spi = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tx dma map error\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rx dma map error\0A\00", align 1
@AU1550_SPI_DMA_RXTMP_MINSIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DDMA_FLAGS_IE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"rx dma put dest error\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"tx dma put source error\0A\00", align 1
@PSC_SPIMSK_SD = common dso_local global i32 0, align 4
@PSC_SPIPCR_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @au1550_spi_dma_txrxb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_spi_dma_txrxb(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.au1550_spi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.au1550_spi* @spi_master_get_devdata(i32 %13)
  store %struct.au1550_spi* %14, %struct.au1550_spi** %6, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %19 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %21 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %23 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %28 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %27, i32 0, i32 10
  store i64 %26, i64* %28, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %33 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %32, i32 0, i32 11
  store i64 %31, i64* %33, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %2
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %51 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i64 @dma_map_single(i32 %52, i8* %56, i64 %59, i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %63 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @dma_mapping_error(i32 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %49
  %69 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %70 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %49
  br label %74

74:                                               ; preds = %73, %44
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %87 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %90 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %94 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %97 = call i64 @dma_map_single(i32 %88, i8* %92, i64 %95, i32 %96)
  store i64 %97, i64* %8, align 8
  %98 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %99 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i64 @dma_mapping_error(i32 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %85
  %105 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %106 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %85
  br label %110

110:                                              ; preds = %109, %80
  br label %152

111:                                              ; preds = %75
  %112 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %113 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %116 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %114, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %111
  %120 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %121 = call i32 @au1550_spi_dma_rxtmp_free(%struct.au1550_spi* %120)
  %122 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %123 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %124 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @AU1550_SPI_DMA_RXTMP_MINSIZE, align 4
  %127 = call i32 @max(i64 %125, i32 %126)
  %128 = call i32 @au1550_spi_dma_rxtmp_alloc(%struct.au1550_spi* %122, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %317

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133, %111
  %135 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %136 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %139 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %138, i32 0, i32 11
  store i64 %137, i64* %139, align 8
  %140 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %141 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %8, align 8
  %143 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %144 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %148 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %151 = call i32 @dma_sync_single_for_device(i32 %145, i64 %146, i64 %149, i32 %150)
  br label %152

152:                                              ; preds = %134, %110
  %153 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %154 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %152
  %158 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %159 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %163 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %166 = call i32 @dma_sync_single_for_device(i32 %160, i64 %161, i64 %164, i32 %165)
  %167 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %168 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %171 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %170, i32 0, i32 10
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %157, %152
  %173 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %174 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %177 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %176, i32 0, i32 11
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @virt_to_phys(i64 %178)
  %180 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %181 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* @DDMA_FLAGS_IE, align 4
  %184 = call i64 @au1xxx_dbdma_put_dest(i32 %175, i32 %179, i64 %182, i32 %183)
  store i64 %184, i64* %9, align 8
  %185 = load i64, i64* %9, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %172
  %188 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %189 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @dev_err(i32 %190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %192

192:                                              ; preds = %187, %172
  %193 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %194 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %197 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %196, i32 0, i32 10
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @virt_to_phys(i64 %198)
  %200 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %201 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @DDMA_FLAGS_IE, align 4
  %204 = call i64 @au1xxx_dbdma_put_source(i32 %195, i32 %199, i64 %202, i32 %203)
  store i64 %204, i64* %9, align 8
  %205 = load i64, i64* %9, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %192
  %208 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %209 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @dev_err(i32 %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %212

212:                                              ; preds = %207, %192
  %213 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %214 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @au1xxx_dbdma_start(i32 %215)
  %217 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %218 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @au1xxx_dbdma_start(i32 %219)
  %221 = load i32, i32* @PSC_SPIMSK_SD, align 4
  %222 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %223 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %222, i32 0, i32 9
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 1
  store i32 %221, i32* %225, align 4
  %226 = call i32 (...) @wmb()
  %227 = load i32, i32* @PSC_SPIPCR_MS, align 4
  %228 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %229 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %228, i32 0, i32 9
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  store i32 %227, i32* %231, align 4
  %232 = call i32 (...) @wmb()
  %233 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %234 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %233, i32 0, i32 8
  %235 = call i32 @wait_for_completion(i32* %234)
  %236 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %237 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @au1xxx_dbdma_stop(i32 %238)
  %240 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %241 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @au1xxx_dbdma_stop(i32 %242)
  %244 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %245 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %212
  %249 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %250 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = load i64, i64* %8, align 8
  %253 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %254 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %257 = call i32 @dma_sync_single_for_cpu(i32 %251, i64 %252, i64 %255, i32 %256)
  br label %258

258:                                              ; preds = %248, %212
  %259 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %260 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %258
  %264 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %265 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %263
  %269 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %270 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = load i64, i64* %8, align 8
  %273 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %274 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %277 = call i32 @dma_unmap_single(i32 %271, i64 %272, i64 %275, i32 %276)
  br label %278

278:                                              ; preds = %268, %263, %258
  %279 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %280 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %298

283:                                              ; preds = %278
  %284 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %285 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %283
  %289 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %290 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = load i64, i64* %7, align 8
  %293 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %294 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i32, i32* @DMA_TO_DEVICE, align 4
  %297 = call i32 @dma_unmap_single(i32 %291, i64 %292, i64 %295, i32 %296)
  br label %298

298:                                              ; preds = %288, %283, %278
  %299 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %300 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %303 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp slt i64 %301, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %298
  %307 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %308 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  br label %314

310:                                              ; preds = %298
  %311 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %312 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  br label %314

314:                                              ; preds = %310, %306
  %315 = phi i64 [ %309, %306 ], [ %313, %310 ]
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %314, %131
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local %struct.au1550_spi* @spi_master_get_devdata(i32) #1

declare dso_local i64 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @au1550_spi_dma_rxtmp_free(%struct.au1550_spi*) #1

declare dso_local i32 @au1550_spi_dma_rxtmp_alloc(%struct.au1550_spi*, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i64, i32) #1

declare dso_local i64 @au1xxx_dbdma_put_dest(i32, i32, i64, i32) #1

declare dso_local i32 @virt_to_phys(i64) #1

declare dso_local i64 @au1xxx_dbdma_put_source(i32, i32, i64, i32) #1

declare dso_local i32 @au1xxx_dbdma_start(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @au1xxx_dbdma_stop(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
