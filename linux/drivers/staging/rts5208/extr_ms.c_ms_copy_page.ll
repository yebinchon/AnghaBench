; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_copy_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_ms_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32 }

@MS_EXTRA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Copy page from 0x%x to 0x%x, logical block is 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"start_page = %d, end_page = %d\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@PPBUF_BASE2 = common dso_local global i32 0, align 4
@BUF_FULL = common dso_local global i32 0, align 4
@CLEAR_BUF = common dso_local global i32 0, align 4
@WAIT_INT = common dso_local global i32 0, align 4
@GET_INT = common dso_local global i32 0, align 4
@NO_WAIT_INT = common dso_local global i32 0, align 4
@INT_REG_CED = common dso_local global i32 0, align 4
@MS_FLASH_WRITE_ERROR = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@MS_NO_CARD = common dso_local global i32 0, align 4
@OverwriteFlag = common dso_local global i32 0, align 4
@SystemParm = common dso_local global i32 0, align 4
@MS_NO_ERROR = common dso_local global i32 0, align 4
@WRITE_REG = common dso_local global i32 0, align 4
@BLOCK_READ = common dso_local global i32 0, align 4
@INT_REG_CMDNK = common dso_local global i32 0, align 4
@MS_CMD_NK = common dso_local global i32 0, align 4
@INT_REG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Uncorrectable error\0A\00", align 1
@MS_TM_NORMAL_READ = common dso_local global i32 0, align 4
@READ_PAGE_DATA = common dso_local global i32 0, align 4
@setPS_NG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"page %d : extra[0] = 0x%x\0A\00", align 1
@setPS_Error = common dso_local global i32 0, align 4
@MS_MAX_RETRY_COUNT = common dso_local global i32 0, align 4
@MS_TM_NORMAL_WRITE = common dso_local global i32 0, align 4
@WRITE_PAGE_DATA = common dso_local global i32 0, align 4
@INT_REG_BREQ = common dso_local global i32 0, align 4
@MS_BREQ_ERROR = common dso_local global i32 0, align 4
@BLOCK_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32, i32, i32)* @ms_copy_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_copy_page(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtsx_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ms_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [16 x i32], align 16
  %24 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %26 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %25, i32 0, i32 0
  store %struct.ms_info* %26, %struct.ms_info** %14, align 8
  store i32 0, i32* %15, align 4
  %27 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %18, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %32 = call i32 @rtsx_dev(%struct.rtsx_chip* %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %38 = call i32 @rtsx_dev(%struct.rtsx_chip* %37)
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %45 = call i32 @ms_read_extra_data(%struct.rtsx_chip* %42, i32 %43, i32 0, i32* %30, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @STATUS_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %6
  %50 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %50, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

51:                                               ; preds = %6
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %53 = call i32 @ms_read_status_reg(%struct.rtsx_chip* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %58, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

59:                                               ; preds = %51
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %61 = load i32, i32* @PPBUF_BASE2, align 4
  %62 = call i32 @rtsx_read_register(%struct.rtsx_chip* %60, i32 %61, i32* %20)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

67:                                               ; preds = %59
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* @BUF_FULL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %67
  %73 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %74 = load i32, i32* @CLEAR_BUF, align 4
  %75 = load i32, i32* @WAIT_INT, align 4
  %76 = call i32 @ms_send_cmd(%struct.rtsx_chip* %73, i32 %74, i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @STATUS_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %81, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

82:                                               ; preds = %72
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %84 = load i32, i32* @GET_INT, align 4
  %85 = load i32, i32* @NO_WAIT_INT, align 4
  %86 = call i32 @ms_read_bytes(%struct.rtsx_chip* %83, i32 %84, i32 1, i32 %85, i32* %20, i32 1)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @STATUS_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %91, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

92:                                               ; preds = %82
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* @INT_REG_CED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %99 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %100 = call i32 @ms_set_err_code(%struct.rtsx_chip* %98, i32 %99)
  %101 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %101, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %67
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %21, align 4
  br label %105

105:                                              ; preds = %528, %103
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %531

109:                                              ; preds = %105
  %110 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %111 = load i32, i32* @MS_CARD, align 4
  %112 = call i32 @detect_card_cd(%struct.rtsx_chip* %110, i32 %111)
  %113 = load i32, i32* @STATUS_SUCCESS, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %117 = load i32, i32* @MS_NO_CARD, align 4
  %118 = call i32 @ms_set_err_code(%struct.rtsx_chip* %116, i32 %117)
  %119 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %119, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

120:                                              ; preds = %109
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %125 = call i32 @ms_read_extra_data(%struct.rtsx_chip* %121, i32 %122, i32 %123, i32* %30, i32 %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* @STATUS_SUCCESS, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %130, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

131:                                              ; preds = %120
  %132 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %133 = load i32, i32* @OverwriteFlag, align 4
  %134 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %135 = load i32, i32* @SystemParm, align 4
  %136 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %132, i32 %133, i32 %134, i32 %135, i32 6)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @STATUS_SUCCESS, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %141, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

142:                                              ; preds = %131
  %143 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %144 = load i32, i32* @MS_NO_ERROR, align 4
  %145 = call i32 @ms_set_err_code(%struct.rtsx_chip* %143, i32 %144)
  %146 = load %struct.ms_info*, %struct.ms_info** %14, align 8
  %147 = call i64 @CHK_MS4BIT(%struct.ms_info* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  store i32 136, i32* %150, align 16
  br label %153

151:                                              ; preds = %142
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  store i32 128, i32* %152, align 16
  br label %153

153:                                              ; preds = %151, %149
  %154 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 1
  store i32 0, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = ashr i32 %155, 8
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 2
  store i32 %156, i32* %157, align 8
  %158 = load i32, i32* %9, align 4
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 3
  store i32 %158, i32* %159, align 4
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 4
  store i32 32, i32* %160, align 16
  %161 = load i32, i32* %21, align 4
  %162 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 5
  store i32 %161, i32* %162, align 4
  %163 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %164 = load i32, i32* @WRITE_REG, align 4
  %165 = load i32, i32* @NO_WAIT_INT, align 4
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %167 = call i32 @ms_write_bytes(%struct.rtsx_chip* %163, i32 %164, i32 6, i32 %165, i32* %166, i32 6)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* @STATUS_SUCCESS, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %153
  %172 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %172, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

173:                                              ; preds = %153
  %174 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %175 = load i32, i32* @BLOCK_READ, align 4
  %176 = load i32, i32* @WAIT_INT, align 4
  %177 = call i32 @ms_send_cmd(%struct.rtsx_chip* %174, i32 %175, i32 %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @STATUS_SUCCESS, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %182, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

183:                                              ; preds = %173
  %184 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %185 = load i32, i32* @MS_NO_ERROR, align 4
  %186 = call i32 @ms_set_err_code(%struct.rtsx_chip* %184, i32 %185)
  %187 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %188 = load i32, i32* @GET_INT, align 4
  %189 = load i32, i32* @NO_WAIT_INT, align 4
  %190 = call i32 @ms_read_bytes(%struct.rtsx_chip* %187, i32 %188, i32 1, i32 %189, i32* %20, i32 1)
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* @STATUS_SUCCESS, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %195, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

196:                                              ; preds = %183
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* @INT_REG_CMDNK, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %203 = load i32, i32* @MS_CMD_NK, align 4
  %204 = call i32 @ms_set_err_code(%struct.rtsx_chip* %202, i32 %203)
  %205 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %205, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

206:                                              ; preds = %196
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* @INT_REG_CED, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %312

211:                                              ; preds = %206
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* @INT_REG_ERR, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %301

216:                                              ; preds = %211
  %217 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %218 = call i32 @ms_read_status_reg(%struct.rtsx_chip* %217)
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* @STATUS_SUCCESS, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  store i32 1, i32* %15, align 4
  %223 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %224 = call i32 @rtsx_dev(%struct.rtsx_chip* %223)
  %225 = call i32 (i32, i8*, ...) @dev_dbg(i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %227

226:                                              ; preds = %216
  store i32 0, i32* %15, align 4
  br label %227

227:                                              ; preds = %226, %222
  %228 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %229 = load i32, i32* @MS_TM_NORMAL_READ, align 4
  %230 = load i32, i32* @READ_PAGE_DATA, align 4
  %231 = load i32, i32* @NO_WAIT_INT, align 4
  %232 = call i32 @ms_transfer_tpc(%struct.rtsx_chip* %228, i32 %229, i32 %230, i32 0, i32 %231)
  store i32 %232, i32* %16, align 4
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* @STATUS_SUCCESS, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %237, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

238:                                              ; preds = %227
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %275

241:                                              ; preds = %238
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* @setPS_NG, align 4
  %244 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %245 = call i32 @ms_set_page_status(i32 %242, i32 %243, i32* %30, i32 %244)
  %246 = load i32, i32* %21, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = getelementptr inbounds i32, i32* %30, i64 0
  %250 = load i32, i32* %249, align 16
  %251 = and i32 %250, 239
  store i32 %251, i32* %249, align 16
  br label %252

252:                                              ; preds = %248, %241
  %253 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* %21, align 4
  %256 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %257 = call i32 @ms_write_extra_data(%struct.rtsx_chip* %253, i32 %254, i32 %255, i32* %30, i32 %256)
  %258 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %259 = call i32 @rtsx_dev(%struct.rtsx_chip* %258)
  %260 = load i32, i32* %21, align 4
  %261 = getelementptr inbounds i32, i32* %30, i64 0
  %262 = load i32, i32* %261, align 16
  %263 = call i32 (i32, i8*, ...) @dev_dbg(i32 %259, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %260, i32 %262)
  %264 = load %struct.ms_info*, %struct.ms_info** %14, align 8
  %265 = call i32 @MS_SET_BAD_BLOCK_FLG(%struct.ms_info* %264)
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* @setPS_Error, align 4
  %268 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %269 = call i32 @ms_set_page_status(i32 %266, i32 %267, i32* %30, i32 %268)
  %270 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %21, align 4
  %273 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %274 = call i32 @ms_write_extra_data(%struct.rtsx_chip* %270, i32 %271, i32 %272, i32* %30, i32 %273)
  br label %528

275:                                              ; preds = %238
  store i32 0, i32* %17, align 4
  br label %276

276:                                              ; preds = %291, %275
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %294

280:                                              ; preds = %276
  %281 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %282 = load i32, i32* @MS_TM_NORMAL_WRITE, align 4
  %283 = load i32, i32* @WRITE_PAGE_DATA, align 4
  %284 = load i32, i32* @NO_WAIT_INT, align 4
  %285 = call i32 @ms_transfer_tpc(%struct.rtsx_chip* %281, i32 %282, i32 %283, i32 0, i32 %284)
  store i32 %285, i32* %16, align 4
  %286 = load i32, i32* %16, align 4
  %287 = load i32, i32* @STATUS_SUCCESS, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %280
  br label %294

290:                                              ; preds = %280
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %17, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %17, align 4
  br label %276

294:                                              ; preds = %289, %276
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* @MS_MAX_RETRY_COUNT, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %299, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

300:                                              ; preds = %294
  br label %301

301:                                              ; preds = %300, %211
  %302 = load i32, i32* %20, align 4
  %303 = load i32, i32* @INT_REG_BREQ, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %301
  %307 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %308 = load i32, i32* @MS_BREQ_ERROR, align 4
  %309 = call i32 @ms_set_err_code(%struct.rtsx_chip* %307, i32 %308)
  %310 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %310, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

311:                                              ; preds = %301
  br label %312

312:                                              ; preds = %311, %206
  %313 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %314 = load i32, i32* @OverwriteFlag, align 4
  %315 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %316 = load i32, i32* @SystemParm, align 4
  %317 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %318 = add nsw i32 6, %317
  %319 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %313, i32 %314, i32 %315, i32 %316, i32 %318)
  store i32 %319, i32* %16, align 4
  %320 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %321 = load i32, i32* @MS_NO_ERROR, align 4
  %322 = call i32 @ms_set_err_code(%struct.rtsx_chip* %320, i32 %321)
  %323 = load %struct.ms_info*, %struct.ms_info** %14, align 8
  %324 = call i64 @CHK_MS4BIT(%struct.ms_info* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %312
  %327 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  store i32 136, i32* %327, align 16
  br label %330

328:                                              ; preds = %312
  %329 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  store i32 128, i32* %329, align 16
  br label %330

330:                                              ; preds = %328, %326
  %331 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 1
  store i32 0, i32* %331, align 4
  %332 = load i32, i32* %10, align 4
  %333 = ashr i32 %332, 8
  %334 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 2
  store i32 %333, i32* %334, align 8
  %335 = load i32, i32* %10, align 4
  %336 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 3
  store i32 %335, i32* %336, align 4
  %337 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 4
  store i32 32, i32* %337, align 16
  %338 = load i32, i32* %21, align 4
  %339 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 5
  store i32 %338, i32* %339, align 4
  %340 = getelementptr inbounds i32, i32* %30, i64 0
  %341 = load i32, i32* %340, align 16
  %342 = and i32 %341, 96
  %343 = icmp ne i32 %342, 96
  br i1 %343, label %344, label %348

344:                                              ; preds = %330
  %345 = getelementptr inbounds i32, i32* %30, i64 0
  %346 = load i32, i32* %345, align 16
  %347 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 6
  store i32 %346, i32* %347, align 8
  br label %350

348:                                              ; preds = %330
  %349 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 6
  store i32 248, i32* %349, align 8
  br label %350

350:                                              ; preds = %348, %344
  %351 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 7
  store i32 255, i32* %351, align 4
  %352 = load i32, i32* %11, align 4
  %353 = ashr i32 %352, 8
  %354 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 8
  store i32 %353, i32* %354, align 16
  %355 = load i32, i32* %11, align 4
  %356 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 9
  store i32 %355, i32* %356, align 4
  store i32 4, i32* %22, align 4
  br label %357

357:                                              ; preds = %366, %350
  %358 = load i32, i32* %22, align 4
  %359 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %360 = icmp sle i32 %358, %359
  br i1 %360, label %361, label %369

361:                                              ; preds = %357
  %362 = load i32, i32* %22, align 4
  %363 = add nsw i32 6, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 %364
  store i32 255, i32* %365, align 4
  br label %366

366:                                              ; preds = %361
  %367 = load i32, i32* %22, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %22, align 4
  br label %357

369:                                              ; preds = %357
  %370 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %371 = load i32, i32* @WRITE_REG, align 4
  %372 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %373 = add nsw i32 6, %372
  %374 = load i32, i32* @NO_WAIT_INT, align 4
  %375 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %376 = call i32 @ms_write_bytes(%struct.rtsx_chip* %370, i32 %371, i32 %373, i32 %374, i32* %375, i32 16)
  store i32 %376, i32* %16, align 4
  %377 = load i32, i32* %16, align 4
  %378 = load i32, i32* @STATUS_SUCCESS, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %369
  %381 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %381, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

382:                                              ; preds = %369
  %383 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %384 = load i32, i32* @BLOCK_WRITE, align 4
  %385 = load i32, i32* @WAIT_INT, align 4
  %386 = call i32 @ms_send_cmd(%struct.rtsx_chip* %383, i32 %384, i32 %385)
  store i32 %386, i32* %16, align 4
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* @STATUS_SUCCESS, align 4
  %389 = icmp ne i32 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %382
  %391 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %391, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

392:                                              ; preds = %382
  %393 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %394 = load i32, i32* @MS_NO_ERROR, align 4
  %395 = call i32 @ms_set_err_code(%struct.rtsx_chip* %393, i32 %394)
  %396 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %397 = load i32, i32* @GET_INT, align 4
  %398 = load i32, i32* @NO_WAIT_INT, align 4
  %399 = call i32 @ms_read_bytes(%struct.rtsx_chip* %396, i32 %397, i32 1, i32 %398, i32* %20, i32 1)
  store i32 %399, i32* %16, align 4
  %400 = load i32, i32* %16, align 4
  %401 = load i32, i32* @STATUS_SUCCESS, align 4
  %402 = icmp ne i32 %400, %401
  br i1 %402, label %403, label %405

403:                                              ; preds = %392
  %404 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %404, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

405:                                              ; preds = %392
  %406 = load i32, i32* %20, align 4
  %407 = load i32, i32* @INT_REG_CMDNK, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %405
  %411 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %412 = load i32, i32* @MS_CMD_NK, align 4
  %413 = call i32 @ms_set_err_code(%struct.rtsx_chip* %411, i32 %412)
  %414 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %414, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

415:                                              ; preds = %405
  %416 = load i32, i32* %20, align 4
  %417 = load i32, i32* @INT_REG_CED, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %431

420:                                              ; preds = %415
  %421 = load i32, i32* %20, align 4
  %422 = load i32, i32* @INT_REG_ERR, align 4
  %423 = and i32 %421, %422
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %420
  %426 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %427 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %428 = call i32 @ms_set_err_code(%struct.rtsx_chip* %426, i32 %427)
  %429 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %429, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

430:                                              ; preds = %420
  br label %431

431:                                              ; preds = %430, %415
  %432 = load i32, i32* %21, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %527

434:                                              ; preds = %431
  %435 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %436 = load i32, i32* @OverwriteFlag, align 4
  %437 = load i32, i32* @MS_EXTRA_SIZE, align 4
  %438 = load i32, i32* @SystemParm, align 4
  %439 = call i32 @ms_set_rw_reg_addr(%struct.rtsx_chip* %435, i32 %436, i32 %437, i32 %438, i32 7)
  store i32 %439, i32* %16, align 4
  %440 = load i32, i32* %16, align 4
  %441 = load i32, i32* @STATUS_SUCCESS, align 4
  %442 = icmp ne i32 %440, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %434
  %444 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %444, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

445:                                              ; preds = %434
  %446 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %447 = load i32, i32* @MS_NO_ERROR, align 4
  %448 = call i32 @ms_set_err_code(%struct.rtsx_chip* %446, i32 %447)
  %449 = load %struct.ms_info*, %struct.ms_info** %14, align 8
  %450 = call i64 @CHK_MS4BIT(%struct.ms_info* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %445
  %453 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  store i32 136, i32* %453, align 16
  br label %456

454:                                              ; preds = %445
  %455 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  store i32 128, i32* %455, align 16
  br label %456

456:                                              ; preds = %454, %452
  %457 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 1
  store i32 0, i32* %457, align 4
  %458 = load i32, i32* %9, align 4
  %459 = ashr i32 %458, 8
  %460 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 2
  store i32 %459, i32* %460, align 8
  %461 = load i32, i32* %9, align 4
  %462 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 3
  store i32 %461, i32* %462, align 4
  %463 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 4
  store i32 128, i32* %463, align 16
  %464 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 5
  store i32 0, i32* %464, align 4
  %465 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 6
  store i32 239, i32* %465, align 8
  %466 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 7
  store i32 255, i32* %466, align 4
  %467 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %468 = load i32, i32* @WRITE_REG, align 4
  %469 = load i32, i32* @NO_WAIT_INT, align 4
  %470 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 0, i64 0
  %471 = call i32 @ms_write_bytes(%struct.rtsx_chip* %467, i32 %468, i32 7, i32 %469, i32* %470, i32 8)
  store i32 %471, i32* %16, align 4
  %472 = load i32, i32* %16, align 4
  %473 = load i32, i32* @STATUS_SUCCESS, align 4
  %474 = icmp ne i32 %472, %473
  br i1 %474, label %475, label %477

475:                                              ; preds = %456
  %476 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %476, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

477:                                              ; preds = %456
  %478 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %479 = load i32, i32* @BLOCK_WRITE, align 4
  %480 = load i32, i32* @WAIT_INT, align 4
  %481 = call i32 @ms_send_cmd(%struct.rtsx_chip* %478, i32 %479, i32 %480)
  store i32 %481, i32* %16, align 4
  %482 = load i32, i32* %16, align 4
  %483 = load i32, i32* @STATUS_SUCCESS, align 4
  %484 = icmp ne i32 %482, %483
  br i1 %484, label %485, label %487

485:                                              ; preds = %477
  %486 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %486, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

487:                                              ; preds = %477
  %488 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %489 = load i32, i32* @MS_NO_ERROR, align 4
  %490 = call i32 @ms_set_err_code(%struct.rtsx_chip* %488, i32 %489)
  %491 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %492 = load i32, i32* @GET_INT, align 4
  %493 = load i32, i32* @NO_WAIT_INT, align 4
  %494 = call i32 @ms_read_bytes(%struct.rtsx_chip* %491, i32 %492, i32 1, i32 %493, i32* %20, i32 1)
  store i32 %494, i32* %16, align 4
  %495 = load i32, i32* %16, align 4
  %496 = load i32, i32* @STATUS_SUCCESS, align 4
  %497 = icmp ne i32 %495, %496
  br i1 %497, label %498, label %500

498:                                              ; preds = %487
  %499 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %499, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

500:                                              ; preds = %487
  %501 = load i32, i32* %20, align 4
  %502 = load i32, i32* @INT_REG_CMDNK, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %500
  %506 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %507 = load i32, i32* @MS_CMD_NK, align 4
  %508 = call i32 @ms_set_err_code(%struct.rtsx_chip* %506, i32 %507)
  %509 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %509, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

510:                                              ; preds = %500
  %511 = load i32, i32* %20, align 4
  %512 = load i32, i32* @INT_REG_CED, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %526

515:                                              ; preds = %510
  %516 = load i32, i32* %20, align 4
  %517 = load i32, i32* @INT_REG_ERR, align 4
  %518 = and i32 %516, %517
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %525

520:                                              ; preds = %515
  %521 = load %struct.rtsx_chip*, %struct.rtsx_chip** %8, align 8
  %522 = load i32, i32* @MS_FLASH_WRITE_ERROR, align 4
  %523 = call i32 @ms_set_err_code(%struct.rtsx_chip* %521, i32 %522)
  %524 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %524, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

525:                                              ; preds = %515
  br label %526

526:                                              ; preds = %525, %510
  br label %527

527:                                              ; preds = %526, %431
  br label %528

528:                                              ; preds = %527, %252
  %529 = load i32, i32* %21, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %21, align 4
  br label %105

531:                                              ; preds = %105
  %532 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %532, i32* %7, align 4
  store i32 1, i32* %24, align 4
  br label %533

533:                                              ; preds = %531, %520, %505, %498, %485, %475, %443, %425, %410, %403, %390, %380, %306, %298, %236, %201, %194, %181, %171, %140, %129, %115, %97, %90, %80, %65, %57, %49
  %534 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %534)
  %535 = load i32, i32* %7, align 4
  ret i32 %535
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #2

declare dso_local i32 @ms_read_extra_data(%struct.rtsx_chip*, i32, i32, i32*, i32) #2

declare dso_local i32 @ms_read_status_reg(%struct.rtsx_chip*) #2

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #2

declare dso_local i32 @ms_send_cmd(%struct.rtsx_chip*, i32, i32) #2

declare dso_local i32 @ms_read_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ms_set_err_code(%struct.rtsx_chip*, i32) #2

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #2

declare dso_local i32 @ms_set_rw_reg_addr(%struct.rtsx_chip*, i32, i32, i32, i32) #2

declare dso_local i64 @CHK_MS4BIT(%struct.ms_info*) #2

declare dso_local i32 @ms_write_bytes(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @ms_transfer_tpc(%struct.rtsx_chip*, i32, i32, i32, i32) #2

declare dso_local i32 @ms_set_page_status(i32, i32, i32*, i32) #2

declare dso_local i32 @ms_write_extra_data(%struct.rtsx_chip*, i32, i32, i32*, i32) #2

declare dso_local i32 @MS_SET_BAD_BLOCK_FLG(%struct.ms_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
