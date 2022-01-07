; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_multiple_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_read_multiple_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, %struct.TYPE_2__*, %struct.xd_info }
%struct.TYPE_2__ = type { i32 }
%struct.xd_info = type { i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@XD_NO_CARD = common dso_local global i32 0, align 4
@XD_RW_ADDR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_CFG = common dso_local global i32 0, align 4
@XD_PPB_TO_SIE = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@RING_BUFFER = common dso_local global i32 0, align 4
@XD_PAGE_CNT = common dso_local global i32 0, align 4
@XD_CHK_DATA_STATUS = common dso_local global i32 0, align 4
@XD_AUTO_CHK_DATA_STATUS = common dso_local global i32 0, align 4
@DMA_512 = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_READ_PAGES = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@XD_PPB_EMPTY = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@XD_TO_ERROR = common dso_local global i32 0, align 4
@XD_PAGE_STATUS = common dso_local global i32 0, align 4
@XD_GPG = common dso_local global i32 0, align 4
@XD_PRG_ERROR = common dso_local global i32 0, align 4
@XD_CTL = common dso_local global i32 0, align 4
@XD_ECC1_ERROR = common dso_local global i32 0, align 4
@XD_ECC1_UNCORRECTABLE = common dso_local global i32 0, align 4
@XD_ECC2_ERROR = common dso_local global i32 0, align 4
@XD_ECC2_UNCORRECTABLE = common dso_local global i32 0, align 4
@XD_ECC_ERROR = common dso_local global i32 0, align 4
@NO_NEW_BLK = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32, i32, i32*, i32*, i32*)* @xd_read_multiple_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_read_multiple_pages(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtsx_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.xd_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %28 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %27, i32 0, i32 2
  store %struct.xd_info* %28, %struct.xd_info** %18, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %8
  br label %293

33:                                               ; preds = %8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sdiv i32 %37, 1000
  store i32 %38, i32* %24, align 4
  %39 = load i32, i32* %12, align 4
  %40 = srem i32 %39, 1000
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %21, align 8
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 1023
  %44 = icmp eq i32 %43, 1023
  br i1 %44, label %45, label %77

45:                                               ; preds = %33
  store i32 0, i32* %26, align 4
  br label %46

46:                                               ; preds = %73, %45
  %47 = load i32, i32* %26, align 4
  %48 = icmp slt i32 %47, 256
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load i32, i32* %26, align 4
  %51 = load %struct.xd_info*, %struct.xd_info** %18, align 8
  %52 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 %50, %53
  store i32 %54, i32* %19, align 4
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @xd_read_redundant(%struct.rtsx_chip* %55, i32 %56, i32* null, i32 0)
  store i32 %57, i32* %25, align 4
  %58 = load i32, i32* %25, align 4
  %59 = load i32, i32* @STATUS_SUCCESS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %76

62:                                               ; preds = %49
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %64 = load i32, i32* @XD_CARD, align 4
  %65 = call i32 @detect_card_cd(%struct.rtsx_chip* %63, i32 %64)
  %66 = load i32, i32* @STATUS_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %70 = load i32, i32* @XD_NO_CARD, align 4
  %71 = call i32 @xd_set_err_code(%struct.rtsx_chip* %69, i32 %70)
  br label %293

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %26, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %26, align 4
  br label %46

76:                                               ; preds = %61, %46
  br label %77

77:                                               ; preds = %76, %33
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.xd_info*, %struct.xd_info** %18, align 8
  %80 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %78, %81
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %19, align 4
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %86 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %85)
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* @XD_RW_ADDR, align 4
  %90 = call i32 @xd_assign_phy_addr(%struct.rtsx_chip* %87, i32 %88, i32 %89)
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %92 = load i32, i32* @WRITE_REG_CMD, align 4
  %93 = load i32, i32* @XD_CFG, align 4
  %94 = load i32, i32* @XD_PPB_TO_SIE, align 4
  %95 = load i32, i32* @XD_PPB_TO_SIE, align 4
  %96 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %98 = load i32, i32* @WRITE_REG_CMD, align 4
  %99 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %100 = load i32, i32* @RING_BUFFER, align 4
  %101 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %97, i32 %98, i32 %99, i32 1, i32 %100)
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %103 = load i32, i32* @WRITE_REG_CMD, align 4
  %104 = load i32, i32* @XD_PAGE_CNT, align 4
  %105 = load i32, i32* %23, align 4
  %106 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %102, i32 %103, i32 %104, i32 255, i32 %105)
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %108 = load i32, i32* @WRITE_REG_CMD, align 4
  %109 = load i32, i32* @XD_CHK_DATA_STATUS, align 4
  %110 = load i32, i32* @XD_AUTO_CHK_DATA_STATUS, align 4
  %111 = load i32, i32* @XD_AUTO_CHK_DATA_STATUS, align 4
  %112 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %114 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %119 = load i32, i32* %23, align 4
  %120 = mul nsw i32 %119, 512
  %121 = load i32, i32* @DMA_512, align 4
  %122 = call i32 @trans_dma_enable(i32 %117, %struct.rtsx_chip* %118, i32 %120, i32 %121)
  %123 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %124 = load i32, i32* @WRITE_REG_CMD, align 4
  %125 = load i32, i32* @XD_TRANSFER, align 4
  %126 = load i32, i32* @XD_TRANSFER_START, align 4
  %127 = load i32, i32* @XD_READ_PAGES, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %123, i32 %124, i32 %125, i32 255, i32 %128)
  %130 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %131 = load i32, i32* @CHECK_REG_CMD, align 4
  %132 = load i32, i32* @XD_TRANSFER, align 4
  %133 = load i32, i32* @XD_TRANSFER_END, align 4
  %134 = load i32, i32* @XD_PPB_EMPTY, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @XD_TRANSFER_END, align 4
  %137 = load i32, i32* @XD_PPB_EMPTY, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %130, i32 %131, i32 %132, i32 %135, i32 %138)
  %140 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %141 = call i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip* %140)
  %142 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %143 = load i32, i32* @XD_CARD, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %23, align 4
  %146 = mul nsw i32 %145, 512
  %147 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %148 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = call i32 @scsi_sg_count(%struct.TYPE_2__* %149)
  %151 = load i32*, i32** %16, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %154 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %155 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @rtsx_transfer_data_partial(%struct.rtsx_chip* %142, i32 %143, i32* %144, i32 %146, i32 %150, i32* %151, i32* %152, i32 %153, i32 %156)
  store i32 %157, i32* %25, align 4
  %158 = load i32, i32* %25, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %77
  %161 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %162 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %161)
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* @ETIMEDOUT, align 4
  %165 = sub nsw i32 0, %164
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %169 = load i32, i32* @XD_TO_ERROR, align 4
  %170 = call i32 @xd_set_err_code(%struct.rtsx_chip* %168, i32 %169)
  br label %293

171:                                              ; preds = %160
  br label %174

172:                                              ; preds = %77
  %173 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %173, i32* %9, align 4
  br label %295

174:                                              ; preds = %171
  %175 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %176 = load i32, i32* @XD_PAGE_STATUS, align 4
  %177 = call i32 @rtsx_read_register(%struct.rtsx_chip* %175, i32 %176, i32* %22)
  store i32 %177, i32* %25, align 4
  %178 = load i32, i32* %25, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %25, align 4
  store i32 %181, i32* %9, align 4
  br label %295

182:                                              ; preds = %174
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* @XD_GPG, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %188 = load i32, i32* @XD_PRG_ERROR, align 4
  %189 = call i32 @xd_set_err_code(%struct.rtsx_chip* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %182
  %191 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %192 = load i32, i32* @XD_CTL, align 4
  %193 = call i32 @rtsx_read_register(%struct.rtsx_chip* %191, i32 %192, i32* %22)
  store i32 %193, i32* %25, align 4
  %194 = load i32, i32* %25, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i32, i32* %25, align 4
  store i32 %197, i32* %9, align 4
  br label %295

198:                                              ; preds = %190
  %199 = load i32, i32* %22, align 4
  %200 = load i32, i32* @XD_ECC1_ERROR, align 4
  %201 = load i32, i32* @XD_ECC1_UNCORRECTABLE, align 4
  %202 = or i32 %200, %201
  %203 = and i32 %199, %202
  %204 = load i32, i32* @XD_ECC1_ERROR, align 4
  %205 = load i32, i32* @XD_ECC1_UNCORRECTABLE, align 4
  %206 = or i32 %204, %205
  %207 = icmp eq i32 %203, %206
  br i1 %207, label %218, label %208

208:                                              ; preds = %198
  %209 = load i32, i32* %22, align 4
  %210 = load i32, i32* @XD_ECC2_ERROR, align 4
  %211 = load i32, i32* @XD_ECC2_UNCORRECTABLE, align 4
  %212 = or i32 %210, %211
  %213 = and i32 %209, %212
  %214 = load i32, i32* @XD_ECC2_ERROR, align 4
  %215 = load i32, i32* @XD_ECC2_UNCORRECTABLE, align 4
  %216 = or i32 %214, %215
  %217 = icmp eq i32 %213, %216
  br i1 %217, label %218, label %292

218:                                              ; preds = %208, %198
  %219 = call i32 @wait_timeout(i32 100)
  %220 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %221 = load i32, i32* @XD_CARD, align 4
  %222 = call i32 @detect_card_cd(%struct.rtsx_chip* %220, i32 %221)
  %223 = load i32, i32* @STATUS_SUCCESS, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %227 = load i32, i32* @XD_NO_CARD, align 4
  %228 = call i32 @xd_set_err_code(%struct.rtsx_chip* %226, i32 %227)
  br label %293

229:                                              ; preds = %218
  %230 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %231 = load i32, i32* @XD_ECC_ERROR, align 4
  %232 = call i32 @xd_set_err_code(%struct.rtsx_chip* %230, i32 %231)
  %233 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %234 = load i32, i32* %24, align 4
  %235 = call i32 @xd_get_unused_block(%struct.rtsx_chip* %233, i32 %234)
  store i32 %235, i32* %20, align 4
  %236 = load i32, i32* %20, align 4
  %237 = load i32, i32* @NO_NEW_BLK, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load %struct.xd_info*, %struct.xd_info** %18, align 8
  %241 = call i32 @XD_CLR_BAD_OLDBLK(%struct.xd_info* %240)
  br label %293

242:                                              ; preds = %229
  %243 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %20, align 4
  %246 = load %struct.xd_info*, %struct.xd_info** %18, align 8
  %247 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, 1
  %250 = call i32 @xd_copy_page(%struct.rtsx_chip* %243, i32 %244, i32 %245, i32 0, i64 %249)
  store i32 %250, i32* %25, align 4
  %251 = load i32, i32* %25, align 4
  %252 = load i32, i32* @STATUS_SUCCESS, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %276

254:                                              ; preds = %242
  %255 = load %struct.xd_info*, %struct.xd_info** %18, align 8
  %256 = call i32 @XD_CHK_BAD_NEWBLK(%struct.xd_info* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %254
  %259 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %260 = load i32, i32* %20, align 4
  %261 = call i32 @xd_erase_block(%struct.rtsx_chip* %259, i32 %260)
  store i32 %261, i32* %25, align 4
  %262 = load i32, i32* %25, align 4
  %263 = load i32, i32* @STATUS_SUCCESS, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %267 = load i32, i32* %20, align 4
  %268 = call i32 @xd_set_unused_block(%struct.rtsx_chip* %266, i32 %267)
  br label %269

269:                                              ; preds = %265, %258
  br label %273

270:                                              ; preds = %254
  %271 = load %struct.xd_info*, %struct.xd_info** %18, align 8
  %272 = call i32 @XD_CLR_BAD_NEWBLK(%struct.xd_info* %271)
  br label %273

273:                                              ; preds = %270, %269
  %274 = load %struct.xd_info*, %struct.xd_info** %18, align 8
  %275 = call i32 @XD_CLR_BAD_OLDBLK(%struct.xd_info* %274)
  br label %293

276:                                              ; preds = %242
  %277 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %278 = load i32, i32* %24, align 4
  %279 = load i64, i64* %21, align 8
  %280 = load i32, i32* %20, align 4
  %281 = and i32 %280, 1023
  %282 = sext i32 %281 to i64
  %283 = call i32 @xd_set_l2p_tbl(%struct.rtsx_chip* %277, i32 %278, i64 %279, i64 %282)
  %284 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %285 = load i32, i32* %11, align 4
  %286 = call i32 @xd_erase_block(%struct.rtsx_chip* %284, i32 %285)
  %287 = load %struct.rtsx_chip*, %struct.rtsx_chip** %10, align 8
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @xd_mark_bad_block(%struct.rtsx_chip* %287, i32 %288)
  %290 = load %struct.xd_info*, %struct.xd_info** %18, align 8
  %291 = call i32 @XD_CLR_BAD_OLDBLK(%struct.xd_info* %290)
  br label %292

292:                                              ; preds = %276, %208
  br label %293

293:                                              ; preds = %292, %273, %239, %225, %167, %68, %32
  %294 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %294, i32* %9, align 4
  br label %295

295:                                              ; preds = %293, %196, %180, %172
  %296 = load i32, i32* %9, align 4
  ret i32 %296
}

declare dso_local i32 @xd_read_redundant(%struct.rtsx_chip*, i32, i32*, i32) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @xd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_assign_phy_addr(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @trans_dma_enable(i32, %struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd_no_wait(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_transfer_data_partial(%struct.rtsx_chip*, i32, i32*, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @scsi_sg_count(%struct.TYPE_2__*) #1

declare dso_local i32 @rtsx_clear_xd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @xd_get_unused_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @XD_CLR_BAD_OLDBLK(%struct.xd_info*) #1

declare dso_local i32 @xd_copy_page(%struct.rtsx_chip*, i32, i32, i32, i64) #1

declare dso_local i32 @XD_CHK_BAD_NEWBLK(%struct.xd_info*) #1

declare dso_local i32 @xd_erase_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @xd_set_unused_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @XD_CLR_BAD_NEWBLK(%struct.xd_info*) #1

declare dso_local i32 @xd_set_l2p_tbl(%struct.rtsx_chip*, i32, i64, i64) #1

declare dso_local i32 @xd_mark_bad_block(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
