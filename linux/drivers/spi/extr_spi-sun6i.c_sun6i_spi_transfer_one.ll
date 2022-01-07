; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun6i.c_sun6i_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i64, i64 }
%struct.sun6i_spi = type { i32, i32, i32, i64, i32, i64 }

@SUN6I_MAX_XFER_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUN6I_INT_STA_REG = common dso_local global i32 0, align 4
@SUN6I_FIFO_CTL_REG = common dso_local global i32 0, align 4
@SUN6I_FIFO_CTL_RF_RST = common dso_local global i32 0, align 4
@SUN6I_FIFO_CTL_TF_RST = common dso_local global i32 0, align 4
@SUN6I_FIFO_CTL_RF_RDY_TRIG_LEVEL_BITS = common dso_local global i32 0, align 4
@SUN6I_FIFO_CTL_TF_ERQ_TRIG_LEVEL_BITS = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_REG = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_FBS = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_DHB = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_CS_MANUAL = common dso_local global i32 0, align 4
@SUN6I_CLK_CTL_CDR2_MASK = common dso_local global i32 0, align 4
@SUN6I_CLK_CTL_DRS = common dso_local global i32 0, align 4
@SUN6I_CLK_CTL_REG = common dso_local global i32 0, align 4
@SUN6I_BURST_CNT_REG = common dso_local global i32 0, align 4
@SUN6I_XMIT_CNT_REG = common dso_local global i32 0, align 4
@SUN6I_BURST_CTL_CNT_REG = common dso_local global i32 0, align 4
@SUN6I_INT_CTL_REG = common dso_local global i32 0, align 4
@SUN6I_INT_CTL_TC = common dso_local global i32 0, align 4
@SUN6I_INT_CTL_RF_RDY = common dso_local global i32 0, align 4
@SUN6I_INT_CTL_TF_ERQ = common dso_local global i32 0, align 4
@SUN6I_TFR_CTL_XCH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: timeout transferring %u bytes@%iHz for %i(%i)ms\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @sun6i_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.sun6i_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %19 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %20 = call %struct.sun6i_spi* @spi_master_get_devdata(%struct.spi_master* %19)
  store %struct.sun6i_spi* %20, %struct.sun6i_spi** %8, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SUN6I_MAX_XFER_SIZE, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %309

29:                                               ; preds = %3
  %30 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %31 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %30, i32 0, i32 2
  %32 = call i32 @reinit_completion(i32* %31)
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %37 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %42 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %41, i32 0, i32 5
  store i64 %40, i64* %42, align 8
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %47 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %49 = load i32, i32* @SUN6I_INT_STA_REG, align 4
  %50 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %48, i32 %49, i32 -1)
  %51 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %52 = load i32, i32* @SUN6I_FIFO_CTL_REG, align 4
  %53 = load i32, i32* @SUN6I_FIFO_CTL_RF_RST, align 4
  %54 = load i32, i32* @SUN6I_FIFO_CTL_TF_RST, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %51, i32 %52, i32 %55)
  %57 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %58 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 4
  %61 = mul nsw i32 %60, 3
  store i32 %61, i32* %15, align 4
  %62 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %63 = load i32, i32* @SUN6I_FIFO_CTL_REG, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @SUN6I_FIFO_CTL_RF_RDY_TRIG_LEVEL_BITS, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @SUN6I_FIFO_CTL_TF_ERQ_TRIG_LEVEL_BITS, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %66, %69
  %71 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %62, i32 %63, i32 %70)
  %72 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %73 = load i32, i32* @SUN6I_TFR_CTL_REG, align 4
  %74 = call i32 @sun6i_spi_read(%struct.sun6i_spi* %72, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SPI_CPOL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %29
  %82 = load i32, i32* @SUN6I_TFR_CTL_CPOL, align 4
  %83 = load i32, i32* %18, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %18, align 4
  br label %90

85:                                               ; preds = %29
  %86 = load i32, i32* @SUN6I_TFR_CTL_CPOL, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %18, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SPI_CPHA, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @SUN6I_TFR_CTL_CPHA, align 4
  %99 = load i32, i32* %18, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %18, align 4
  br label %106

101:                                              ; preds = %90
  %102 = load i32, i32* @SUN6I_TFR_CTL_CPHA, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %18, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %101, %97
  %107 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %108 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SPI_LSB_FIRST, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @SUN6I_TFR_CTL_FBS, align 4
  %115 = load i32, i32* %18, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %18, align 4
  br label %122

117:                                              ; preds = %106
  %118 = load i32, i32* @SUN6I_TFR_CTL_FBS, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %18, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %124 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @SUN6I_TFR_CTL_DHB, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %18, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %18, align 4
  br label %136

132:                                              ; preds = %122
  %133 = load i32, i32* @SUN6I_TFR_CTL_DHB, align 4
  %134 = load i32, i32* %18, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %18, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i32, i32* @SUN6I_TFR_CTL_CS_MANUAL, align 4
  %138 = load i32, i32* %18, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %18, align 4
  %140 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %141 = load i32, i32* @SUN6I_TFR_CTL_REG, align 4
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %140, i32 %141, i32 %142)
  %144 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %145 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @clk_get_rate(i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %150 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 2, %151
  %153 = icmp ult i32 %148, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %136
  %155 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %156 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %159 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 2, %160
  %162 = call i32 @clk_set_rate(i32 %157, i32 %161)
  %163 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %164 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @clk_get_rate(i32 %165)
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %154, %136
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %170 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 2, %171
  %173 = udiv i32 %168, %172
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @SUN6I_CLK_CTL_CDR2_MASK, align 4
  %176 = add nsw i32 %175, 1
  %177 = icmp ule i32 %174, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %167
  %179 = load i32, i32* %10, align 4
  %180 = icmp ugt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %10, align 4
  %183 = add i32 %182, -1
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @SUN6I_CLK_CTL_CDR2(i32 %185)
  %187 = load i32, i32* @SUN6I_CLK_CTL_DRS, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %18, align 4
  br label %199

189:                                              ; preds = %167
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @ilog2(i32 %190)
  %192 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %193 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @ilog2(i32 %194)
  %196 = sub i32 %191, %195
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @SUN6I_CLK_CTL_CDR1(i32 %197)
  store i32 %198, i32* %18, align 4
  br label %199

199:                                              ; preds = %189, %184
  %200 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %201 = load i32, i32* @SUN6I_CLK_CTL_REG, align 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %200, i32 %201, i32 %202)
  %204 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %205 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %199
  %209 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %210 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %16, align 4
  br label %212

212:                                              ; preds = %208, %199
  %213 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %214 = load i32, i32* @SUN6I_BURST_CNT_REG, align 4
  %215 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %216 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @SUN6I_BURST_CNT(i32 %217)
  %219 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %213, i32 %214, i32 %218)
  %220 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %221 = load i32, i32* @SUN6I_XMIT_CNT_REG, align 4
  %222 = load i32, i32* %16, align 4
  %223 = call i32 @SUN6I_XMIT_CNT(i32 %222)
  %224 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %220, i32 %221, i32 %223)
  %225 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %226 = load i32, i32* @SUN6I_BURST_CTL_CNT_REG, align 4
  %227 = load i32, i32* %16, align 4
  %228 = call i32 @SUN6I_BURST_CTL_CNT_STC(i32 %227)
  %229 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %225, i32 %226, i32 %228)
  %230 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %231 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %232 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @sun6i_spi_fill_fifo(%struct.sun6i_spi* %230, i32 %233)
  %235 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %236 = load i32, i32* @SUN6I_INT_CTL_REG, align 4
  %237 = load i32, i32* @SUN6I_INT_CTL_TC, align 4
  %238 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %235, i32 %236, i32 %237)
  %239 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %240 = load i32, i32* @SUN6I_INT_CTL_TC, align 4
  %241 = load i32, i32* @SUN6I_INT_CTL_RF_RDY, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @sun6i_spi_enable_interrupt(%struct.sun6i_spi* %239, i32 %242)
  %244 = load i32, i32* %16, align 4
  %245 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %246 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ugt i32 %244, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %212
  %250 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %251 = load i32, i32* @SUN6I_INT_CTL_TF_ERQ, align 4
  %252 = call i32 @sun6i_spi_enable_interrupt(%struct.sun6i_spi* %250, i32 %251)
  br label %253

253:                                              ; preds = %249, %212
  %254 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %255 = load i32, i32* @SUN6I_TFR_CTL_REG, align 4
  %256 = call i32 @sun6i_spi_read(%struct.sun6i_spi* %254, i32 %255)
  store i32 %256, i32* %18, align 4
  %257 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %258 = load i32, i32* @SUN6I_TFR_CTL_REG, align 4
  %259 = load i32, i32* %18, align 4
  %260 = load i32, i32* @SUN6I_TFR_CTL_XCH, align 4
  %261 = or i32 %259, %260
  %262 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %257, i32 %258, i32 %261)
  %263 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %264 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = mul i32 %265, 8
  %267 = mul i32 %266, 2
  %268 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %269 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = sdiv i32 %270, 1000
  %272 = udiv i32 %267, %271
  %273 = call i32 @max(i32 %272, i32 100)
  store i32 %273, i32* %14, align 4
  %274 = load i32, i32* @jiffies, align 4
  store i32 %274, i32* %12, align 4
  %275 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %276 = getelementptr inbounds %struct.sun6i_spi, %struct.sun6i_spi* %275, i32 0, i32 2
  %277 = load i32, i32* %14, align 4
  %278 = call i32 @msecs_to_jiffies(i32 %277)
  %279 = call i32 @wait_for_completion_timeout(i32* %276, i32 %278)
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* @jiffies, align 4
  store i32 %280, i32* %13, align 4
  %281 = load i32, i32* %11, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %303, label %283

283:                                              ; preds = %253
  %284 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %285 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %284, i32 0, i32 0
  %286 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %287 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %286, i32 0, i32 1
  %288 = call i32 @dev_name(i32* %287)
  %289 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %290 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %293 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* %12, align 4
  %297 = sub i32 %295, %296
  %298 = call i32 @jiffies_to_msecs(i32 %297)
  %299 = load i32, i32* %14, align 4
  %300 = call i32 @dev_warn(i32* %285, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %288, i32 %291, i32 %294, i32 %298, i32 %299)
  %301 = load i32, i32* @ETIMEDOUT, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %17, align 4
  br label %304

303:                                              ; preds = %253
  br label %304

304:                                              ; preds = %303, %283
  %305 = load %struct.sun6i_spi*, %struct.sun6i_spi** %8, align 8
  %306 = load i32, i32* @SUN6I_INT_CTL_REG, align 4
  %307 = call i32 @sun6i_spi_write(%struct.sun6i_spi* %305, i32 %306, i32 0)
  %308 = load i32, i32* %17, align 4
  store i32 %308, i32* %4, align 4
  br label %309

309:                                              ; preds = %304, %26
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local %struct.sun6i_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @sun6i_spi_write(%struct.sun6i_spi*, i32, i32) #1

declare dso_local i32 @sun6i_spi_read(%struct.sun6i_spi*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @SUN6I_CLK_CTL_CDR2(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @SUN6I_CLK_CTL_CDR1(i32) #1

declare dso_local i32 @SUN6I_BURST_CNT(i32) #1

declare dso_local i32 @SUN6I_XMIT_CNT(i32) #1

declare dso_local i32 @SUN6I_BURST_CTL_CNT_STC(i32) #1

declare dso_local i32 @sun6i_spi_fill_fifo(%struct.sun6i_spi*, i32) #1

declare dso_local i32 @sun6i_spi_enable_interrupt(%struct.sun6i_spi*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
