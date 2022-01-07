; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_config_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_config_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.sirfsoc_spi = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SIRFSOC_SPI_CS_IDLE_STAT = common dso_local global i32 0, align 4
@SIRFSOC_USP_CS_HIGH_VALID = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SIRFSOC_SPI_TRAN_MSB = common dso_local global i32 0, align 4
@SIRFSOC_USP_LSB = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SIRFSOC_SPI_CLK_IDLE_STAT = common dso_local global i32 0, align 4
@SIRFSOC_USP_SCLK_IDLE_STAT = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SIRFSOC_SPI_DRV_POS_EDGE = common dso_local global i32 0, align 4
@SIRFSOC_USP_TXD_FALLING_EDGE = common dso_local global i32 0, align 4
@SIRFSOC_USP_RXD_FALLING_EDGE = common dso_local global i32 0, align 4
@SIRFSOC_SPI_FIFO_SC_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_SPI_FIFO_LC_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_SPI_FIFO_HC_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_SPI_CS_IO_MODE = common dso_local global i32 0, align 4
@SIRFSOC_USP_SYNC_MODE = common dso_local global i32 0, align 4
@SIRFSOC_USP_TFS_IO_MODE = common dso_local global i32 0, align 4
@SIRFSOC_USP_TFS_IO_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_sirfsoc_config_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sirfsoc_config_mode(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.sirfsoc_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sirfsoc_spi* @spi_master_get_devdata(i32 %8)
  store %struct.sirfsoc_spi* %9, %struct.sirfsoc_spi** %3, align 8
  %10 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %11 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %14 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %12, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %21 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %24 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %22, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SPI_CS_HIGH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @SIRFSOC_SPI_CS_IDLE_STAT, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @SIRFSOC_USP_CS_HIGH_VALID, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %1
  %45 = load i32, i32* @SIRFSOC_SPI_CS_IDLE_STAT, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @SIRFSOC_USP_CS_HIGH_VALID, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %36
  %53 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SPI_LSB_FIRST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @SIRFSOC_SPI_TRAN_MSB, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @SIRFSOC_USP_LSB, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %75

67:                                               ; preds = %52
  %68 = load i32, i32* @SIRFSOC_SPI_TRAN_MSB, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @SIRFSOC_USP_LSB, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %59
  %76 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SPI_CPOL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i32, i32* @SIRFSOC_SPI_CLK_IDLE_STAT, align 4
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @SIRFSOC_USP_SCLK_IDLE_STAT, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %98

89:                                               ; preds = %75
  %90 = load i32, i32* @SIRFSOC_SPI_CLK_IDLE_STAT, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @SIRFSOC_USP_SCLK_IDLE_STAT, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %89, %82
  %99 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %100 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SPI_CPOL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %107 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SPI_CPHA, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %126, label %112

112:                                              ; preds = %105, %98
  %113 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %114 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SPI_CPOL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %112
  %120 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SPI_CPHA, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %119, %105
  %127 = load i32, i32* @SIRFSOC_SPI_DRV_POS_EDGE, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %4, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* @SIRFSOC_USP_TXD_FALLING_EDGE, align 4
  %132 = load i32, i32* @SIRFSOC_USP_RXD_FALLING_EDGE, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  br label %146

136:                                              ; preds = %119, %112
  %137 = load i32, i32* @SIRFSOC_SPI_DRV_POS_EDGE, align 4
  %138 = load i32, i32* %4, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* @SIRFSOC_USP_RXD_FALLING_EDGE, align 4
  %141 = load i32, i32* @SIRFSOC_USP_TXD_FALLING_EDGE, align 4
  %142 = or i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %5, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %136, %126
  %147 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %148 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %149 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 2
  %152 = call i32 @SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(%struct.sirfsoc_spi* %147, i32 %151)
  %153 = load i32, i32* @SIRFSOC_SPI_FIFO_SC_OFFSET, align 4
  %154 = shl i32 %152, %153
  %155 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %156 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %157 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sdiv i32 %158, 2
  %160 = call i32 @SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(%struct.sirfsoc_spi* %155, i32 %159)
  %161 = load i32, i32* @SIRFSOC_SPI_FIFO_LC_OFFSET, align 4
  %162 = shl i32 %160, %161
  %163 = or i32 %154, %162
  %164 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %165 = call i32 @SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(%struct.sirfsoc_spi* %164, i32 2)
  %166 = load i32, i32* @SIRFSOC_SPI_FIFO_HC_OFFSET, align 4
  %167 = shl i32 %165, %166
  %168 = or i32 %163, %167
  %169 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %170 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %173 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %172, i32 0, i32 2
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %171, %176
  %178 = call i32 @writel(i32 %168, i64 %177)
  %179 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %180 = call i32 @SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(%struct.sirfsoc_spi* %179, i32 2)
  %181 = load i32, i32* @SIRFSOC_SPI_FIFO_SC_OFFSET, align 4
  %182 = shl i32 %180, %181
  %183 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %184 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %185 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sdiv i32 %186, 2
  %188 = call i32 @SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(%struct.sirfsoc_spi* %183, i32 %187)
  %189 = load i32, i32* @SIRFSOC_SPI_FIFO_LC_OFFSET, align 4
  %190 = shl i32 %188, %189
  %191 = or i32 %182, %190
  %192 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %193 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %194 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 2
  %197 = call i32 @SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(%struct.sirfsoc_spi* %192, i32 %196)
  %198 = load i32, i32* @SIRFSOC_SPI_FIFO_HC_OFFSET, align 4
  %199 = shl i32 %197, %198
  %200 = or i32 %191, %199
  %201 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %202 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %205 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %204, i32 0, i32 2
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %203, %208
  %210 = call i32 @writel(i32 %200, i64 %209)
  %211 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %212 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  switch i32 %213, label %251 [
    i32 130, label %214
    i32 128, label %229
    i32 129, label %229
  ]

214:                                              ; preds = %146
  %215 = load i32, i32* @SIRFSOC_SPI_CS_IO_MODE, align 4
  %216 = load i32, i32* %4, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %220 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %223 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %222, i32 0, i32 2
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %221, %226
  %228 = call i32 @writel(i32 %218, i64 %227)
  br label %251

229:                                              ; preds = %146, %146
  %230 = load i32, i32* @SIRFSOC_USP_SYNC_MODE, align 4
  %231 = load i32, i32* %5, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %5, align 4
  %233 = load i32, i32* @SIRFSOC_USP_TFS_IO_MODE, align 4
  %234 = load i32, i32* %5, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %5, align 4
  %236 = load i32, i32* @SIRFSOC_USP_TFS_IO_INPUT, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %5, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %5, align 4
  %241 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %242 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %3, align 8
  %245 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %244, i32 0, i32 2
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %243, %248
  %250 = call i32 @writel(i32 %240, i64 %249)
  br label %251

251:                                              ; preds = %146, %229, %214
  ret i32 0
}

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @SIRFSOC_SPI_FIFO_LEVEL_CHK_MASK(%struct.sirfsoc_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
