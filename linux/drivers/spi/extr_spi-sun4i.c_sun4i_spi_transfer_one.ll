; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun4i.c_sun4i_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sun4i.c_sun4i_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i64, i64 }
%struct.sun4i_spi = type { i32, i32, i64, i32, i64 }

@SUN4I_MAX_XFER_SIZE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@SUN4I_INT_STA_REG = common dso_local global i32 0, align 4
@SUN4I_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_CTL_RF_RST = common dso_local global i32 0, align 4
@SUN4I_CTL_TF_RST = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SUN4I_CTL_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SUN4I_CTL_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SUN4I_CTL_LMTF = common dso_local global i32 0, align 4
@SUN4I_CTL_DHB = common dso_local global i32 0, align 4
@SUN4I_CLK_CTL_CDR2_MASK = common dso_local global i32 0, align 4
@SUN4I_CLK_CTL_DRS = common dso_local global i32 0, align 4
@SUN4I_CLK_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_BURST_CNT_REG = common dso_local global i32 0, align 4
@SUN4I_XMIT_CNT_REG = common dso_local global i32 0, align 4
@SUN4I_FIFO_DEPTH = common dso_local global i32 0, align 4
@SUN4I_INT_CTL_TC = common dso_local global i32 0, align 4
@SUN4I_INT_CTL_RF_F34 = common dso_local global i32 0, align 4
@SUN4I_INT_CTL_TF_E34 = common dso_local global i32 0, align 4
@SUN4I_CTL_XCH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: timeout transferring %u bytes@%iHz for %i(%i)ms\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SUN4I_INT_CTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @sun4i_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.sun4i_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %18 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %19 = call %struct.sun4i_spi* @spi_master_get_devdata(%struct.spi_master* %18)
  store %struct.sun4i_spi* %19, %struct.sun4i_spi** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SUN4I_MAX_XFER_SIZE, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EMSGSIZE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %294

28:                                               ; preds = %3
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SUN4I_MAX_XFER_SIZE, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %294

42:                                               ; preds = %33, %28
  %43 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %44 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %43, i32 0, i32 1
  %45 = call i32 @reinit_completion(i32* %44)
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %50 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %52 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %55 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %57 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %60 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %62 = load i32, i32* @SUN4I_INT_STA_REG, align 4
  %63 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %61, i32 %62, i32 -1)
  %64 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %65 = load i32, i32* @SUN4I_CTL_REG, align 4
  %66 = call i32 @sun4i_spi_read(%struct.sun4i_spi* %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %68 = load i32, i32* @SUN4I_CTL_REG, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @SUN4I_CTL_RF_RST, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SUN4I_CTL_TF_RST, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %67, i32 %68, i32 %73)
  %75 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SPI_CPOL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %42
  %82 = load i32, i32* @SUN4I_CTL_CPOL, align 4
  %83 = load i32, i32* %17, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %17, align 4
  br label %90

85:                                               ; preds = %42
  %86 = load i32, i32* @SUN4I_CTL_CPOL, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %17, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %17, align 4
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
  %98 = load i32, i32* @SUN4I_CTL_CPHA, align 4
  %99 = load i32, i32* %17, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %17, align 4
  br label %106

101:                                              ; preds = %90
  %102 = load i32, i32* @SUN4I_CTL_CPHA, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %17, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %17, align 4
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
  %114 = load i32, i32* @SUN4I_CTL_LMTF, align 4
  %115 = load i32, i32* %17, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %17, align 4
  br label %122

117:                                              ; preds = %106
  %118 = load i32, i32* @SUN4I_CTL_LMTF, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %17, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %124 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @SUN4I_CTL_DHB, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %17, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %17, align 4
  br label %136

132:                                              ; preds = %122
  %133 = load i32, i32* @SUN4I_CTL_DHB, align 4
  %134 = load i32, i32* %17, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %138 = load i32, i32* @SUN4I_CTL_REG, align 4
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %137, i32 %138, i32 %139)
  %141 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %142 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @clk_get_rate(i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %147 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 2, %148
  %150 = icmp ult i32 %145, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %136
  %152 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %153 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %156 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 2, %157
  %159 = call i32 @clk_set_rate(i32 %154, i32 %158)
  %160 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %161 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @clk_get_rate(i32 %162)
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %151, %136
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %167 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 2, %168
  %170 = udiv i32 %165, %169
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @SUN4I_CLK_CTL_CDR2_MASK, align 4
  %173 = add nsw i32 %172, 1
  %174 = icmp ule i32 %171, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %164
  %176 = load i32, i32* %10, align 4
  %177 = icmp ugt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %10, align 4
  %180 = add i32 %179, -1
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @SUN4I_CLK_CTL_CDR2(i32 %182)
  %184 = load i32, i32* @SUN4I_CLK_CTL_DRS, align 4
  %185 = or i32 %183, %184
  store i32 %185, i32* %17, align 4
  br label %196

186:                                              ; preds = %164
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @ilog2(i32 %187)
  %189 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %190 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ilog2(i32 %191)
  %193 = sub i32 %188, %192
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @SUN4I_CLK_CTL_CDR1(i32 %194)
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %186, %181
  %197 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %198 = load i32, i32* @SUN4I_CLK_CTL_REG, align 4
  %199 = load i32, i32* %17, align 4
  %200 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %197, i32 %198, i32 %199)
  %201 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %202 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %196
  %206 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %207 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %205, %196
  %210 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %211 = load i32, i32* @SUN4I_BURST_CNT_REG, align 4
  %212 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %213 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @SUN4I_BURST_CNT(i32 %214)
  %216 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %210, i32 %211, i32 %215)
  %217 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %218 = load i32, i32* @SUN4I_XMIT_CNT_REG, align 4
  %219 = load i32, i32* %15, align 4
  %220 = call i32 @SUN4I_XMIT_CNT(i32 %219)
  %221 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %217, i32 %218, i32 %220)
  %222 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %223 = load i32, i32* @SUN4I_FIFO_DEPTH, align 4
  %224 = sub nsw i32 %223, 1
  %225 = call i32 @sun4i_spi_fill_fifo(%struct.sun4i_spi* %222, i32 %224)
  %226 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %227 = load i32, i32* @SUN4I_INT_CTL_TC, align 4
  %228 = load i32, i32* @SUN4I_INT_CTL_RF_F34, align 4
  %229 = or i32 %227, %228
  %230 = call i32 @sun4i_spi_enable_interrupt(%struct.sun4i_spi* %226, i32 %229)
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* @SUN4I_FIFO_DEPTH, align 4
  %233 = icmp ugt i32 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %209
  %235 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %236 = load i32, i32* @SUN4I_INT_CTL_TF_E34, align 4
  %237 = call i32 @sun4i_spi_enable_interrupt(%struct.sun4i_spi* %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %209
  %239 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %240 = load i32, i32* @SUN4I_CTL_REG, align 4
  %241 = call i32 @sun4i_spi_read(%struct.sun4i_spi* %239, i32 %240)
  store i32 %241, i32* %17, align 4
  %242 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %243 = load i32, i32* @SUN4I_CTL_REG, align 4
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* @SUN4I_CTL_XCH, align 4
  %246 = or i32 %244, %245
  %247 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %242, i32 %243, i32 %246)
  %248 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %249 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = mul i32 %250, 8
  %252 = mul i32 %251, 2
  %253 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %254 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = sdiv i32 %255, 1000
  %257 = udiv i32 %252, %256
  %258 = call i32 @max(i32 %257, i32 100)
  store i32 %258, i32* %14, align 4
  %259 = load i32, i32* @jiffies, align 4
  store i32 %259, i32* %12, align 4
  %260 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %261 = getelementptr inbounds %struct.sun4i_spi, %struct.sun4i_spi* %260, i32 0, i32 1
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @msecs_to_jiffies(i32 %262)
  %264 = call i32 @wait_for_completion_timeout(i32* %261, i32 %263)
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* @jiffies, align 4
  store i32 %265, i32* %13, align 4
  %266 = load i32, i32* %11, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %288, label %268

268:                                              ; preds = %238
  %269 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %270 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %269, i32 0, i32 0
  %271 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %272 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %271, i32 0, i32 1
  %273 = call i32 @dev_name(i32* %272)
  %274 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %275 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %278 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %12, align 4
  %282 = sub i32 %280, %281
  %283 = call i32 @jiffies_to_msecs(i32 %282)
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @dev_warn(i32* %270, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %273, i32 %276, i32 %279, i32 %283, i32 %284)
  %286 = load i32, i32* @ETIMEDOUT, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %16, align 4
  br label %289

288:                                              ; preds = %238
  br label %289

289:                                              ; preds = %288, %268
  %290 = load %struct.sun4i_spi*, %struct.sun4i_spi** %8, align 8
  %291 = load i32, i32* @SUN4I_INT_CTL_REG, align 4
  %292 = call i32 @sun4i_spi_write(%struct.sun4i_spi* %290, i32 %291, i32 0)
  %293 = load i32, i32* %16, align 4
  store i32 %293, i32* %4, align 4
  br label %294

294:                                              ; preds = %289, %39, %25
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local %struct.sun4i_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @sun4i_spi_write(%struct.sun4i_spi*, i32, i32) #1

declare dso_local i32 @sun4i_spi_read(%struct.sun4i_spi*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @SUN4I_CLK_CTL_CDR2(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @SUN4I_CLK_CTL_CDR1(i32) #1

declare dso_local i32 @SUN4I_BURST_CNT(i32) #1

declare dso_local i32 @SUN4I_XMIT_CNT(i32) #1

declare dso_local i32 @sun4i_spi_fill_fifo(%struct.sun4i_spi*, i32) #1

declare dso_local i32 @sun4i_spi_enable_interrupt(%struct.sun4i_spi*, i32) #1

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
