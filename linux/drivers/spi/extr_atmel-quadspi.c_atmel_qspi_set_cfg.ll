; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.atmel_qspi = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.spi_mem_op = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@QSPI_IFR_INSTEN = common dso_local global i32 0, align 4
@atmel_qspi_modes = common dso_local global %struct.TYPE_12__* null, align 8
@QSPI_IFR_OPTEN = common dso_local global i32 0, align 4
@QSPI_IFR_OPTL_8BIT = common dso_local global i32 0, align 4
@QSPI_IFR_ADDREN = common dso_local global i32 0, align 4
@QSPI_IFR_ADDRL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@QSPI_IFR_DATAEN = common dso_local global i32 0, align 4
@QSPI_MR_SMM = common dso_local global i64 0, align 8
@QSPI_MR = common dso_local global i64 0, align 8
@QSPI_SR = common dso_local global i64 0, align 8
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@QSPI_IFR_APBTFRTYP_READ = common dso_local global i32 0, align 4
@QSPI_IAR = common dso_local global i64 0, align 8
@QSPI_RICR = common dso_local global i64 0, align 8
@QSPI_WICR = common dso_local global i64 0, align 8
@QSPI_IFR = common dso_local global i64 0, align 8
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@QSPI_IFR_SAMA5D2_WRITE_TRSFR = common dso_local global i32 0, align 4
@QSPI_ICR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_qspi*, %struct.spi_mem_op*, i32*)* @atmel_qspi_set_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_qspi_set_cfg(%struct.atmel_qspi* %0, %struct.spi_mem_op* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_qspi*, align 8
  %6 = alloca %struct.spi_mem_op*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atmel_qspi* %0, %struct.atmel_qspi** %5, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %14 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @QSPI_ICR_INST(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @QSPI_IFR_INSTEN, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %20 = call i32 @atmel_qspi_find_mode(%struct.spi_mem_op* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %291

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @atmel_qspi_modes, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %35 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %25
  %40 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %41 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %47 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 8
  %51 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %52 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %50, %54
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %45, %39, %25
  %57 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %58 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %151

62:                                               ; preds = %56
  %63 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %64 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %147 [
    i32 0, label %67
    i32 1, label %68
    i32 2, label %82
    i32 3, label %127
    i32 4, label %136
  ]

67:                                               ; preds = %62
  br label %150

68:                                               ; preds = %62
  %69 = load i32, i32* @QSPI_IFR_OPTEN, align 4
  %70 = load i32, i32* @QSPI_IFR_OPTL_8BIT, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %75 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 255
  %79 = call i32 @QSPI_ICR_OPT(i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %150

82:                                               ; preds = %62
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %85 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 8, %87
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %82
  %91 = load i32, i32* @QSPI_IFR_INSTEN, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @QSPI_IFR_ADDREN, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %99 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 16
  %103 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %104 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 65535
  %108 = or i32 %102, %107
  store i32 %108, i32* %8, align 4
  br label %126

109:                                              ; preds = %82
  %110 = load i32, i32* @QSPI_IFR_ADDREN, align 4
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %114 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 %116, 8
  %118 = and i32 %117, 16777215
  store i32 %118, i32* %8, align 4
  %119 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %120 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 8, %122
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %109, %90
  br label %150

127:                                              ; preds = %62
  %128 = load i32, i32* @QSPI_IFR_ADDREN, align 4
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %132 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 16777215
  store i32 %135, i32* %8, align 4
  br label %150

136:                                              ; preds = %62
  %137 = load i32, i32* @QSPI_IFR_ADDREN, align 4
  %138 = load i32, i32* @QSPI_IFR_ADDRL, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %143 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 134217727
  store i32 %146, i32* %8, align 4
  br label %150

147:                                              ; preds = %62
  %148 = load i32, i32* @ENOTSUPP, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %291

150:                                              ; preds = %136, %127, %126, %68, %67
  br label %151

151:                                              ; preds = %150, %56
  %152 = load i32, i32* %8, align 4
  %153 = load i32*, i32** %7, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @QSPI_IFR_NBDUM(i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %156, %151
  %162 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %163 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i32, i32* @QSPI_IFR_DATAEN, align 4
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %167, %161
  %172 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %173 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @QSPI_MR_SMM, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load i64, i64* @QSPI_MR_SMM, align 8
  %179 = trunc i64 %178 to i32
  %180 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %181 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @QSPI_MR, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel_relaxed(i32 %179, i64 %184)
  %186 = load i64, i64* @QSPI_MR_SMM, align 8
  %187 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %188 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %177, %171
  %190 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %191 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @QSPI_SR, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @readl_relaxed(i64 %194)
  %196 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %197 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %196, i32 0, i32 2
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %257

202:                                              ; preds = %189
  %203 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %204 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %219, label %208

208:                                              ; preds = %202
  %209 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %210 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = load i32, i32* @QSPI_IFR_APBTFRTYP_READ, align 4
  %217 = load i32, i32* %10, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %215, %208, %202
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %222 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @QSPI_IAR, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel_relaxed(i32 %220, i64 %225)
  %227 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %228 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %219
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %236 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @QSPI_RICR, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @writel_relaxed(i32 %234, i64 %239)
  br label %249

241:                                              ; preds = %219
  %242 = load i32, i32* %9, align 4
  %243 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %244 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @QSPI_WICR, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @writel_relaxed(i32 %242, i64 %247)
  br label %249

249:                                              ; preds = %241, %233
  %250 = load i32, i32* %10, align 4
  %251 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %252 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @QSPI_IFR, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i32 @writel_relaxed(i32 %250, i64 %255)
  br label %290

257:                                              ; preds = %189
  %258 = load %struct.spi_mem_op*, %struct.spi_mem_op** %6, align 8
  %259 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %257
  %265 = load i32, i32* @QSPI_IFR_SAMA5D2_WRITE_TRSFR, align 4
  %266 = load i32, i32* %10, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %10, align 4
  br label %268

268:                                              ; preds = %264, %257
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %271 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @QSPI_IAR, align 8
  %274 = add nsw i64 %272, %273
  %275 = call i32 @writel_relaxed(i32 %269, i64 %274)
  %276 = load i32, i32* %9, align 4
  %277 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %278 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @QSPI_ICR, align 8
  %281 = add nsw i64 %279, %280
  %282 = call i32 @writel_relaxed(i32 %276, i64 %281)
  %283 = load i32, i32* %10, align 4
  %284 = load %struct.atmel_qspi*, %struct.atmel_qspi** %5, align 8
  %285 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @QSPI_IFR, align 8
  %288 = add nsw i64 %286, %287
  %289 = call i32 @writel_relaxed(i32 %283, i64 %288)
  br label %290

290:                                              ; preds = %268, %249
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %290, %147, %23
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i32 @QSPI_ICR_INST(i32) #1

declare dso_local i32 @atmel_qspi_find_mode(%struct.spi_mem_op*) #1

declare dso_local i32 @QSPI_ICR_OPT(i32) #1

declare dso_local i32 @QSPI_IFR_NBDUM(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
