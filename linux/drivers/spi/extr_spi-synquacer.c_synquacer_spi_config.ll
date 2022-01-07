; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_synquacer_spi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32, i32, i64, i64 }
%struct.synquacer_spi = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [53 x i8] c"RX and TX bus widths must be 1-bit for Full-Duplex!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_TRANSFER_MODE_TX = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_TRANSFER_MODE_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Requested rate too low (%u)\0A\00", align 1
@SYNQUACER_HSSPI_PCC_SAFESYNC = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_CPOL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_SSPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_SDIR = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_ACES = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_RTM = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_SS2CD_SHIFT = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_SENDIAN = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_CDRS_MASK = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_PCC_CDRS_SHIFT = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_REG_FIFOCFG = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_FIFOCFG_FIFO_WIDTH_MASK = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_FIFOCFG_FIFO_WIDTH_SHIFT = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_REG_DMSTART = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_DMTRP_DATA_MASK = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_DMTRP_DATA_SHIFT = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_DMTRP_DATA_RX = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_DMTRP_DATA_TX = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_DMTRP_BUS_WIDTH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @synquacer_spi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_spi_config(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.synquacer_spi*, align 8
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
  %19 = call %struct.synquacer_spi* @spi_master_get_devdata(%struct.spi_master* %18)
  store %struct.synquacer_spi* %19, %struct.synquacer_spi** %8, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %34, %29
  %40 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %41 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %396

46:                                               ; preds = %34, %24, %3
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @SYNQUACER_HSSPI_TRANSFER_MODE_TX, align 4
  store i32 %55, i32* %14, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* @SYNQUACER_HSSPI_TRANSFER_MODE_RX, align 4
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %66 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %12, align 4
  %68 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %69 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %9, align 4
  %71 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %72 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %76 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %61
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %82 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %88 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %94 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %100 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %106 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %396

110:                                              ; preds = %103, %97, %91, %85, %79, %61
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %113 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %115 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @DIV_ROUND_UP(i32 %117, i32 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp sgt i32 %120, 254
  br i1 %121, label %122, label %132

122:                                              ; preds = %110
  %123 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %124 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %127 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %396

132:                                              ; preds = %110
  %133 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %134 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i64 @SYNQUACER_HSSPI_REG_PCC(i32 %136)
  %138 = add nsw i64 %135, %137
  %139 = call i32 @readl(i64 %138)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* @SYNQUACER_HSSPI_PCC_SAFESYNC, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %16, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp eq i32 %144, 8
  br i1 %145, label %146, label %160

146:                                              ; preds = %132
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @SPI_TX_DUAL, align 4
  %149 = load i32, i32* @SPI_RX_DUAL, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load i32, i32* %17, align 4
  %155 = icmp slt i32 %154, 3
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* @SYNQUACER_HSSPI_PCC_SAFESYNC, align 4
  %158 = load i32, i32* %16, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %156, %153, %146, %132
  %161 = load i32, i32* %11, align 4
  %162 = icmp eq i32 %161, 8
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @SPI_TX_QUAD, align 4
  %166 = load i32, i32* @SPI_RX_QUAD, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i32, i32* %17, align 4
  %172 = icmp slt i32 %171, 6
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32, i32* @SYNQUACER_HSSPI_PCC_SAFESYNC, align 4
  %175 = load i32, i32* %16, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %16, align 4
  br label %177

177:                                              ; preds = %173, %170, %163, %160
  %178 = load i32, i32* %11, align 4
  %179 = icmp eq i32 %178, 16
  br i1 %179, label %180, label %194

180:                                              ; preds = %177
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @SPI_TX_QUAD, align 4
  %183 = load i32, i32* @SPI_RX_QUAD, align 4
  %184 = or i32 %182, %183
  %185 = and i32 %181, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %180
  %188 = load i32, i32* %17, align 4
  %189 = icmp slt i32 %188, 3
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, i32* @SYNQUACER_HSSPI_PCC_SAFESYNC, align 4
  %192 = load i32, i32* %16, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %16, align 4
  br label %194

194:                                              ; preds = %190, %187, %180, %177
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @SPI_CPHA, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @SYNQUACER_HSSPI_PCC_CPHA, align 4
  %201 = load i32, i32* %16, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %16, align 4
  br label %208

203:                                              ; preds = %194
  %204 = load i32, i32* @SYNQUACER_HSSPI_PCC_CPHA, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %16, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %16, align 4
  br label %208

208:                                              ; preds = %203, %199
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @SPI_CPOL, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load i32, i32* @SYNQUACER_HSSPI_PCC_CPOL, align 4
  %215 = load i32, i32* %16, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %16, align 4
  br label %222

217:                                              ; preds = %208
  %218 = load i32, i32* @SYNQUACER_HSSPI_PCC_CPOL, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %16, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %16, align 4
  br label %222

222:                                              ; preds = %217, %213
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @SPI_CS_HIGH, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load i32, i32* @SYNQUACER_HSSPI_PCC_SSPOL, align 4
  %229 = load i32, i32* %16, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %16, align 4
  br label %236

231:                                              ; preds = %222
  %232 = load i32, i32* @SYNQUACER_HSSPI_PCC_SSPOL, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %16, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %16, align 4
  br label %236

236:                                              ; preds = %231, %227
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @SPI_LSB_FIRST, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i32, i32* @SYNQUACER_HSSPI_PCC_SDIR, align 4
  %243 = load i32, i32* %16, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %16, align 4
  br label %250

245:                                              ; preds = %236
  %246 = load i32, i32* @SYNQUACER_HSSPI_PCC_SDIR, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %16, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %16, align 4
  br label %250

250:                                              ; preds = %245, %241
  %251 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %252 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %251, i32 0, i32 8
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %250
  %256 = load i32, i32* @SYNQUACER_HSSPI_PCC_ACES, align 4
  %257 = load i32, i32* %16, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %16, align 4
  br label %264

259:                                              ; preds = %250
  %260 = load i32, i32* @SYNQUACER_HSSPI_PCC_ACES, align 4
  %261 = xor i32 %260, -1
  %262 = load i32, i32* %16, align 4
  %263 = and i32 %262, %261
  store i32 %263, i32* %16, align 4
  br label %264

264:                                              ; preds = %259, %255
  %265 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %266 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %265, i32 0, i32 7
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %264
  %270 = load i32, i32* @SYNQUACER_HSSPI_PCC_RTM, align 4
  %271 = load i32, i32* %16, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %16, align 4
  br label %278

273:                                              ; preds = %264
  %274 = load i32, i32* @SYNQUACER_HSSPI_PCC_RTM, align 4
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %16, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %16, align 4
  br label %278

278:                                              ; preds = %273, %269
  %279 = load i32, i32* @SYNQUACER_HSSPI_PCC_SS2CD_SHIFT, align 4
  %280 = shl i32 3, %279
  %281 = load i32, i32* %16, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %16, align 4
  %283 = load i32, i32* @SYNQUACER_HSSPI_PCC_SENDIAN, align 4
  %284 = load i32, i32* %16, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* @SYNQUACER_HSSPI_PCC_CDRS_MASK, align 4
  %287 = load i32, i32* @SYNQUACER_HSSPI_PCC_CDRS_SHIFT, align 4
  %288 = shl i32 %286, %287
  %289 = xor i32 %288, -1
  %290 = load i32, i32* %16, align 4
  %291 = and i32 %290, %289
  store i32 %291, i32* %16, align 4
  %292 = load i32, i32* %17, align 4
  %293 = ashr i32 %292, 1
  %294 = load i32, i32* @SYNQUACER_HSSPI_PCC_CDRS_SHIFT, align 4
  %295 = shl i32 %293, %294
  %296 = load i32, i32* %16, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %16, align 4
  %298 = load i32, i32* %16, align 4
  %299 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %300 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %299, i32 0, i32 6
  %301 = load i64, i64* %300, align 8
  %302 = load i32, i32* %12, align 4
  %303 = call i64 @SYNQUACER_HSSPI_REG_PCC(i32 %302)
  %304 = add nsw i64 %301, %303
  %305 = call i32 @writel(i32 %298, i64 %304)
  %306 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %307 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %306, i32 0, i32 6
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @SYNQUACER_HSSPI_REG_FIFOCFG, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @readl(i64 %310)
  store i32 %311, i32* %16, align 4
  %312 = load i32, i32* @SYNQUACER_HSSPI_FIFOCFG_FIFO_WIDTH_MASK, align 4
  %313 = load i32, i32* @SYNQUACER_HSSPI_FIFOCFG_FIFO_WIDTH_SHIFT, align 4
  %314 = shl i32 %312, %313
  %315 = xor i32 %314, -1
  %316 = load i32, i32* %16, align 4
  %317 = and i32 %316, %315
  store i32 %317, i32* %16, align 4
  %318 = load i32, i32* %11, align 4
  %319 = udiv i32 %318, 8
  %320 = sub i32 %319, 1
  %321 = load i32, i32* @SYNQUACER_HSSPI_FIFOCFG_FIFO_WIDTH_SHIFT, align 4
  %322 = shl i32 %320, %321
  %323 = load i32, i32* %16, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %16, align 4
  %325 = load i32, i32* %16, align 4
  %326 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %327 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @SYNQUACER_HSSPI_REG_FIFOCFG, align 8
  %330 = add nsw i64 %328, %329
  %331 = call i32 @writel(i32 %325, i64 %330)
  %332 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %333 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %332, i32 0, i32 6
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @SYNQUACER_HSSPI_REG_DMSTART, align 8
  %336 = add nsw i64 %334, %335
  %337 = call i32 @readl(i64 %336)
  store i32 %337, i32* %16, align 4
  %338 = load i32, i32* @SYNQUACER_HSSPI_DMTRP_DATA_MASK, align 4
  %339 = load i32, i32* @SYNQUACER_HSSPI_DMTRP_DATA_SHIFT, align 4
  %340 = shl i32 %338, %339
  %341 = xor i32 %340, -1
  %342 = load i32, i32* %16, align 4
  %343 = and i32 %342, %341
  store i32 %343, i32* %16, align 4
  %344 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %345 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %278
  %349 = load i32, i32* @SYNQUACER_HSSPI_DMTRP_DATA_RX, align 4
  %350 = load i32, i32* @SYNQUACER_HSSPI_DMTRP_DATA_SHIFT, align 4
  %351 = shl i32 %349, %350
  %352 = load i32, i32* %16, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %16, align 4
  br label %360

354:                                              ; preds = %278
  %355 = load i32, i32* @SYNQUACER_HSSPI_DMTRP_DATA_TX, align 4
  %356 = load i32, i32* @SYNQUACER_HSSPI_DMTRP_DATA_SHIFT, align 4
  %357 = shl i32 %355, %356
  %358 = load i32, i32* %16, align 4
  %359 = or i32 %358, %357
  store i32 %359, i32* %16, align 4
  br label %360

360:                                              ; preds = %354, %348
  %361 = load i32, i32* @SYNQUACER_HSSPI_DMTRP_BUS_WIDTH_SHIFT, align 4
  %362 = shl i32 3, %361
  %363 = xor i32 %362, -1
  %364 = load i32, i32* %16, align 4
  %365 = and i32 %364, %363
  store i32 %365, i32* %16, align 4
  %366 = load i32, i32* %13, align 4
  %367 = lshr i32 %366, 1
  %368 = load i32, i32* @SYNQUACER_HSSPI_DMTRP_BUS_WIDTH_SHIFT, align 4
  %369 = shl i32 %367, %368
  %370 = load i32, i32* %16, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %16, align 4
  %372 = load i32, i32* %16, align 4
  %373 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %374 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %373, i32 0, i32 6
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @SYNQUACER_HSSPI_REG_DMSTART, align 8
  %377 = add nsw i64 %375, %376
  %378 = call i32 @writel(i32 %372, i64 %377)
  %379 = load i32, i32* %11, align 4
  %380 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %381 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %380, i32 0, i32 2
  store i32 %379, i32* %381, align 8
  %382 = load i32, i32* %10, align 4
  %383 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %384 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %383, i32 0, i32 3
  store i32 %382, i32* %384, align 4
  %385 = load i32, i32* %9, align 4
  %386 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %387 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %386, i32 0, i32 0
  store i32 %385, i32* %387, align 8
  %388 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %389 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %392 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %391, i32 0, i32 4
  store i32 %390, i32* %392, align 8
  %393 = load i32, i32* %13, align 4
  %394 = load %struct.synquacer_spi*, %struct.synquacer_spi** %8, align 8
  %395 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %394, i32 0, i32 1
  store i32 %393, i32* %395, align 4
  store i32 0, i32* %4, align 4
  br label %396

396:                                              ; preds = %360, %122, %109, %39
  %397 = load i32, i32* %4, align 4
  ret i32 %397
}

declare dso_local %struct.synquacer_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @SYNQUACER_HSSPI_REG_PCC(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
