; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_copy_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_xd_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.xd_info }
%struct.xd_info = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Copy page from block 0x%x to block 0x%x\0A\00", align 1
@STATUS_FAIL = common dso_local global i32 0, align 4
@BLK_NOT_FOUND = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@PINGPONG_BUFFER = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@XD_NO_CARD = common dso_local global i32 0, align 4
@XD_RW_ADDR = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_PAGE_CNT = common dso_local global i32 0, align 4
@XD_CHK_DATA_STATUS = common dso_local global i32 0, align 4
@XD_AUTO_CHK_DATA_STATUS = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_READ_PAGES = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@XD_CTL = common dso_local global i32 0, align 4
@XD_ECC1_ERROR = common dso_local global i64 0, align 8
@XD_ECC2_ERROR = common dso_local global i64 0, align 8
@XD_ECC1_UNCORRECTABLE = common dso_local global i64 0, align 8
@XD_ECC2_UNCORRECTABLE = common dso_local global i64 0, align 8
@XD_PAGE_STATUS = common dso_local global i32 0, align 4
@XD_BPG = common dso_local global i32 0, align 4
@XD_BLOCK_STATUS = common dso_local global i32 0, align 4
@XD_GBLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"old block 0x%x ecc error\0A\00", align 1
@XD_TO_ERROR = common dso_local global i32 0, align 4
@XD_WRITE_PAGES = common dso_local global i32 0, align 4
@XD_DAT = common dso_local global i32 0, align 4
@PROGRAM_ERROR = common dso_local global i64 0, align 8
@XD_PRG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i64, i64)* @xd_copy_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xd_copy_page(%struct.rtsx_chip* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xd_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %19 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %18, i32 0, i32 0
  store %struct.xd_info* %19, %struct.xd_info** %12, align 8
  store i64 0, i64* %16, align 8
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %21 = call i32 @rtsx_dev(%struct.rtsx_chip* %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %260

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @BLK_NOT_FOUND, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @BLK_NOT_FOUND, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %39, i32* %6, align 4
  br label %260

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.xd_info*, %struct.xd_info** %12, align 8
  %43 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.xd_info*, %struct.xd_info** %12, align 8
  %52 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %10, align 8
  %57 = add nsw i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = load %struct.xd_info*, %struct.xd_info** %12, align 8
  %60 = call i32 @XD_CLR_BAD_NEWBLK(%struct.xd_info* %59)
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %62 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %63 = load i32, i32* @PINGPONG_BUFFER, align 4
  %64 = call i32 @rtsx_write_register(%struct.rtsx_chip* %61, i32 %62, i32 1, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %40
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %6, align 4
  br label %260

69:                                               ; preds = %40
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %15, align 8
  br label %71

71:                                               ; preds = %254, %69
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %257

75:                                               ; preds = %71
  %76 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %77 = load i32, i32* @XD_CARD, align 4
  %78 = call i64 @detect_card_cd(%struct.rtsx_chip* %76, i32 %77)
  %79 = load i64, i64* @STATUS_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %83 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %82)
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %85 = load i32, i32* @XD_NO_CARD, align 4
  %86 = call i32 @xd_set_err_code(%struct.rtsx_chip* %84, i32 %85)
  %87 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %87, i32* %6, align 4
  br label %260

88:                                               ; preds = %75
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %90 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %89)
  %91 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @XD_RW_ADDR, align 4
  %94 = call i32 @xd_assign_phy_addr(%struct.rtsx_chip* %91, i32 %92, i32 %93)
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %96 = load i32, i32* @WRITE_REG_CMD, align 4
  %97 = load i32, i32* @XD_PAGE_CNT, align 4
  %98 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %95, i32 %96, i32 %97, i32 255, i32 1)
  %99 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %100 = load i32, i32* @WRITE_REG_CMD, align 4
  %101 = load i32, i32* @XD_CHK_DATA_STATUS, align 4
  %102 = load i32, i32* @XD_AUTO_CHK_DATA_STATUS, align 4
  %103 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %99, i32 %100, i32 %101, i32 %102, i32 0)
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %105 = load i32, i32* @WRITE_REG_CMD, align 4
  %106 = load i32, i32* @XD_TRANSFER, align 4
  %107 = load i32, i32* @XD_TRANSFER_START, align 4
  %108 = load i32, i32* @XD_READ_PAGES, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %104, i32 %105, i32 %106, i32 255, i32 %109)
  %111 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %112 = load i32, i32* @CHECK_REG_CMD, align 4
  %113 = load i32, i32* @XD_TRANSFER, align 4
  %114 = load i32, i32* @XD_TRANSFER_END, align 4
  %115 = load i32, i32* @XD_TRANSFER_END, align 4
  %116 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %118 = load i32, i32* @XD_CARD, align 4
  %119 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %117, i32 %118, i32 500)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %188

122:                                              ; preds = %88
  %123 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %124 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %123)
  store i64 0, i64* %16, align 8
  %125 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %126 = load i32, i32* @XD_CTL, align 4
  %127 = call i32 @rtsx_read_register(%struct.rtsx_chip* %125, i32 %126, i64* %16)
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* @XD_ECC1_ERROR, align 8
  %130 = load i64, i64* @XD_ECC2_ERROR, align 8
  %131 = or i64 %129, %130
  %132 = and i64 %128, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %182

134:                                              ; preds = %122
  %135 = call i32 @mdelay(i32 100)
  %136 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %137 = load i32, i32* @XD_CARD, align 4
  %138 = call i64 @detect_card_cd(%struct.rtsx_chip* %136, i32 %137)
  %139 = load i64, i64* @STATUS_SUCCESS, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %143 = load i32, i32* @XD_NO_CARD, align 4
  %144 = call i32 @xd_set_err_code(%struct.rtsx_chip* %142, i32 %143)
  %145 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %145, i32* %6, align 4
  br label %260

146:                                              ; preds = %134
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* @XD_ECC1_ERROR, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* @XD_ECC1_UNCORRECTABLE, align 8
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %151, %146
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* @XD_ECC2_ERROR, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %156
  %162 = load i64, i64* %16, align 8
  %163 = load i64, i64* @XD_ECC2_UNCORRECTABLE, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %161, %151
  %167 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %168 = load i32, i32* @XD_PAGE_STATUS, align 4
  %169 = load i32, i32* @XD_BPG, align 4
  %170 = call i32 @rtsx_write_register(%struct.rtsx_chip* %167, i32 %168, i32 255, i32 %169)
  %171 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %172 = load i32, i32* @XD_BLOCK_STATUS, align 4
  %173 = load i32, i32* @XD_GBLK, align 4
  %174 = call i32 @rtsx_write_register(%struct.rtsx_chip* %171, i32 %172, i32 255, i32 %173)
  %175 = load %struct.xd_info*, %struct.xd_info** %12, align 8
  %176 = call i32 @XD_SET_BAD_OLDBLK(%struct.xd_info* %175)
  %177 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %178 = call i32 @rtsx_dev(%struct.rtsx_chip* %177)
  %179 = load i32, i32* %8, align 4
  %180 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %166, %161, %156
  br label %187

182:                                              ; preds = %122
  %183 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %184 = load i32, i32* @XD_TO_ERROR, align 4
  %185 = call i32 @xd_set_err_code(%struct.rtsx_chip* %183, i32 %184)
  %186 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %186, i32* %6, align 4
  br label %260

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %88
  %189 = load %struct.xd_info*, %struct.xd_info** %12, align 8
  %190 = call i64 @XD_CHK_BAD_OLDBLK(%struct.xd_info* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %194 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %193)
  br label %195

195:                                              ; preds = %192, %188
  %196 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %197 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %196)
  %198 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @XD_RW_ADDR, align 4
  %201 = call i32 @xd_assign_phy_addr(%struct.rtsx_chip* %198, i32 %199, i32 %200)
  %202 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %203 = load i32, i32* @WRITE_REG_CMD, align 4
  %204 = load i32, i32* @XD_PAGE_CNT, align 4
  %205 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %202, i32 %203, i32 %204, i32 255, i32 1)
  %206 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %207 = load i32, i32* @WRITE_REG_CMD, align 4
  %208 = load i32, i32* @XD_TRANSFER, align 4
  %209 = load i32, i32* @XD_TRANSFER_START, align 4
  %210 = load i32, i32* @XD_WRITE_PAGES, align 4
  %211 = or i32 %209, %210
  %212 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %206, i32 %207, i32 %208, i32 255, i32 %211)
  %213 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %214 = load i32, i32* @CHECK_REG_CMD, align 4
  %215 = load i32, i32* @XD_TRANSFER, align 4
  %216 = load i32, i32* @XD_TRANSFER_END, align 4
  %217 = load i32, i32* @XD_TRANSFER_END, align 4
  %218 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %213, i32 %214, i32 %215, i32 %216, i32 %217)
  %219 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %220 = load i32, i32* @XD_CARD, align 4
  %221 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %219, i32 %220, i32 300)
  store i32 %221, i32* %17, align 4
  %222 = load i32, i32* %17, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %249

224:                                              ; preds = %195
  %225 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %226 = call i32 @rtsx_clear_xd_error(%struct.rtsx_chip* %225)
  store i64 0, i64* %16, align 8
  %227 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %228 = load i32, i32* @XD_DAT, align 4
  %229 = call i32 @rtsx_read_register(%struct.rtsx_chip* %227, i32 %228, i64* %16)
  %230 = load i64, i64* %16, align 8
  %231 = load i64, i64* @PROGRAM_ERROR, align 8
  %232 = and i64 %230, %231
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %224
  %235 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @xd_mark_bad_block(%struct.rtsx_chip* %235, i32 %236)
  %238 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %239 = load i32, i32* @XD_PRG_ERROR, align 4
  %240 = call i32 @xd_set_err_code(%struct.rtsx_chip* %238, i32 %239)
  %241 = load %struct.xd_info*, %struct.xd_info** %12, align 8
  %242 = call i32 @XD_SET_BAD_NEWBLK(%struct.xd_info* %241)
  br label %247

243:                                              ; preds = %224
  %244 = load %struct.rtsx_chip*, %struct.rtsx_chip** %7, align 8
  %245 = load i32, i32* @XD_TO_ERROR, align 4
  %246 = call i32 @xd_set_err_code(%struct.rtsx_chip* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %234
  %248 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %248, i32* %6, align 4
  br label %260

249:                                              ; preds = %195
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %13, align 4
  %252 = load i32, i32* %14, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %14, align 4
  br label %254

254:                                              ; preds = %249
  %255 = load i64, i64* %15, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %15, align 8
  br label %71

257:                                              ; preds = %71
  %258 = load i64, i64* @STATUS_SUCCESS, align 8
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %6, align 4
  br label %260

260:                                              ; preds = %257, %247, %182, %141, %81, %67, %38, %28
  %261 = load i32, i32* %6, align 4
  ret i32 %261
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @XD_CLR_BAD_NEWBLK(%struct.xd_info*) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i64 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_clear_xd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_assign_phy_addr(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i64*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @XD_SET_BAD_OLDBLK(%struct.xd_info*) #1

declare dso_local i64 @XD_CHK_BAD_OLDBLK(%struct.xd_info*) #1

declare dso_local i32 @xd_mark_bad_block(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @XD_SET_BAD_NEWBLK(%struct.xd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
