; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.spi_transfer = type { i32, i32, i64, i32, i64 }
%struct.sirfsoc_spi = type { i32, i32, i32, i64, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Speed %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SIRFSOC_SPI_TRAN_DAT_FORMAT_8 = common dso_local global i32 0, align 4
@spi_sirfsoc_rx_word_u8 = common dso_local global i32 0, align 4
@spi_sirfsoc_tx_word_u8 = common dso_local global i32 0, align 4
@SIRFSOC_SPI_TRAN_DAT_FORMAT_12 = common dso_local global i32 0, align 4
@SIRFSOC_SPI_TRAN_DAT_FORMAT_16 = common dso_local global i32 0, align 4
@spi_sirfsoc_rx_word_u16 = common dso_local global i32 0, align 4
@spi_sirfsoc_tx_word_u16 = common dso_local global i32 0, align 4
@SIRFSOC_SPI_TRAN_DAT_FORMAT_32 = common dso_local global i32 0, align 4
@spi_sirfsoc_rx_word_u32 = common dso_local global i32 0, align 4
@spi_sirfsoc_tx_word_u32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"bpw %d not supported\0A\00", align 1
@SIRFSOC_SPI_FIFO_THD_OFFSET = common dso_local global i32 0, align 4
@SIRF_USP_SPI_P2 = common dso_local global i64 0, align 8
@SIRF_USP_SPI_A7 = common dso_local global i64 0, align 8
@SIRFSOC_USP_TX_DATA_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_DATA_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_TXD_DELAY_LEN = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_SYNC_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_SYNC_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_FRAME_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_FRAME_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_SHIFTER_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_TX_SHIFTER_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_DATA_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_DATA_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_RXD_DELAY_LEN = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_FRAME_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_FRAME_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_SHIFTER_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_RX_SHIFTER_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_CLK_10_11_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_CLK_10_11_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_CLK_12_15_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_CLK_12_15_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_CLK_DIVISOR_MASK = common dso_local global i32 0, align 4
@SIRFSOC_USP_CLK_DIVISOR_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_RXD_DELAY_OFFSET = common dso_local global i32 0, align 4
@SIRFSOC_USP_TXD_DELAY_OFFSET = common dso_local global i32 0, align 4
@SIRF_REAL_SPI = common dso_local global i64 0, align 8
@SIRFSOC_MAX_CMD_BYTES = common dso_local global i64 0, align 8
@SIRFSOC_SPI_CMD_MODE = common dso_local global i32 0, align 4
@SIRFSOC_SPI_RX_DMA_FLUSH = common dso_local global i32 0, align 4
@SIRFSOC_SPI_IO_MODE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_sirfsoc_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sirfsoc_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.sirfsoc_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sirfsoc_spi* @spi_master_get_devdata(i32 %17)
  store %struct.sirfsoc_spi* %18, %struct.sirfsoc_spi** %6, align 8
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %20 = icmp ne %struct.spi_transfer* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ]
  store i32 %30, i32* %7, align 4
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %32 = icmp ne %struct.spi_transfer* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  br label %46

42:                                               ; preds = %33, %29
  %43 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  store i32 %47, i32* %8, align 4
  %48 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %49 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 2, %51
  %53 = sdiv i32 %50, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 65535
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57, %46
  %61 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 2
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %470

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %106 [
    i32 8, label %69
    i32 12, label %79
    i32 16, label %79
    i32 32, label %96
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* @SIRFSOC_SPI_TRAN_DAT_FORMAT_8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @spi_sirfsoc_rx_word_u8, align 4
  %74 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %75 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @spi_sirfsoc_tx_word_u8, align 4
  %77 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %78 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  br label %113

79:                                               ; preds = %67, %67
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 12
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @SIRFSOC_SPI_TRAN_DAT_FORMAT_12, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @SIRFSOC_SPI_TRAN_DAT_FORMAT_16, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* @spi_sirfsoc_rx_word_u16, align 4
  %91 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %92 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @spi_sirfsoc_tx_word_u16, align 4
  %94 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %95 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  br label %113

96:                                               ; preds = %67
  %97 = load i32, i32* @SIRFSOC_SPI_TRAN_DAT_FORMAT_32, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @spi_sirfsoc_rx_word_u32, align 4
  %101 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %102 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @spi_sirfsoc_tx_word_u32, align 4
  %104 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %105 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  br label %113

106:                                              ; preds = %67
  %107 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %108 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %107, i32 0, i32 2
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %470

113:                                              ; preds = %96, %86, %69
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @DIV_ROUND_UP(i32 %114, i32 8)
  %116 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %117 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %119 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 2
  %122 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %123 = call i32 @SIRFSOC_SPI_FIFO_THD_MASK(%struct.sirfsoc_spi* %122)
  %124 = and i32 %121, %123
  %125 = load i32, i32* @SIRFSOC_SPI_FIFO_THD_OFFSET, align 4
  %126 = shl i32 %124, %125
  %127 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %128 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 1
  %131 = or i32 %126, %130
  store i32 %131, i32* %10, align 4
  %132 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %133 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %134, 2
  %136 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %137 = call i32 @SIRFSOC_SPI_FIFO_THD_MASK(%struct.sirfsoc_spi* %136)
  %138 = and i32 %135, %137
  %139 = load i32, i32* @SIRFSOC_SPI_FIFO_THD_OFFSET, align 4
  %140 = shl i32 %138, %139
  %141 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %142 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 1
  %145 = or i32 %140, %144
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %148 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %151 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %150, i32 0, i32 5
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %149, %154
  %156 = call i32 @writel(i32 %146, i64 %155)
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %159 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %162 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %161, i32 0, i32 5
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %160, %165
  %167 = call i32 @writel(i32 %157, i64 %166)
  %168 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %169 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SIRF_USP_SPI_P2, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %113
  %174 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %175 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SIRF_USP_SPI_A7, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %317

179:                                              ; preds = %173, %113
  store i32 0, i32* %12, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sub nsw i32 %180, 1
  %182 = load i32, i32* @SIRFSOC_USP_TX_DATA_MASK, align 4
  %183 = and i32 %181, %182
  %184 = load i32, i32* @SIRFSOC_USP_TX_DATA_OFFSET, align 4
  %185 = shl i32 %183, %184
  %186 = load i32, i32* %12, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* @SIRFSOC_USP_TXD_DELAY_LEN, align 4
  %191 = add nsw i32 %189, %190
  %192 = sub nsw i32 %191, 1
  %193 = load i32, i32* @SIRFSOC_USP_TX_SYNC_MASK, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @SIRFSOC_USP_TX_SYNC_OFFSET, align 4
  %196 = shl i32 %194, %195
  %197 = load i32, i32* %12, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  %201 = load i32, i32* @SIRFSOC_USP_TXD_DELAY_LEN, align 4
  %202 = add nsw i32 %200, %201
  %203 = add nsw i32 %202, 2
  %204 = sub nsw i32 %203, 1
  %205 = load i32, i32* @SIRFSOC_USP_TX_FRAME_MASK, align 4
  %206 = and i32 %204, %205
  %207 = load i32, i32* @SIRFSOC_USP_TX_FRAME_OFFSET, align 4
  %208 = shl i32 %206, %207
  %209 = load i32, i32* %12, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %7, align 4
  %212 = sub nsw i32 %211, 1
  %213 = load i32, i32* @SIRFSOC_USP_TX_SHIFTER_MASK, align 4
  %214 = and i32 %212, %213
  %215 = load i32, i32* @SIRFSOC_USP_TX_SHIFTER_OFFSET, align 4
  %216 = shl i32 %214, %215
  %217 = load i32, i32* %12, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %219 = load i32, i32* %7, align 4
  %220 = sub nsw i32 %219, 1
  %221 = load i32, i32* @SIRFSOC_USP_RX_DATA_MASK, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* @SIRFSOC_USP_RX_DATA_OFFSET, align 4
  %224 = shl i32 %222, %223
  %225 = load i32, i32* %13, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %13, align 4
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* @SIRFSOC_USP_RXD_DELAY_LEN, align 4
  %230 = add nsw i32 %228, %229
  %231 = add nsw i32 %230, 2
  %232 = sub nsw i32 %231, 1
  %233 = load i32, i32* @SIRFSOC_USP_RX_FRAME_MASK, align 4
  %234 = and i32 %232, %233
  %235 = load i32, i32* @SIRFSOC_USP_RX_FRAME_OFFSET, align 4
  %236 = shl i32 %234, %235
  %237 = load i32, i32* %13, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %7, align 4
  %240 = sub nsw i32 %239, 1
  %241 = load i32, i32* @SIRFSOC_USP_RX_SHIFTER_MASK, align 4
  %242 = and i32 %240, %241
  %243 = load i32, i32* @SIRFSOC_USP_RX_SHIFTER_OFFSET, align 4
  %244 = shl i32 %242, %243
  %245 = load i32, i32* %13, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %13, align 4
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %14, align 4
  %249 = ashr i32 %248, 10
  %250 = load i32, i32* @SIRFSOC_USP_CLK_10_11_MASK, align 4
  %251 = and i32 %249, %250
  %252 = load i32, i32* @SIRFSOC_USP_CLK_10_11_OFFSET, align 4
  %253 = shl i32 %251, %252
  %254 = or i32 %247, %253
  %255 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %256 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %255, i32 0, i32 6
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %259 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %258, i32 0, i32 5
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %257, %262
  %264 = call i32 @writel(i32 %254, i64 %263)
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %14, align 4
  %267 = ashr i32 %266, 12
  %268 = load i32, i32* @SIRFSOC_USP_CLK_12_15_MASK, align 4
  %269 = and i32 %267, %268
  %270 = load i32, i32* @SIRFSOC_USP_CLK_12_15_OFFSET, align 4
  %271 = shl i32 %269, %270
  %272 = or i32 %265, %271
  %273 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %274 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %277 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %276, i32 0, i32 5
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %275, %280
  %282 = call i32 @writel(i32 %272, i64 %281)
  %283 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %284 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %283, i32 0, i32 6
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %287 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %286, i32 0, i32 5
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %285, %290
  %292 = call i32 @readl(i64 %291)
  %293 = load i32, i32* %14, align 4
  %294 = load i32, i32* @SIRFSOC_USP_CLK_DIVISOR_MASK, align 4
  %295 = and i32 %293, %294
  %296 = load i32, i32* @SIRFSOC_USP_CLK_DIVISOR_OFFSET, align 4
  %297 = shl i32 %295, %296
  %298 = or i32 %292, %297
  %299 = load i32, i32* @SIRFSOC_USP_RXD_DELAY_LEN, align 4
  %300 = load i32, i32* @SIRFSOC_USP_RXD_DELAY_OFFSET, align 4
  %301 = shl i32 %299, %300
  %302 = or i32 %298, %301
  %303 = load i32, i32* @SIRFSOC_USP_TXD_DELAY_LEN, align 4
  %304 = load i32, i32* @SIRFSOC_USP_TXD_DELAY_OFFSET, align 4
  %305 = shl i32 %303, %304
  %306 = or i32 %302, %305
  %307 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %308 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %307, i32 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %311 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %310, i32 0, i32 5
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = add nsw i64 %309, %314
  %316 = call i32 @writel(i32 %306, i64 %315)
  br label %317

317:                                              ; preds = %179, %173
  %318 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %319 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @SIRF_REAL_SPI, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %335

323:                                              ; preds = %317
  %324 = load i32, i32* %9, align 4
  %325 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %326 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %325, i32 0, i32 6
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %329 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %328, i32 0, i32 5
  %330 = load %struct.TYPE_2__*, %struct.TYPE_2__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %327, %332
  %334 = call i32 @writel(i32 %324, i64 %333)
  br label %335

335:                                              ; preds = %323, %317
  %336 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %337 = call i32 @spi_sirfsoc_config_mode(%struct.spi_device* %336)
  %338 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %339 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @SIRF_REAL_SPI, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %420

343:                                              ; preds = %335
  %344 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %345 = icmp ne %struct.spi_transfer* %344, null
  br i1 %345, label %346, label %393

346:                                              ; preds = %343
  %347 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %348 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %347, i32 0, i32 4
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %393

351:                                              ; preds = %346
  %352 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %353 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %393, label %356

356:                                              ; preds = %351
  %357 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %358 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @SIRFSOC_MAX_CMD_BYTES, align 8
  %361 = icmp sle i64 %359, %360
  br i1 %361, label %362, label %393

362:                                              ; preds = %356
  %363 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %364 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %363, i32 0, i32 4
  store i32 1, i32* %364, align 8
  %365 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %366 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %365, i32 0, i32 6
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %369 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %368, i32 0, i32 5
  %370 = load %struct.TYPE_2__*, %struct.TYPE_2__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 8
  %373 = add nsw i64 %367, %372
  %374 = call i32 @readl(i64 %373)
  %375 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %376 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = sub nsw i64 %377, 1
  %379 = call i32 @SIRFSOC_SPI_CMD_BYTE_NUM(i64 %378)
  %380 = load i32, i32* @SIRFSOC_SPI_CMD_MODE, align 4
  %381 = or i32 %379, %380
  %382 = or i32 %374, %381
  %383 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %384 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %383, i32 0, i32 6
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %387 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %386, i32 0, i32 5
  %388 = load %struct.TYPE_2__*, %struct.TYPE_2__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = add nsw i64 %385, %390
  %392 = call i32 @writel(i32 %382, i64 %391)
  br label %419

393:                                              ; preds = %356, %351, %346, %343
  %394 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %395 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %394, i32 0, i32 4
  store i32 0, i32* %395, align 8
  %396 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %397 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %396, i32 0, i32 6
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %400 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %399, i32 0, i32 5
  %401 = load %struct.TYPE_2__*, %struct.TYPE_2__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = add nsw i64 %398, %403
  %405 = call i32 @readl(i64 %404)
  %406 = load i32, i32* @SIRFSOC_SPI_CMD_MODE, align 4
  %407 = xor i32 %406, -1
  %408 = and i32 %405, %407
  %409 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %410 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %409, i32 0, i32 6
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %413 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %412, i32 0, i32 5
  %414 = load %struct.TYPE_2__*, %struct.TYPE_2__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = add nsw i64 %411, %416
  %418 = call i32 @writel(i32 %408, i64 %417)
  br label %419

419:                                              ; preds = %393, %362
  br label %420

420:                                              ; preds = %419, %335
  %421 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %422 = call i64 @IS_DMA_VALID(%struct.spi_transfer* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %446

424:                                              ; preds = %420
  %425 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %426 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %425, i32 0, i32 6
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %429 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %428, i32 0, i32 5
  %430 = load %struct.TYPE_2__*, %struct.TYPE_2__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = add nsw i64 %427, %432
  %434 = call i32 @writel(i32 0, i64 %433)
  %435 = load i32, i32* @SIRFSOC_SPI_RX_DMA_FLUSH, align 4
  %436 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %437 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %440 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %439, i32 0, i32 5
  %441 = load %struct.TYPE_2__*, %struct.TYPE_2__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = add nsw i64 %438, %443
  %445 = call i32 @writel(i32 %435, i64 %444)
  br label %469

446:                                              ; preds = %420
  %447 = load i32, i32* @SIRFSOC_SPI_IO_MODE_SEL, align 4
  %448 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %449 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %448, i32 0, i32 6
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %452 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %451, i32 0, i32 5
  %453 = load %struct.TYPE_2__*, %struct.TYPE_2__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = add nsw i64 %450, %455
  %457 = call i32 @writel(i32 %447, i64 %456)
  %458 = load i32, i32* @SIRFSOC_SPI_IO_MODE_SEL, align 4
  %459 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %460 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %459, i32 0, i32 6
  %461 = load i64, i64* %460, align 8
  %462 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %6, align 8
  %463 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %462, i32 0, i32 5
  %464 = load %struct.TYPE_2__*, %struct.TYPE_2__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = add nsw i64 %461, %466
  %468 = call i32 @writel(i32 %458, i64 %467)
  br label %469

469:                                              ; preds = %446, %424
  store i32 0, i32* %3, align 4
  br label %470

470:                                              ; preds = %469, %106, %60
  %471 = load i32, i32* %3, align 4
  ret i32 %471
}

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @SIRFSOC_SPI_FIFO_THD_MASK(%struct.sirfsoc_spi*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spi_sirfsoc_config_mode(%struct.spi_device*) #1

declare dso_local i32 @SIRFSOC_SPI_CMD_BYTE_NUM(i64) #1

declare dso_local i64 @IS_DMA_VALID(%struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
