; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_pio_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_pio_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32 }
%struct.sirfsoc_spi = type { i64, i64, i32, i32, i32, %struct.TYPE_2__*, i64, i32 (%struct.sirfsoc_spi*)*, i32, i32, i32 (%struct.sirfsoc_spi*)* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@SIRFSOC_SPI_FIFO_RESET = common dso_local global i64 0, align 8
@SIRFSOC_SPI_FIFO_START = common dso_local global i64 0, align 8
@SIRFSOC_SPI_MUL_DAT_MODE = common dso_local global i64 0, align 8
@SIRFSOC_SPI_ENA_AUTO_CLR = common dso_local global i64 0, align 8
@SIRFSOC_SPI_TXFIFO_EMPTY_INT_EN = common dso_local global i64 0, align 8
@SIRFSOC_SPI_TX_UFLOW_INT_EN = common dso_local global i64 0, align 8
@SIRFSOC_SPI_RX_OFLOW_INT_EN = common dso_local global i64 0, align 8
@SIRFSOC_SPI_RX_IO_DMA_INT_EN = common dso_local global i64 0, align 8
@SIRFSOC_SPI_RX_EN = common dso_local global i64 0, align 8
@SIRFSOC_SPI_TX_EN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"transfer timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @spi_sirfsoc_pio_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_sirfsoc_pio_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.sirfsoc_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %8 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sirfsoc_spi* @spi_master_get_devdata(i32 %14)
  store %struct.sirfsoc_spi* %15, %struct.sirfsoc_spi** %5, align 8
  br label %16

16:                                               ; preds = %564, %2
  %17 = load i64, i64* @SIRFSOC_SPI_FIFO_RESET, align 8
  %18 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %19 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  %27 = call i32 @writel(i64 %17, i64 %26)
  %28 = load i64, i64* @SIRFSOC_SPI_FIFO_RESET, align 8
  %29 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %30 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %33 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %32, i32 0, i32 5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %31, %36
  %38 = call i32 @writel(i64 %28, i64 %37)
  %39 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %40 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %354 [
    i32 128, label %42
    i32 129, label %139
    i32 130, label %236
  ]

42:                                               ; preds = %16
  %43 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %44 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %47 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  %52 = call i32 @writel(i64 0, i64 %51)
  %53 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %54 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %57 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %56, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = call i32 @writel(i64 0, i64 %61)
  %63 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %64 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %65, %70
  %72 = call i32 @writel(i64 0, i64 %71)
  %73 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %74 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %77 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %75, %80
  %82 = call i64 @readl(i64 %81)
  %83 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %84 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %87 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %86, i32 0, i32 5
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 9
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %85, %90
  %92 = call i32 @writel(i64 %82, i64 %91)
  %93 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %94 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %97 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %95, %99
  %101 = trunc i64 %100 to i32
  %102 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %103 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @min(i32 %101, i32 %104)
  %106 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %107 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %110 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %109, i32 0, i32 5
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %108, %113
  %115 = call i32 @writel(i64 %105, i64 %114)
  %116 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %117 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %120 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %118, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %126 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @min(i32 %124, i32 %127)
  %129 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %130 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %133 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %132, i32 0, i32 5
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %131, %136
  %138 = call i32 @writel(i64 %128, i64 %137)
  br label %354

139:                                              ; preds = %16
  %140 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %141 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %144 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %143, i32 0, i32 5
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %142, %147
  %149 = call i32 @writel(i64 0, i64 %148)
  %150 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %151 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %154 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %153, i32 0, i32 5
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %152, %157
  %159 = call i32 @writel(i64 0, i64 %158)
  %160 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %161 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %164 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %163, i32 0, i32 5
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 10
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %162, %167
  %169 = call i32 @writel(i64 -1, i64 %168)
  %170 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %171 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %174 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %173, i32 0, i32 5
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 9
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %172, %177
  %179 = call i64 @readl(i64 %178)
  %180 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %181 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %184 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %183, i32 0, i32 5
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 9
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %182, %187
  %189 = call i32 @writel(i64 %179, i64 %188)
  %190 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %191 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %194 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %192, %196
  %198 = trunc i64 %197 to i32
  %199 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %200 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @min(i32 %198, i32 %201)
  %203 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %204 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %207 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %206, i32 0, i32 5
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 7
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %205, %210
  %212 = call i32 @writel(i64 %202, i64 %211)
  %213 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %214 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %217 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = mul nsw i64 %215, %219
  %221 = trunc i64 %220 to i32
  %222 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %223 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @min(i32 %221, i32 %224)
  %226 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %227 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %230 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %229, i32 0, i32 5
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %228, %233
  %235 = call i32 @writel(i64 %225, i64 %234)
  br label %354

236:                                              ; preds = %16
  %237 = load i64, i64* @SIRFSOC_SPI_FIFO_START, align 8
  %238 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %239 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %238, i32 0, i32 6
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %242 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %241, i32 0, i32 5
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %240, %245
  %247 = call i32 @writel(i64 %237, i64 %246)
  %248 = load i64, i64* @SIRFSOC_SPI_FIFO_START, align 8
  %249 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %250 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %253 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %252, i32 0, i32 5
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %251, %256
  %258 = call i32 @writel(i64 %248, i64 %257)
  %259 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %260 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %259, i32 0, i32 6
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %263 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %262, i32 0, i32 5
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = add nsw i64 %261, %266
  %268 = call i32 @writel(i64 0, i64 %267)
  %269 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %270 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %273 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %272, i32 0, i32 5
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 9
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %271, %276
  %278 = call i64 @readl(i64 %277)
  %279 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %280 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %279, i32 0, i32 6
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %283 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %282, i32 0, i32 5
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 9
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %281, %286
  %288 = call i32 @writel(i64 %278, i64 %287)
  %289 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %290 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %289, i32 0, i32 6
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %293 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %292, i32 0, i32 5
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 8
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %291, %296
  %298 = call i64 @readl(i64 %297)
  %299 = load i64, i64* @SIRFSOC_SPI_MUL_DAT_MODE, align 8
  %300 = or i64 %298, %299
  %301 = load i64, i64* @SIRFSOC_SPI_ENA_AUTO_CLR, align 8
  %302 = or i64 %300, %301
  %303 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %304 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %303, i32 0, i32 6
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %307 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %306, i32 0, i32 5
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 8
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %305, %310
  %312 = call i32 @writel(i64 %302, i64 %311)
  %313 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %314 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %317 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = udiv i32 %315, %318
  store i32 %319, i32* %7, align 4
  %320 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %321 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = trunc i64 %322 to i32
  %324 = load i32, i32* %7, align 4
  %325 = call i64 @min(i32 %323, i32 %324)
  %326 = sub i64 %325, 1
  %327 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %328 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %327, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %331 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %330, i32 0, i32 5
  %332 = load %struct.TYPE_2__*, %struct.TYPE_2__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i32 0, i32 7
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %329, %334
  %336 = call i32 @writel(i64 %326, i64 %335)
  %337 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %338 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = trunc i64 %339 to i32
  %341 = load i32, i32* %7, align 4
  %342 = call i64 @min(i32 %340, i32 %341)
  %343 = sub i64 %342, 1
  %344 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %345 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %344, i32 0, i32 6
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %348 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %347, i32 0, i32 5
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 6
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %346, %351
  %353 = call i32 @writel(i64 %343, i64 %352)
  br label %354

354:                                              ; preds = %16, %236, %139, %42
  br label %355

355:                                              ; preds = %377, %354
  %356 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %357 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %356, i32 0, i32 6
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %360 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %359, i32 0, i32 5
  %361 = load %struct.TYPE_2__*, %struct.TYPE_2__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 5
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %358, %363
  %365 = call i64 @readl(i64 %364)
  %366 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %367 = call i64 @SIRFSOC_SPI_FIFO_FULL_MASK(%struct.sirfsoc_spi* %366)
  %368 = and i64 %365, %367
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %355
  %371 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %372 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br label %375

375:                                              ; preds = %370, %355
  %376 = phi i1 [ false, %355 ], [ %374, %370 ]
  br i1 %376, label %377, label %383

377:                                              ; preds = %375
  %378 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %379 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %378, i32 0, i32 10
  %380 = load i32 (%struct.sirfsoc_spi*)*, i32 (%struct.sirfsoc_spi*)** %379, align 8
  %381 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %382 = call i32 %380(%struct.sirfsoc_spi* %381)
  br label %355

383:                                              ; preds = %375
  %384 = load i64, i64* @SIRFSOC_SPI_TXFIFO_EMPTY_INT_EN, align 8
  %385 = load i64, i64* @SIRFSOC_SPI_TX_UFLOW_INT_EN, align 8
  %386 = or i64 %384, %385
  %387 = load i64, i64* @SIRFSOC_SPI_RX_OFLOW_INT_EN, align 8
  %388 = or i64 %386, %387
  %389 = load i64, i64* @SIRFSOC_SPI_RX_IO_DMA_INT_EN, align 8
  %390 = or i64 %388, %389
  %391 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %392 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %391, i32 0, i32 6
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %395 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %394, i32 0, i32 5
  %396 = load %struct.TYPE_2__*, %struct.TYPE_2__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %396, i32 0, i32 4
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %393, %398
  %400 = call i32 @writel(i64 %390, i64 %399)
  %401 = load i64, i64* @SIRFSOC_SPI_RX_EN, align 8
  %402 = load i64, i64* @SIRFSOC_SPI_TX_EN, align 8
  %403 = or i64 %401, %402
  %404 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %405 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %404, i32 0, i32 6
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %408 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %407, i32 0, i32 5
  %409 = load %struct.TYPE_2__*, %struct.TYPE_2__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = add nsw i64 %406, %411
  %413 = call i32 @writel(i64 %403, i64 %412)
  %414 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %415 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = icmp eq i32 %416, 128
  br i1 %417, label %423, label %418

418:                                              ; preds = %383
  %419 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %420 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = icmp eq i32 %421, 129
  br i1 %422, label %423, label %446

423:                                              ; preds = %418, %383
  %424 = load i64, i64* @SIRFSOC_SPI_FIFO_START, align 8
  %425 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %426 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %425, i32 0, i32 6
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %429 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %428, i32 0, i32 5
  %430 = load %struct.TYPE_2__*, %struct.TYPE_2__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = add nsw i64 %427, %432
  %434 = call i32 @writel(i64 %424, i64 %433)
  %435 = load i64, i64* @SIRFSOC_SPI_FIFO_START, align 8
  %436 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %437 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %440 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %439, i32 0, i32 5
  %441 = load %struct.TYPE_2__*, %struct.TYPE_2__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %438, %443
  %445 = call i32 @writel(i64 %435, i64 %444)
  br label %446

446:                                              ; preds = %423, %418
  %447 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %448 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %447, i32 0, i32 9
  %449 = load i32, i32* %6, align 4
  %450 = call i32 @wait_for_completion_timeout(i32* %448, i32 %449)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %458

452:                                              ; preds = %446
  %453 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %454 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %453, i32 0, i32 8
  %455 = load i32, i32* %6, align 4
  %456 = call i32 @wait_for_completion_timeout(i32* %454, i32 %455)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %483, label %458

458:                                              ; preds = %452, %446
  %459 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %460 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %459, i32 0, i32 0
  %461 = call i32 @dev_err(i32* %460, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %462 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %463 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = icmp eq i32 %464, 128
  br i1 %465, label %471, label %466

466:                                              ; preds = %458
  %467 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %468 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = icmp eq i32 %469, 129
  br i1 %470, label %471, label %482

471:                                              ; preds = %466, %458
  %472 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %473 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %472, i32 0, i32 6
  %474 = load i64, i64* %473, align 8
  %475 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %476 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %475, i32 0, i32 5
  %477 = load %struct.TYPE_2__*, %struct.TYPE_2__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = add nsw i64 %474, %479
  %481 = call i32 @writel(i64 0, i64 %480)
  br label %482

482:                                              ; preds = %471, %466
  br label %566

483:                                              ; preds = %452
  br label %484

484:                                              ; preds = %506, %483
  %485 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %486 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %485, i32 0, i32 6
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %489 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %488, i32 0, i32 5
  %490 = load %struct.TYPE_2__*, %struct.TYPE_2__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %490, i32 0, i32 3
  %492 = load i64, i64* %491, align 8
  %493 = add nsw i64 %487, %492
  %494 = call i64 @readl(i64 %493)
  %495 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %496 = call i64 @SIRFSOC_SPI_FIFO_EMPTY_MASK(%struct.sirfsoc_spi* %495)
  %497 = and i64 %494, %496
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %504, label %499

499:                                              ; preds = %484
  %500 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %501 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = icmp ne i64 %502, 0
  br label %504

504:                                              ; preds = %499, %484
  %505 = phi i1 [ false, %484 ], [ %503, %499 ]
  br i1 %505, label %506, label %512

506:                                              ; preds = %504
  %507 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %508 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %507, i32 0, i32 7
  %509 = load i32 (%struct.sirfsoc_spi*)*, i32 (%struct.sirfsoc_spi*)** %508, align 8
  %510 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %511 = call i32 %509(%struct.sirfsoc_spi* %510)
  br label %484

512:                                              ; preds = %504
  %513 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %514 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 8
  %516 = icmp eq i32 %515, 128
  br i1 %516, label %522, label %517

517:                                              ; preds = %512
  %518 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %519 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %518, i32 0, i32 2
  %520 = load i32, i32* %519, align 8
  %521 = icmp eq i32 %520, 129
  br i1 %521, label %522, label %533

522:                                              ; preds = %517, %512
  %523 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %524 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %523, i32 0, i32 6
  %525 = load i64, i64* %524, align 8
  %526 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %527 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %526, i32 0, i32 5
  %528 = load %struct.TYPE_2__*, %struct.TYPE_2__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %528, i32 0, i32 2
  %530 = load i64, i64* %529, align 8
  %531 = add nsw i64 %525, %530
  %532 = call i32 @writel(i64 0, i64 %531)
  br label %533

533:                                              ; preds = %522, %517
  %534 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %535 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %534, i32 0, i32 6
  %536 = load i64, i64* %535, align 8
  %537 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %538 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %537, i32 0, i32 5
  %539 = load %struct.TYPE_2__*, %struct.TYPE_2__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %539, i32 0, i32 1
  %541 = load i64, i64* %540, align 8
  %542 = add nsw i64 %536, %541
  %543 = call i32 @writel(i64 0, i64 %542)
  %544 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %545 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %544, i32 0, i32 6
  %546 = load i64, i64* %545, align 8
  %547 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %548 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %547, i32 0, i32 5
  %549 = load %struct.TYPE_2__*, %struct.TYPE_2__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = add nsw i64 %546, %551
  %553 = call i32 @writel(i64 0, i64 %552)
  br label %554

554:                                              ; preds = %533
  %555 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %556 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %555, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %564, label %559

559:                                              ; preds = %554
  %560 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %561 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %560, i32 0, i32 1
  %562 = load i64, i64* %561, align 8
  %563 = icmp ne i64 %562, 0
  br label %564

564:                                              ; preds = %559, %554
  %565 = phi i1 [ true, %554 ], [ %563, %559 ]
  br i1 %565, label %16, label %566

566:                                              ; preds = %564, %482
  ret void
}

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @SIRFSOC_SPI_FIFO_FULL_MASK(%struct.sirfsoc_spi*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @SIRFSOC_SPI_FIFO_EMPTY_MASK(%struct.sirfsoc_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
