; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_txrx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_txrx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.xilinx_spi = type { i32, i64, i32, i32 (i64)*, i64, i32 (i32, i64)*, i32, i32, i32 }

@XSPI_CR_OFFSET = common dso_local global i64 0, align 8
@XSPI_CR_TRANS_INHIBIT = common dso_local global i32 0, align 4
@XIPIF_V123B_IISR_OFFSET = common dso_local global i64 0, align 8
@XIPIF_V123B_GINTR_ENABLE = common dso_local global i32 0, align 4
@XIPIF_V123B_DGIER_OFFSET = common dso_local global i64 0, align 8
@XSPI_SR_TX_EMPTY_MASK = common dso_local global i32 0, align 4
@XSPI_SR_OFFSET = common dso_local global i64 0, align 8
@XSPI_SR_RX_EMPTY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Detected stall. Check C_SPI_MODE and C_SPI_MEMORY\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @xilinx_spi_txrx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_txrx_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.xilinx_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.xilinx_spi* @spi_master_get_devdata(i32 %18)
  store %struct.xilinx_spi* %19, %struct.xilinx_spi** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %24 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %29 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %34 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %38 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %105

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %44 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %105

47:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  %48 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %49 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %48, i32 0, i32 3
  %50 = load i32 (i64)*, i32 (i64)** %49, align 8
  %51 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %52 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 %50(i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %58 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %57, i32 0, i32 5
  %59 = load i32 (i32, i64)*, i32 (i32, i64)** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @XSPI_CR_TRANS_INHIBIT, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %64 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 %59(i32 %62, i64 %67)
  %69 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %70 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %69, i32 0, i32 3
  %71 = load i32 (i64)*, i32 (i64)** %70, align 8
  %72 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %73 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @XIPIF_V123B_IISR_OFFSET, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 %71(i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %47
  %81 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %82 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %81, i32 0, i32 5
  %83 = load i32 (i32, i64)*, i32 (i32, i64)** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %86 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @XIPIF_V123B_IISR_OFFSET, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 %83(i32 %84, i64 %89)
  br label %91

91:                                               ; preds = %80, %47
  %92 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %93 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %92, i32 0, i32 5
  %94 = load i32 (i32, i64)*, i32 (i32, i64)** %93, align 8
  %95 = load i32, i32* @XIPIF_V123B_GINTR_ENABLE, align 4
  %96 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %97 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @XIPIF_V123B_DGIER_OFFSET, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 %94(i32 %95, i64 %100)
  %102 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %103 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %102, i32 0, i32 6
  %104 = call i32 @reinit_completion(i32* %103)
  br label %105

105:                                              ; preds = %91, %41, %2
  br label %106

106:                                              ; preds = %227, %105
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %231

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %112 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @min(i32 %110, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %120, %109
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %12, align 4
  %119 = icmp ne i32 %117, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %122 = call i32 @xilinx_spi_tx(%struct.xilinx_spi* %121)
  br label %116

123:                                              ; preds = %116
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %123
  %127 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %128 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %127, i32 0, i32 5
  %129 = load i32 (i32, i64)*, i32 (i32, i64)** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %132 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 %129(i32 %130, i64 %135)
  %137 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %138 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %137, i32 0, i32 6
  %139 = call i32 @wait_for_completion(i32* %138)
  %140 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %141 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %140, i32 0, i32 5
  %142 = load i32 (i32, i64)*, i32 (i32, i64)** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @XSPI_CR_TRANS_INHIBIT, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %147 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 %142(i32 %145, i64 %150)
  %152 = load i32, i32* @XSPI_SR_TX_EMPTY_MASK, align 4
  store i32 %152, i32* %14, align 4
  br label %163

153:                                              ; preds = %123
  %154 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %155 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %154, i32 0, i32 3
  %156 = load i32 (i64)*, i32 (i64)** %155, align 8
  %157 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %158 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @XSPI_SR_OFFSET, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 %156(i64 %161)
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %153, %126
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %13, align 4
  store i32 10, i32* %15, align 4
  br label %165

165:                                              ; preds = %226, %202, %163
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %227

168:                                              ; preds = %165
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %194

172:                                              ; preds = %168
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %15, align 4
  %175 = icmp ne i32 %173, 0
  br i1 %175, label %194, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @XSPI_SR_TX_EMPTY_MASK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %194, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @XSPI_SR_RX_EMPTY_MASK, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %188 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %187, i32 0, i32 0
  %189 = call i32 @dev_err(i32* %188, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %190 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %191 = call i32 @xspi_init_hw(%struct.xilinx_spi* %190)
  %192 = load i32, i32* @EIO, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %258

194:                                              ; preds = %181, %176, %172, %168
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @XSPI_SR_TX_EMPTY_MASK, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = load i32, i32* %13, align 4
  %201 = icmp sgt i32 %200, 1
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %204 = call i32 @xilinx_spi_rx(%struct.xilinx_spi* %203)
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %13, align 4
  br label %165

207:                                              ; preds = %199, %194
  %208 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %209 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %208, i32 0, i32 3
  %210 = load i32 (i64)*, i32 (i64)** %209, align 8
  %211 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %212 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @XSPI_SR_OFFSET, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 %210(i64 %215)
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* @XSPI_SR_RX_EMPTY_MASK, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %207
  %222 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %223 = call i32 @xilinx_spi_rx(%struct.xilinx_spi* %222)
  %224 = load i32, i32* %13, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %221, %207
  br label %165

227:                                              ; preds = %165
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %7, align 4
  %230 = sub nsw i32 %229, %228
  store i32 %230, i32* %7, align 4
  br label %106

231:                                              ; preds = %106
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %254

234:                                              ; preds = %231
  %235 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %236 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %235, i32 0, i32 5
  %237 = load i32 (i32, i64)*, i32 (i32, i64)** %236, align 8
  %238 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %239 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @XIPIF_V123B_DGIER_OFFSET, align 8
  %242 = add nsw i64 %240, %241
  %243 = call i32 %237(i32 0, i64 %242)
  %244 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %245 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %244, i32 0, i32 5
  %246 = load i32 (i32, i64)*, i32 (i32, i64)** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %249 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @XSPI_CR_OFFSET, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 %246(i32 %247, i64 %252)
  br label %254

254:                                              ; preds = %234, %231
  %255 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %256 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %3, align 4
  br label %258

258:                                              ; preds = %254, %186
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local %struct.xilinx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xilinx_spi_tx(%struct.xilinx_spi*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @xspi_init_hw(%struct.xilinx_spi*) #1

declare dso_local i32 @xilinx_spi_rx(%struct.xilinx_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
