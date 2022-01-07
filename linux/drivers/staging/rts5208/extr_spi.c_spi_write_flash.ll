; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_write_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_spi.c_spi_write_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.rtsx_chip = type { i32 }

@SPI_NO_ERR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SPI_HW_ERR = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@BYTE_PROGRAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@STATUS_ERROR = common dso_local global i32 0, align 4
@SPI_WREN = common dso_local global i32 0, align 4
@FROM_XFER_BUF = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i32 0, align 4
@AAI_PROGRAM = common dso_local global i32 0, align 4
@SPI_WRDI = common dso_local global i32 0, align 4
@PAGE_PROGRAM = common dso_local global i32 0, align 4
@SF_PAGE_LEN = common dso_local global i32 0, align 4
@STATUS_NOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_256 = common dso_local global i32 0, align 4
@SPI_INVALID_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_write_flash(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %17 = load i32, i32* @SPI_NO_ERR, align 4
  %18 = call i32 @spi_set_err_code(%struct.rtsx_chip* %16, i32 %17)
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %29, %35
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %36, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %48, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 9
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %61 = call i32 @spi_set_init_para(%struct.rtsx_chip* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %2
  %66 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %67 = load i32, i32* @SPI_HW_ERR, align 4
  %68 = call i32 @spi_set_err_code(%struct.rtsx_chip* %66, i32 %67)
  %69 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %69, i32* %3, align 4
  br label %351

70:                                               ; preds = %2
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BYTE_PROGRAM, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %150

74:                                               ; preds = %70
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32* @kmalloc(i32 4, i32 %75)
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %80, i32* %3, align 4
  br label %351

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %142, %81
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %147

85:                                               ; preds = %82
  %86 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %87 = load i32, i32* @SPI_WREN, align 4
  %88 = call i32 @sf_enable_write(%struct.rtsx_chip* %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @STATUS_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %95, i32* %3, align 4
  br label %351

96:                                               ; preds = %85
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %99 = load i32, i32* @FROM_XFER_BUF, align 4
  %100 = call i32 @rtsx_stor_access_xfer_buf(i32* %97, i32 1, %struct.scsi_cmnd* %98, i32* %12, i32* %13, i32 %99)
  %101 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %102 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %101)
  %103 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %104 = load i32, i32* @WRITE_REG_CMD, align 4
  %105 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %106 = load i32, i32* @PINGPONG_BUFFER, align 4
  %107 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %103, i32 %104, i32 %105, i32 1, i32 %106)
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %109 = load i32, i32* @WRITE_REG_CMD, align 4
  %110 = load i32, i32* @PPBUF_BASE2, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %108, i32 %109, i32 %110, i32 255, i32 %113)
  %115 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @sf_program(%struct.rtsx_chip* %115, i32 %116, i32 1, i32 %117, i32 1)
  %119 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %120 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %119, i32 0, i32 100)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %96
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @kfree(i32* %124)
  %126 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %127 = call i32 @rtsx_clear_spi_error(%struct.rtsx_chip* %126)
  %128 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %129 = load i32, i32* @SPI_HW_ERR, align 4
  %130 = call i32 @spi_set_err_code(%struct.rtsx_chip* %128, i32 %129)
  %131 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %131, i32* %3, align 4
  br label %351

132:                                              ; preds = %96
  %133 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %134 = call i32 @sf_polling_status(%struct.rtsx_chip* %133, i32 100)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @STATUS_SUCCESS, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @kfree(i32* %139)
  %141 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %141, i32* %3, align 4
  br label %351

142:                                              ; preds = %132
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %10, align 4
  br label %82

147:                                              ; preds = %82
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @kfree(i32* %148)
  br label %349

150:                                              ; preds = %70
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @AAI_PROGRAM, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %251

154:                                              ; preds = %150
  store i32 1, i32* %14, align 4
  %155 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %156 = load i32, i32* @SPI_WREN, align 4
  %157 = call i32 @sf_enable_write(%struct.rtsx_chip* %155, i32 %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @STATUS_SUCCESS, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %162, i32* %3, align 4
  br label %351

163:                                              ; preds = %154
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call i32* @kmalloc(i32 4, i32 %164)
  store i32* %165, i32** %11, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %169, i32* %3, align 4
  br label %351

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %228, %170
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %231

174:                                              ; preds = %171
  %175 = load i32*, i32** %11, align 8
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %177 = load i32, i32* @FROM_XFER_BUF, align 4
  %178 = call i32 @rtsx_stor_access_xfer_buf(i32* %175, i32 1, %struct.scsi_cmnd* %176, i32* %12, i32* %13, i32 %177)
  %179 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %180 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %179)
  %181 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %182 = load i32, i32* @WRITE_REG_CMD, align 4
  %183 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %184 = load i32, i32* @PINGPONG_BUFFER, align 4
  %185 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %181, i32 %182, i32 %183, i32 1, i32 %184)
  %186 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %187 = load i32, i32* @WRITE_REG_CMD, align 4
  %188 = load i32, i32* @PPBUF_BASE2, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %186, i32 %187, i32 %188, i32 255, i32 %191)
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %174
  %196 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @sf_program(%struct.rtsx_chip* %196, i32 %197, i32 1, i32 %198, i32 1)
  store i32 0, i32* %14, align 4
  br label %204

200:                                              ; preds = %174
  %201 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @sf_program(%struct.rtsx_chip* %201, i32 %202, i32 0, i32 0, i32 1)
  br label %204

204:                                              ; preds = %200, %195
  %205 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %206 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %205, i32 0, i32 100)
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %204
  %210 = load i32*, i32** %11, align 8
  %211 = call i32 @kfree(i32* %210)
  %212 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %213 = call i32 @rtsx_clear_spi_error(%struct.rtsx_chip* %212)
  %214 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %215 = load i32, i32* @SPI_HW_ERR, align 4
  %216 = call i32 @spi_set_err_code(%struct.rtsx_chip* %214, i32 %215)
  %217 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %217, i32* %3, align 4
  br label %351

218:                                              ; preds = %204
  %219 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %220 = call i32 @sf_polling_status(%struct.rtsx_chip* %219, i32 100)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @STATUS_SUCCESS, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = load i32*, i32** %11, align 8
  %226 = call i32 @kfree(i32* %225)
  %227 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %227, i32* %3, align 4
  br label %351

228:                                              ; preds = %218
  %229 = load i32, i32* %10, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %10, align 4
  br label %171

231:                                              ; preds = %171
  %232 = load i32*, i32** %11, align 8
  %233 = call i32 @kfree(i32* %232)
  %234 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %235 = load i32, i32* @SPI_WRDI, align 4
  %236 = call i32 @sf_disable_write(%struct.rtsx_chip* %234, i32 %235)
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @STATUS_SUCCESS, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %231
  %241 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %241, i32* %3, align 4
  br label %351

242:                                              ; preds = %231
  %243 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %244 = call i32 @sf_polling_status(%struct.rtsx_chip* %243, i32 100)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @STATUS_SUCCESS, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %242
  %249 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %249, i32* %3, align 4
  br label %351

250:                                              ; preds = %242
  br label %348

251:                                              ; preds = %150
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* @PAGE_PROGRAM, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %342

255:                                              ; preds = %251
  %256 = load i32, i32* @SF_PAGE_LEN, align 4
  %257 = load i32, i32* @GFP_KERNEL, align 4
  %258 = call i32* @kmalloc(i32 %256, i32 %257)
  store i32* %258, i32** %11, align 8
  %259 = load i32*, i32** %11, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %255
  %262 = load i32, i32* @STATUS_NOMEM, align 4
  store i32 %262, i32* %3, align 4
  br label %351

263:                                              ; preds = %255
  br label %264

264:                                              ; preds = %332, %263
  %265 = load i32, i32* %10, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %339

267:                                              ; preds = %264
  %268 = load i32, i32* @SF_PAGE_LEN, align 4
  %269 = load i32, i32* %9, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* %15, align 4
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %10, align 4
  %273 = icmp sgt i32 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %267
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %15, align 4
  br label %276

276:                                              ; preds = %274, %267
  %277 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %278 = load i32, i32* @SPI_WREN, align 4
  %279 = call i32 @sf_enable_write(%struct.rtsx_chip* %277, i32 %278)
  store i32 %279, i32* %6, align 4
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* @STATUS_SUCCESS, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %276
  %284 = load i32*, i32** %11, align 8
  %285 = call i32 @kfree(i32* %284)
  %286 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %286, i32* %3, align 4
  br label %351

287:                                              ; preds = %276
  %288 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %289 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %288)
  %290 = load i32, i32* @DMA_TO_DEVICE, align 4
  %291 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %292 = load i32, i32* @DMA_256, align 4
  %293 = call i32 @trans_dma_enable(i32 %290, %struct.rtsx_chip* %291, i32 256, i32 %292)
  %294 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @sf_program(%struct.rtsx_chip* %294, i32 %295, i32 1, i32 %296, i32 %297)
  %299 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %300 = call i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %299)
  %301 = load i32*, i32** %11, align 8
  %302 = load i32, i32* %15, align 4
  %303 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %304 = load i32, i32* @FROM_XFER_BUF, align 4
  %305 = call i32 @rtsx_stor_access_xfer_buf(i32* %301, i32 %302, %struct.scsi_cmnd* %303, i32* %12, i32* %13, i32 %304)
  %306 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %307 = load i32*, i32** %11, align 8
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* @DMA_TO_DEVICE, align 4
  %310 = call i32 @rtsx_transfer_data(%struct.rtsx_chip* %306, i32 0, i32* %307, i32 %308, i32 0, i32 %309, i32 100)
  store i32 %310, i32* %6, align 4
  %311 = load i32, i32* %6, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %287
  %314 = load i32*, i32** %11, align 8
  %315 = call i32 @kfree(i32* %314)
  %316 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %317 = call i32 @rtsx_clear_spi_error(%struct.rtsx_chip* %316)
  %318 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %319 = load i32, i32* @SPI_HW_ERR, align 4
  %320 = call i32 @spi_set_err_code(%struct.rtsx_chip* %318, i32 %319)
  %321 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %321, i32* %3, align 4
  br label %351

322:                                              ; preds = %287
  %323 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %324 = call i32 @sf_polling_status(%struct.rtsx_chip* %323, i32 100)
  store i32 %324, i32* %6, align 4
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* @STATUS_SUCCESS, align 4
  %327 = icmp ne i32 %325, %326
  br i1 %327, label %328, label %332

328:                                              ; preds = %322
  %329 = load i32*, i32** %11, align 8
  %330 = call i32 @kfree(i32* %329)
  %331 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %331, i32* %3, align 4
  br label %351

332:                                              ; preds = %322
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* %9, align 4
  %336 = load i32, i32* %15, align 4
  %337 = load i32, i32* %10, align 4
  %338 = sub nsw i32 %337, %336
  store i32 %338, i32* %10, align 4
  br label %264

339:                                              ; preds = %264
  %340 = load i32*, i32** %11, align 8
  %341 = call i32 @kfree(i32* %340)
  br label %347

342:                                              ; preds = %251
  %343 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %344 = load i32, i32* @SPI_INVALID_COMMAND, align 4
  %345 = call i32 @spi_set_err_code(%struct.rtsx_chip* %343, i32 %344)
  %346 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %346, i32* %3, align 4
  br label %351

347:                                              ; preds = %339
  br label %348

348:                                              ; preds = %347, %250
  br label %349

349:                                              ; preds = %348, %147
  %350 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %350, i32* %3, align 4
  br label %351

351:                                              ; preds = %349, %342, %328, %313, %283, %261, %248, %240, %224, %209, %168, %161, %138, %123, %92, %79, %65
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local i32 @spi_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @spi_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @sf_enable_write(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @rtsx_stor_access_xfer_buf(i32*, i32, %struct.scsi_cmnd*, i32*, i32*, i32) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @sf_program(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_clear_spi_error(%struct.rtsx_chip*) #1

declare dso_local i32 @sf_polling_status(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sf_disable_write(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @trans_dma_enable(i32, %struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_transfer_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
