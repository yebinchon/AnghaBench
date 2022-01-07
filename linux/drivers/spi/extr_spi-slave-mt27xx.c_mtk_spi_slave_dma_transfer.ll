; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i8*, i32, i64 }
%struct.mtk_spi_slave = type { i64, %struct.device* }
%struct.device = type { i32 }

@SPIS_SOFT_RST = common dso_local global i32 0, align 4
@SPIS_SOFT_RST_REG = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SPIS_TX_SRC_REG = common dso_local global i64 0, align 8
@SPIS_RX_DST_REG = common dso_local global i64 0, align 8
@SPIS_DMA_ADDR_EN = common dso_local global i32 0, align 4
@SPIS_CFG_REG = common dso_local global i64 0, align 8
@SPIS_TX_EN = common dso_local global i32 0, align 4
@SPIS_RX_EN = common dso_local global i32 0, align 4
@TX_DMA_LEN = common dso_local global i32 0, align 4
@SPIS_DMA_CFG_REG = common dso_local global i64 0, align 8
@TX_DMA_EN = common dso_local global i32 0, align 4
@RX_DMA_EN = common dso_local global i32 0, align 4
@TX_DMA_TRIG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @mtk_spi_slave_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_slave_dma_transfer(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.mtk_spi_slave*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %13 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %14 = call %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller* %13)
  store %struct.mtk_spi_slave* %14, %struct.mtk_spi_slave** %8, align 8
  %15 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %16 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load i32, i32* @SPIS_SOFT_RST, align 4
  %19 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %20 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPIS_SOFT_RST_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %3
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %12, align 8
  %34 = load %struct.device*, %struct.device** %9, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i8* @dma_map_single(%struct.device* %34, i8* %35, i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @dma_mapping_error(%struct.device* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %226

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %56 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %68 = call i8* @dma_map_single(%struct.device* %60, i8* %63, i32 %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %9, align 8
  %73 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %74 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @dma_mapping_error(%struct.device* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %59
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %210

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %54
  %83 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %84 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %87 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SPIS_TX_SRC_REG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %93 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %96 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SPIS_RX_DST_REG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  %101 = load i32, i32* @SPIS_DMA_ADDR_EN, align 4
  %102 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %103 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SPIS_SOFT_RST_REG, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %109 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SPIS_CFG_REG, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @readl(i64 %112)
  store i32 %113, i32* %10, align 4
  %114 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %115 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %82
  %119 = load i32, i32* @SPIS_TX_EN, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %82
  %123 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %124 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @SPIS_RX_EN, align 4
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %134 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SPIS_CFG_REG, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel(i32 %132, i64 %137)
  store i32 0, i32* %10, align 4
  %139 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %140 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  %143 = load i32, i32* @TX_DMA_LEN, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %149 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SPIS_DMA_CFG_REG, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writel(i32 %147, i64 %152)
  %154 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %155 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SPIS_DMA_CFG_REG, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @readl(i64 %158)
  store i32 %159, i32* %10, align 4
  %160 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %161 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %131
  %165 = load i32, i32* @TX_DMA_EN, align 4
  %166 = load i32, i32* %10, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %164, %131
  %169 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %170 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @RX_DMA_EN, align 4
  %175 = load i32, i32* %10, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %173, %168
  %178 = load i32, i32* @TX_DMA_TRIG_EN, align 4
  %179 = load i32, i32* %10, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %183 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @SPIS_DMA_CFG_REG, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i32 %181, i64 %186)
  %188 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %189 = call i32 @mtk_spi_slave_wait_for_completion(%struct.mtk_spi_slave* %188)
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %177
  br label %194

193:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %239

194:                                              ; preds = %192
  %195 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %196 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %194
  %200 = load %struct.device*, %struct.device** %9, align 8
  %201 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %202 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %205 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %208 = call i32 @dma_unmap_single(%struct.device* %200, i32 %203, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %199, %194
  br label %210

210:                                              ; preds = %209, %78
  %211 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %212 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = load %struct.device*, %struct.device** %9, align 8
  %217 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %218 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %221 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @DMA_TO_DEVICE, align 4
  %224 = call i32 @dma_unmap_single(%struct.device* %216, i32 %219, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %215, %210
  br label %226

226:                                              ; preds = %225, %50
  %227 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %228 = call i32 @mtk_spi_slave_disable_dma(%struct.mtk_spi_slave* %227)
  %229 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %230 = call i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave* %229)
  %231 = load i32, i32* @SPIS_SOFT_RST, align 4
  %232 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %8, align 8
  %233 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @SPIS_SOFT_RST_REG, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @writel(i32 %231, i64 %236)
  %238 = load i32, i32* %11, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %226, %193
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mtk_spi_slave_wait_for_completion(%struct.mtk_spi_slave*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @mtk_spi_slave_disable_dma(%struct.mtk_spi_slave*) #1

declare dso_local i32 @mtk_spi_slave_disable_xfer(%struct.mtk_spi_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
