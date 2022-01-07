; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_spi = type { i32, i32, i64, i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i64, i64 }

@CR0_FRF_SPI = common dso_local global i32 0, align 4
@CR0_FRF_OFFSET = common dso_local global i32 0, align 4
@CR0_BHT_8BIT = common dso_local global i32 0, align 4
@CR0_BHT_OFFSET = common dso_local global i32 0, align 4
@CR0_SSD_ONE = common dso_local global i32 0, align 4
@CR0_SSD_OFFSET = common dso_local global i32 0, align 4
@CR0_EM_BIG = common dso_local global i32 0, align 4
@CR0_EM_OFFSET = common dso_local global i32 0, align 4
@CR0_RSD_OFFSET = common dso_local global i32 0, align 4
@CR0_SCPH_OFFSET = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@CR0_FBM_LSB = common dso_local global i32 0, align 4
@CR0_FBM_OFFSET = common dso_local global i32 0, align 4
@CR0_XFM_TR = common dso_local global i32 0, align 4
@CR0_XFM_OFFSET = common dso_local global i32 0, align 4
@CR0_XFM_RO = common dso_local global i32 0, align 4
@CR0_XFM_TO = common dso_local global i32 0, align 4
@CR0_DFS_4BIT = common dso_local global i32 0, align 4
@CR0_DFS_OFFSET = common dso_local global i32 0, align 4
@CR0_DFS_8BIT = common dso_local global i32 0, align 4
@CR0_DFS_16BIT = common dso_local global i32 0, align 4
@TF_DMA_EN = common dso_local global i32 0, align 4
@RF_DMA_EN = common dso_local global i32 0, align 4
@ROCKCHIP_SPI_CTRLR0 = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_CTRLR1 = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_RXFTLR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_DMATDLR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_DMARDLR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_DMACR = common dso_local global i64 0, align 8
@ROCKCHIP_SPI_BAUDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_spi*, %struct.spi_device*, %struct.spi_transfer*, i32)* @rockchip_spi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_spi_config(%struct.rockchip_spi* %0, %struct.spi_device* %1, %struct.spi_transfer* %2, i32 %3) #0 {
  %5 = alloca %struct.rockchip_spi*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rockchip_spi* %0, %struct.rockchip_spi** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @CR0_FRF_SPI, align 4
  %13 = load i32, i32* @CR0_FRF_OFFSET, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @CR0_BHT_8BIT, align 4
  %16 = load i32, i32* @CR0_BHT_OFFSET, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load i32, i32* @CR0_SSD_ONE, align 4
  %20 = load i32, i32* @CR0_SSD_OFFSET, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* @CR0_EM_BIG, align 4
  %24 = load i32, i32* @CR0_EM_OFFSET, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %28 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CR0_RSD_OFFSET, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = load i32, i32* @CR0_SCPH_OFFSET, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SPI_LSB_FIRST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %4
  %49 = load i32, i32* @CR0_FBM_LSB, align 4
  %50 = load i32, i32* @CR0_FBM_OFFSET, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %4
  %55 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %56 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* @CR0_XFM_TR, align 4
  %66 = load i32, i32* @CR0_XFM_OFFSET, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %92

70:                                               ; preds = %59, %54
  %71 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %72 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @CR0_XFM_RO, align 4
  %77 = load i32, i32* @CR0_XFM_OFFSET, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %91

81:                                               ; preds = %70
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @CR0_XFM_TO, align 4
  %86 = load i32, i32* @CR0_XFM_OFFSET, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %84, %81
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %64
  %93 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %94 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %127 [
    i32 4, label %96
    i32 8, label %106
    i32 16, label %116
  ]

96:                                               ; preds = %92
  %97 = load i32, i32* @CR0_DFS_4BIT, align 4
  %98 = load i32, i32* @CR0_DFS_OFFSET, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %103 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %129

106:                                              ; preds = %92
  %107 = load i32, i32* @CR0_DFS_8BIT, align 4
  %108 = load i32, i32* @CR0_DFS_OFFSET, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  %112 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %113 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %129

116:                                              ; preds = %92
  %117 = load i32, i32* @CR0_DFS_16BIT, align 4
  %118 = load i32, i32* @CR0_DFS_OFFSET, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %123 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %124, 2
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %129

127:                                              ; preds = %92
  %128 = call i32 (...) @unreachable()
  br label %129

129:                                              ; preds = %127, %116, %106, %96
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %134 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @TF_DMA_EN, align 4
  %139 = load i32, i32* %11, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %143 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* @RF_DMA_EN, align 4
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %146, %141
  br label %151

151:                                              ; preds = %150, %129
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %154 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @ROCKCHIP_SPI_CTRLR0, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel_relaxed(i32 %152, i64 %157)
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %161 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @ROCKCHIP_SPI_CTRLR1, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @writel_relaxed(i32 %159, i64 %164)
  %166 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %167 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %170 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %151
  %174 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %175 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %179 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ROCKCHIP_SPI_RXFTLR, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @writel_relaxed(i32 %177, i64 %182)
  br label %196

184:                                              ; preds = %151
  %185 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %186 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %187, 2
  %189 = sub nsw i32 %188, 1
  %190 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %191 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @ROCKCHIP_SPI_RXFTLR, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel_relaxed(i32 %189, i64 %194)
  br label %196

196:                                              ; preds = %184, %173
  %197 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %198 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sdiv i32 %199, 2
  %201 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %202 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @ROCKCHIP_SPI_DMATDLR, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @writel_relaxed(i32 %200, i64 %205)
  %207 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %208 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @ROCKCHIP_SPI_DMARDLR, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @writel_relaxed(i32 0, i64 %211)
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %215 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @ROCKCHIP_SPI_DMACR, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @writel_relaxed(i32 %213, i64 %218)
  %220 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %221 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %224 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 2, %225
  %227 = call i32 @DIV_ROUND_UP(i32 %222, i32 %226)
  %228 = mul nsw i32 2, %227
  %229 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %230 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @ROCKCHIP_SPI_BAUDR, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @writel_relaxed(i32 %228, i64 %233)
  ret void
}

declare dso_local i32 @unreachable(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
