; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-falcon.c_falcon_sflash_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-falcon.c_falcon_sflash_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.spi_transfer = type { i32*, i32*, i32 }
%struct.falcon_sflash = type { i32 }

@FALCON_SPI_XFER_BEGIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"BEGIN without tx data!\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@SFCMD_CS_OFFSET = common dso_local global i32 0, align 4
@SFCMD_CS_MASK = common dso_local global i32 0, align 4
@SFCMD_KEEP_CS_KEEP_SELECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"write cmd %02X\0A\00", align 1
@SFCMD_OPC_MASK = common dso_local global i32 0, align 4
@FALCON_SPI_XFER_END = common dso_local global i64 0, align 8
@SFCMD_ALEN_MASK = common dso_local global i32 0, align 4
@SFCMD_DUMLEN_MASK = common dso_local global i32 0, align 4
@SFCMD_ALEN_OFFSET = common dso_local global i32 0, align 4
@SFCMD_DUMLEN_OFFSET = common dso_local global i32 0, align 4
@SFADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"wr %02X, alen=%d (addr=%06X) dlen=%d\0A\00", align 1
@SFCMD_DIR_WRITE = common dso_local global i32 0, align 4
@SFDATA = common dso_local global i32 0, align 4
@SFCMD_DLEN_OFFSET = common dso_local global i32 0, align 4
@SFCMD = common dso_local global i32 0, align 4
@SFSTAT = common dso_local global i32 0, align 4
@SFSTAT_CMD_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"SFSTAT: CMD_ERR\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" (%x)\0A\00", align 1
@EBADE = common dso_local global i32 0, align 4
@SFSTAT_CMD_PEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"SFSTAT: CMD_ERR (%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_sflash_xfer(%struct.spi_device* %0, %struct.spi_transfer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.falcon_sflash*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.falcon_sflash* @spi_master_get_devdata(i32 %22)
  store %struct.falcon_sflash* %23, %struct.falcon_sflash** %9, align 8
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 8, %32
  %34 = add nsw i32 %33, 7
  %35 = sdiv i32 %34, 8
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %387, %3
  %37 = load i32, i32* %17, align 4
  switch i32 %37, label %386 [
    i32 0, label %38
    i32 1, label %110
    i32 2, label %192
    i32 3, label %259
    i32 4, label %354
    i32 5, label %385
  ]

38:                                               ; preds = %36
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @FALCON_SPI_XFER_BEGIN, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %38
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODATA, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %391

51:                                               ; preds = %43
  %52 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %53 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SFCMD_CS_OFFSET, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @SFCMD_CS_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %60 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @SFCMD_KEEP_CS_KEEP_SELECTED, align 4
  %62 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %63 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %69 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, -1
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %51
  store i32 1, i32* %17, align 4
  br label %386

79:                                               ; preds = %51
  %80 = load %struct.device*, %struct.device** %8, align 8
  %81 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %82 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SFCMD_OPC_MASK, align 4
  %85 = and i32 %83, %84
  %86 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %38
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 2, i32* %17, align 4
  br label %386

95:                                               ; preds = %91, %88
  %96 = load i32*, i32** %11, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 3, i32* %17, align 4
  br label %386

102:                                              ; preds = %98, %95
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @FALCON_SPI_XFER_END, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 4, i32* %17, align 4
  br label %109

108:                                              ; preds = %102
  store i32 5, i32* %17, align 4
  br label %109

109:                                              ; preds = %108, %107
  br label %386

110:                                              ; preds = %36
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %140, %110
  %112 = load i32, i32* %12, align 4
  %113 = icmp ugt i32 %112, 0
  br i1 %113, label %114, label %143

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = icmp ult i32 %115, 3
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* %16, align 4
  %119 = shl i32 %118, 8
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %10, align 8
  %122 = load i32, i32* %120, align 4
  %123 = or i32 %119, %122
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %14, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %140

126:                                              ; preds = %114
  %127 = load i32, i32* %15, align 4
  %128 = icmp ult i32 %127, 15
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %15, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %10, align 8
  br label %139

138:                                              ; preds = %129, %126
  br label %143

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %117
  %141 = load i32, i32* %12, align 4
  %142 = add i32 %141, -1
  store i32 %142, i32* %12, align 4
  br label %111

143:                                              ; preds = %138, %111
  %144 = load i32, i32* @SFCMD_ALEN_MASK, align 4
  %145 = load i32, i32* @SFCMD_DUMLEN_MASK, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %149 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @SFCMD_ALEN_OFFSET, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* @SFCMD_DUMLEN_OFFSET, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %154, %157
  %159 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %160 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp ugt i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %143
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* @SFADDR, align 4
  %168 = call i32 @ltq_ebu_w32(i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %143
  %170 = load %struct.device*, %struct.device** %8, align 8
  %171 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %172 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @SFCMD_OPC_MASK, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %15, align 4
  %179 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %170, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %12, align 4
  %181 = icmp ugt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %169
  store i32 2, i32* %17, align 4
  br label %191

183:                                              ; preds = %169
  %184 = load i64, i64* %7, align 8
  %185 = load i64, i64* @FALCON_SPI_XFER_END, align 8
  %186 = and i64 %184, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  store i32 4, i32* %17, align 4
  br label %190

189:                                              ; preds = %183
  store i32 5, i32* %17, align 4
  br label %190

190:                                              ; preds = %189, %188
  br label %191

191:                                              ; preds = %190, %182
  br label %386

192:                                              ; preds = %36
  %193 = load i32, i32* @SFCMD_DIR_WRITE, align 4
  %194 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %195 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %198

198:                                              ; preds = %255, %192
  %199 = load i32, i32* %12, align 4
  %200 = add i32 %199, -1
  store i32 %200, i32* %12, align 4
  %201 = icmp ne i32 %199, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %198
  %203 = load i32*, i32** %10, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %10, align 8
  %205 = load i32, i32* %203, align 4
  %206 = load i32, i32* %13, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %13, align 4
  %208 = mul i32 8, %206
  %209 = shl i32 %205, %208
  %210 = load i32, i32* %16, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %16, align 4
  br label %212

212:                                              ; preds = %202, %198
  %213 = load i64, i64* %7, align 8
  %214 = load i64, i64* @FALCON_SPI_XFER_END, align 8
  %215 = and i64 %213, %214
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load i32, i32* @SFCMD_KEEP_CS_KEEP_SELECTED, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %224 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %220, %217, %212
  %228 = load i32, i32* %13, align 4
  %229 = icmp eq i32 %228, 4
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %12, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %254

233:                                              ; preds = %230, %227
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* @SFDATA, align 4
  %236 = call i32 @ltq_ebu_w32(i32 %234, i32 %235)
  %237 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %238 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* @SFCMD_DLEN_OFFSET, align 4
  %242 = shl i32 %240, %241
  %243 = or i32 %239, %242
  %244 = load i32, i32* @SFCMD, align 4
  %245 = call i32 @ltq_ebu_w32(i32 %243, i32 %244)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %246 = load i32, i32* @SFCMD_ALEN_MASK, align 4
  %247 = load i32, i32* @SFCMD_DUMLEN_MASK, align 4
  %248 = or i32 %246, %247
  %249 = xor i32 %248, -1
  %250 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %251 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %252, %249
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %233, %230
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %12, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %198, label %258

258:                                              ; preds = %255
  store i32 5, i32* %17, align 4
  br label %386

259:                                              ; preds = %36
  %260 = load i32, i32* @SFCMD_DIR_WRITE, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %263 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %350, %259
  %267 = load i64, i64* %7, align 8
  %268 = load i64, i64* @FALCON_SPI_XFER_END, align 8
  %269 = and i64 %267, %268
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %266
  %272 = load i32, i32* %12, align 4
  %273 = icmp ule i32 %272, 4
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load i32, i32* @SFCMD_KEEP_CS_KEEP_SELECTED, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %278 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, %276
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %274, %271, %266
  %282 = load i32, i32* %12, align 4
  %283 = icmp ugt i32 %282, 4
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  br label %287

285:                                              ; preds = %281
  %286 = load i32, i32* %12, align 4
  br label %287

287:                                              ; preds = %285, %284
  %288 = phi i32 [ 4, %284 ], [ %286, %285 ]
  store i32 %288, i32* %13, align 4
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* %12, align 4
  %291 = sub i32 %290, %289
  store i32 %291, i32* %12, align 4
  %292 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %293 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* @SFCMD_DLEN_OFFSET, align 4
  %297 = shl i32 %295, %296
  %298 = or i32 %294, %297
  %299 = load i32, i32* @SFCMD, align 4
  %300 = call i32 @ltq_ebu_w32(i32 %298, i32 %299)
  %301 = load i32, i32* @SFCMD_ALEN_MASK, align 4
  %302 = load i32, i32* @SFCMD_DUMLEN_MASK, align 4
  %303 = or i32 %301, %302
  %304 = xor i32 %303, -1
  %305 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %306 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = and i32 %307, %304
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %328, %287
  %310 = load i32, i32* @SFSTAT, align 4
  %311 = call i32 @ltq_ebu_r32(i32 %310)
  store i32 %311, i32* %16, align 4
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* @SFSTAT_CMD_ERR, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %327

316:                                              ; preds = %309
  %317 = load %struct.device*, %struct.device** %8, align 8
  %318 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %317, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %319 = load %struct.device*, %struct.device** %8, align 8
  %320 = load i32, i32* %16, align 4
  %321 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* @SFSTAT_CMD_ERR, align 4
  %323 = load i32, i32* @SFSTAT, align 4
  %324 = call i32 @ltq_ebu_w32(i32 %322, i32 %323)
  %325 = load i32, i32* @EBADE, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %4, align 4
  br label %391

327:                                              ; preds = %309
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* @SFSTAT_CMD_PEND, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %309, label %333

333:                                              ; preds = %328
  %334 = load i32, i32* @SFDATA, align 4
  %335 = call i32 @ltq_ebu_r32(i32 %334)
  store i32 %335, i32* %16, align 4
  br label %336

336:                                              ; preds = %346, %333
  %337 = load i32, i32* %16, align 4
  %338 = and i32 %337, 255
  %339 = load i32*, i32** %11, align 8
  store i32 %338, i32* %339, align 4
  %340 = load i32*, i32** %11, align 8
  %341 = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %341, i32** %11, align 8
  %342 = load i32, i32* %16, align 4
  %343 = ashr i32 %342, 8
  store i32 %343, i32* %16, align 4
  %344 = load i32, i32* %13, align 4
  %345 = add i32 %344, -1
  store i32 %345, i32* %13, align 4
  br label %346

346:                                              ; preds = %336
  %347 = load i32, i32* %13, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %336, label %349

349:                                              ; preds = %346
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %12, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %266, label %353

353:                                              ; preds = %350
  store i32 5, i32* %17, align 4
  br label %386

354:                                              ; preds = %36
  %355 = load i32, i32* @SFCMD_KEEP_CS_KEEP_SELECTED, align 4
  %356 = xor i32 %355, -1
  %357 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %358 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, %356
  store i32 %360, i32* %358, align 4
  %361 = load %struct.falcon_sflash*, %struct.falcon_sflash** %9, align 8
  %362 = getelementptr inbounds %struct.falcon_sflash, %struct.falcon_sflash* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @SFCMD_DLEN_OFFSET, align 4
  %365 = shl i32 0, %364
  %366 = or i32 %363, %365
  %367 = load i32, i32* @SFCMD, align 4
  %368 = call i32 @ltq_ebu_w32(i32 %366, i32 %367)
  %369 = load i32, i32* @SFSTAT, align 4
  %370 = call i32 @ltq_ebu_r32(i32 %369)
  store i32 %370, i32* %16, align 4
  %371 = load i32, i32* %16, align 4
  %372 = load i32, i32* @SFSTAT_CMD_ERR, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %384

375:                                              ; preds = %354
  %376 = load %struct.device*, %struct.device** %8, align 8
  %377 = load i32, i32* %16, align 4
  %378 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %376, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %377)
  %379 = load i32, i32* @SFSTAT_CMD_ERR, align 4
  %380 = load i32, i32* @SFSTAT, align 4
  %381 = call i32 @ltq_ebu_w32(i32 %379, i32 %380)
  %382 = load i32, i32* @EBADE, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %4, align 4
  br label %391

384:                                              ; preds = %354
  store i32 5, i32* %17, align 4
  br label %386

385:                                              ; preds = %36
  br label %386

386:                                              ; preds = %36, %385, %384, %353, %258, %191, %109, %101, %94, %78
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %17, align 4
  %389 = icmp ne i32 %388, 5
  br i1 %389, label %36, label %390

390:                                              ; preds = %387
  store i32 0, i32* %4, align 4
  br label %391

391:                                              ; preds = %390, %375, %316, %46
  %392 = load i32, i32* %4, align 4
  ret i32 %392
}

declare dso_local %struct.falcon_sflash* @spi_master_get_devdata(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @ltq_ebu_w32(i32, i32) #1

declare dso_local i32 @ltq_ebu_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
