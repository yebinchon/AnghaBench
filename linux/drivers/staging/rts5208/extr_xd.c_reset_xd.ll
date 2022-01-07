; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_reset_xd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_xd.c_reset_xd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32*, i64*, i64, i64, %struct.xd_info }
%struct.xd_info = type { i32, i32, i32, i32, i32, i32, i32 }

@XD_CARD = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@XD_CHK_DATA_STATUS = common dso_local global i32 0, align 4
@XD_PGSTS_NOT_FF = common dso_local global i32 0, align 4
@FPGA_PULL_CTL = common dso_local global i32 0, align 4
@FPGA_XD_PULL_CTL_EN1 = common dso_local global i32 0, align 4
@FPGA_XD_PULL_CTL_EN3 = common dso_local global i32 0, align 4
@XD_INIT = common dso_local global i32 0, align 4
@XD_NO_AUTO_PWR_OFF = common dso_local global i32 0, align 4
@CARD_OE = common dso_local global i32 0, align 4
@XD_OUTPUT_EN = common dso_local global i32 0, align 4
@FPGA_XD_PULL_CTL_EN2 = common dso_local global i32 0, align 4
@XD_CTL = common dso_local global i32 0, align 4
@XD_CE_DISEN = common dso_local global i32 0, align 4
@XD_DTCTL = common dso_local global i32 0, align 4
@XD_TIME_SETUP_STEP = common dso_local global i32 0, align 4
@XD_TIME_RW_STEP = common dso_local global i32 0, align 4
@XD_TIME_RWN_STEP = common dso_local global i32 0, align 4
@XD_CATCTL = common dso_local global i32 0, align 4
@XD_TRANSFER = common dso_local global i32 0, align 4
@XD_TRANSFER_START = common dso_local global i32 0, align 4
@XD_RESET = common dso_local global i32 0, align 4
@CHECK_REG_CMD = common dso_local global i32 0, align 4
@XD_TRANSFER_END = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@XD_DAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"XD_DAT: 0x%x, XD_CTL: 0x%x\0A\00", align 1
@READY_FLAG = common dso_local global i32 0, align 4
@READY_STATE = common dso_local global i32 0, align 4
@XD_RDY = common dso_local global i32 0, align 4
@READ_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"READ_ID: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@READ_xD_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@XD_ID_CODE = common dso_local global i32 0, align 4
@BLOCK_STATUS = common dso_local global i64 0, align 8
@XD_GBLK = common dso_local global i32 0, align 4
@PAGE_STATUS = common dso_local global i64 0, align 8
@XD_GPG = common dso_local global i32 0, align 4
@PARITY = common dso_local global i64 0, align 8
@XD_BA1_ALL0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"CIS block: 0x%x\0A\00", align 1
@SD_OC_EVER = common dso_local global i32 0, align 4
@SD_OC_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @reset_xd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_xd(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.xd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca [11 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 5
  store %struct.xd_info* %14, %struct.xd_info** %4, align 8
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %16 = load i64, i64* @XD_CARD, align 8
  %17 = call i32 @select_card(%struct.rtsx_chip* %15, i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @STATUS_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %22, i32* %2, align 4
  br label %671

23:                                               ; preds = %1
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %25 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %24)
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %27 = load i32, i32* @WRITE_REG_CMD, align 4
  %28 = load i32, i32* @XD_CHK_DATA_STATUS, align 4
  %29 = load i32, i32* @XD_PGSTS_NOT_FF, align 4
  %30 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %26, i32 %27, i32 %28, i32 255, i32 %29)
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %32 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %37 = call i32 @CHECK_PID(%struct.rtsx_chip* %36, i32 21128)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %41 = call i32 @xd_fill_pull_ctl_disable(%struct.rtsx_chip* %40)
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %44 = call i32 @xd_fill_pull_ctl_stage1_barossa(%struct.rtsx_chip* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %55

46:                                               ; preds = %23
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %48 = load i32, i32* @WRITE_REG_CMD, align 4
  %49 = load i32, i32* @FPGA_PULL_CTL, align 4
  %50 = load i32, i32* @FPGA_XD_PULL_CTL_EN1, align 4
  %51 = load i32, i32* @FPGA_XD_PULL_CTL_EN3, align 4
  %52 = and i32 %50, %51
  %53 = or i32 %52, 32
  %54 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %47, i32 %48, i32 %49, i32 255, i32 %53)
  br label %55

55:                                               ; preds = %46, %45
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %57 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %62 = load i32, i32* @WRITE_REG_CMD, align 4
  %63 = load i32, i32* @XD_INIT, align 4
  %64 = load i32, i32* @XD_NO_AUTO_PWR_OFF, align 4
  %65 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %61, i32 %62, i32 %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %68 = load i32, i32* @WRITE_REG_CMD, align 4
  %69 = load i32, i32* @CARD_OE, align 4
  %70 = load i32, i32* @XD_OUTPUT_EN, align 4
  %71 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %67, i32 %68, i32 %69, i32 %70, i32 0)
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %73 = load i64, i64* @XD_CARD, align 8
  %74 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %72, i64 %73, i32 100)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %78, i32* %2, align 4
  br label %671

79:                                               ; preds = %66
  %80 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %81 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %131, label %84

84:                                               ; preds = %79
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %86 = load i64, i64* @XD_CARD, align 8
  %87 = call i32 @card_power_off(%struct.rtsx_chip* %85, i64 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @STATUS_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %92, i32* %2, align 4
  br label %671

93:                                               ; preds = %84
  %94 = call i32 @wait_timeout(i32 250)
  %95 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %96 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %95)
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %98 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %103 = call i32 @xd_fill_pull_ctl_enable(%struct.rtsx_chip* %102)
  br label %113

104:                                              ; preds = %93
  %105 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %106 = load i32, i32* @WRITE_REG_CMD, align 4
  %107 = load i32, i32* @FPGA_PULL_CTL, align 4
  %108 = load i32, i32* @FPGA_XD_PULL_CTL_EN1, align 4
  %109 = load i32, i32* @FPGA_XD_PULL_CTL_EN2, align 4
  %110 = and i32 %108, %109
  %111 = or i32 %110, 32
  %112 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %105, i32 %106, i32 %107, i32 255, i32 %111)
  br label %113

113:                                              ; preds = %104, %101
  %114 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %115 = load i64, i64* @XD_CARD, align 8
  %116 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %114, i64 %115, i32 100)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %120, i32* %2, align 4
  br label %671

121:                                              ; preds = %113
  %122 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %123 = load i64, i64* @XD_CARD, align 8
  %124 = call i32 @card_power_on(%struct.rtsx_chip* %122, i64 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @STATUS_SUCCESS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %129, i32* %2, align 4
  br label %671

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %79
  %132 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %133 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %132)
  %134 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %135 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %131
  %139 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %140 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %145 = call i32 @xd_fill_pull_ctl_enable(%struct.rtsx_chip* %144)
  br label %155

146:                                              ; preds = %138
  %147 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %148 = load i32, i32* @WRITE_REG_CMD, align 4
  %149 = load i32, i32* @FPGA_PULL_CTL, align 4
  %150 = load i32, i32* @FPGA_XD_PULL_CTL_EN1, align 4
  %151 = load i32, i32* @FPGA_XD_PULL_CTL_EN2, align 4
  %152 = and i32 %150, %151
  %153 = or i32 %152, 32
  %154 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %147, i32 %148, i32 %149, i32 255, i32 %153)
  br label %155

155:                                              ; preds = %146, %143
  br label %156

156:                                              ; preds = %155, %131
  %157 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %158 = load i32, i32* @WRITE_REG_CMD, align 4
  %159 = load i32, i32* @CARD_OE, align 4
  %160 = load i32, i32* @XD_OUTPUT_EN, align 4
  %161 = load i32, i32* @XD_OUTPUT_EN, align 4
  %162 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %164 = load i32, i32* @WRITE_REG_CMD, align 4
  %165 = load i32, i32* @XD_CTL, align 4
  %166 = load i32, i32* @XD_CE_DISEN, align 4
  %167 = load i32, i32* @XD_CE_DISEN, align 4
  %168 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %170 = load i64, i64* @XD_CARD, align 8
  %171 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %169, i64 %170, i32 100)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %156
  %175 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %175, i32* %2, align 4
  br label %671

176:                                              ; preds = %156
  %177 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %178 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %176
  %182 = call i32 @wait_timeout(i32 200)
  br label %183

183:                                              ; preds = %181, %176
  %184 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %185 = call i32 @xd_set_init_para(%struct.rtsx_chip* %184)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @STATUS_SUCCESS, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %190, i32* %2, align 4
  br label %671

191:                                              ; preds = %183
  store i32 0, i32* %6, align 4
  br label %192

192:                                              ; preds = %442, %191
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %193, 4
  br i1 %194, label %195, label %445

195:                                              ; preds = %192
  %196 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %197 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %196)
  %198 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %199 = load i32, i32* @WRITE_REG_CMD, align 4
  %200 = load i32, i32* @XD_DTCTL, align 4
  %201 = load i32, i32* @XD_TIME_SETUP_STEP, align 4
  %202 = mul nsw i32 %201, 3
  %203 = load i32, i32* @XD_TIME_RW_STEP, align 4
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 2, %204
  %206 = mul nsw i32 %203, %205
  %207 = add nsw i32 %202, %206
  %208 = load i32, i32* @XD_TIME_RWN_STEP, align 4
  %209 = load i32, i32* %6, align 4
  %210 = mul nsw i32 %208, %209
  %211 = add nsw i32 %207, %210
  %212 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %198, i32 %199, i32 %200, i32 255, i32 %211)
  %213 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %214 = load i32, i32* @WRITE_REG_CMD, align 4
  %215 = load i32, i32* @XD_CATCTL, align 4
  %216 = load i32, i32* @XD_TIME_SETUP_STEP, align 4
  %217 = mul nsw i32 %216, 3
  %218 = load i32, i32* @XD_TIME_RW_STEP, align 4
  %219 = load i32, i32* %6, align 4
  %220 = add nsw i32 4, %219
  %221 = mul nsw i32 %218, %220
  %222 = add nsw i32 %217, %221
  %223 = load i32, i32* @XD_TIME_RWN_STEP, align 4
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 3, %224
  %226 = mul nsw i32 %223, %225
  %227 = add nsw i32 %222, %226
  %228 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %213, i32 %214, i32 %215, i32 255, i32 %227)
  %229 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %230 = load i32, i32* @WRITE_REG_CMD, align 4
  %231 = load i32, i32* @XD_TRANSFER, align 4
  %232 = load i32, i32* @XD_TRANSFER_START, align 4
  %233 = load i32, i32* @XD_RESET, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %229, i32 %230, i32 %231, i32 255, i32 %234)
  %236 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %237 = load i32, i32* @CHECK_REG_CMD, align 4
  %238 = load i32, i32* @XD_TRANSFER, align 4
  %239 = load i32, i32* @XD_TRANSFER_END, align 4
  %240 = load i32, i32* @XD_TRANSFER_END, align 4
  %241 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %236, i32 %237, i32 %238, i32 %239, i32 %240)
  %242 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %243 = load i32, i32* @READ_REG_CMD, align 4
  %244 = load i32, i32* @XD_DAT, align 4
  %245 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %242, i32 %243, i32 %244, i32 0, i32 0)
  %246 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %247 = load i32, i32* @READ_REG_CMD, align 4
  %248 = load i32, i32* @XD_CTL, align 4
  %249 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %246, i32 %247, i32 %248, i32 0, i32 0)
  %250 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %251 = load i64, i64* @XD_CARD, align 8
  %252 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %250, i64 %251, i32 100)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %195
  %256 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %256, i32* %2, align 4
  br label %671

257:                                              ; preds = %195
  %258 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %259 = call i32* @rtsx_get_cmd_data(%struct.rtsx_chip* %258)
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  store i32* %260, i32** %8, align 8
  %261 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %262 = call i32 @rtsx_dev(%struct.rtsx_chip* %261)
  %263 = load i32*, i32** %8, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %8, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %262, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %265, i32 %268)
  %270 = load i32*, i32** %8, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @READY_FLAG, align 4
  %274 = and i32 %272, %273
  %275 = load i32, i32* @READY_STATE, align 4
  %276 = icmp ne i32 %274, %275
  br i1 %276, label %284, label %277

277:                                              ; preds = %257
  %278 = load i32*, i32** %8, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @XD_RDY, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %277, %257
  br label %442

285:                                              ; preds = %277
  %286 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %287 = load i32, i32* @READ_ID, align 4
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %289 = call i32 @xd_read_id(%struct.rtsx_chip* %286, i32 %287, i32* %288, i32 4)
  store i32 %289, i32* %5, align 4
  %290 = load i32, i32* %5, align 4
  %291 = load i32, i32* @STATUS_SUCCESS, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %285
  %294 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %294, i32* %2, align 4
  br label %671

295:                                              ; preds = %285
  %296 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %297 = call i32 @rtsx_dev(%struct.rtsx_chip* %296)
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %299 = load i32, i32* %298, align 16
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %303 = load i32, i32* %302, align 8
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %297, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %299, i32 %301, i32 %303, i32 %305)
  %307 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %310 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 4
  %311 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %312 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  switch i32 %313, label %410 [
    i32 134, label %314
    i32 133, label %314
    i32 130, label %327
    i32 137, label %338
    i32 135, label %347
    i32 131, label %356
    i32 138, label %365
    i32 136, label %374
    i32 132, label %383
    i32 129, label %392
    i32 128, label %401
  ]

314:                                              ; preds = %295, %295
  %315 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %316 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %315, i32 0, i32 1
  store i32 4, i32* %316, align 4
  %317 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %318 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %317, i32 0, i32 2
  store i32 15, i32* %318, align 4
  %319 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %320 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %319, i32 0, i32 3
  store i32 3, i32* %320, align 4
  %321 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %322 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %321, i32 0, i32 4
  store i32 1, i32* %322, align 4
  %323 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %324 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %323, i32 0, i32 5
  store i32 8000, i32* %324, align 4
  %325 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %326 = call i32 @XD_SET_4MB(%struct.xd_info* %325)
  br label %411

327:                                              ; preds = %295
  %328 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %329 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %328, i32 0, i32 1
  store i32 4, i32* %329, align 4
  %330 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %331 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %330, i32 0, i32 2
  store i32 15, i32* %331, align 4
  %332 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %333 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %332, i32 0, i32 3
  store i32 3, i32* %333, align 4
  %334 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %335 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %334, i32 0, i32 4
  store i32 1, i32* %335, align 4
  %336 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %337 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %336, i32 0, i32 5
  store i32 16000, i32* %337, align 4
  br label %411

338:                                              ; preds = %295
  %339 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %340 = call i32 @XD_PAGE_512(%struct.xd_info* %339)
  %341 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %342 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %341, i32 0, i32 3
  store i32 3, i32* %342, align 4
  %343 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %344 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %343, i32 0, i32 4
  store i32 1, i32* %344, align 4
  %345 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %346 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %345, i32 0, i32 5
  store i32 32000, i32* %346, align 4
  br label %411

347:                                              ; preds = %295
  %348 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %349 = call i32 @XD_PAGE_512(%struct.xd_info* %348)
  %350 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %351 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %350, i32 0, i32 3
  store i32 3, i32* %351, align 4
  %352 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %353 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %352, i32 0, i32 4
  store i32 2, i32* %353, align 4
  %354 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %355 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %354, i32 0, i32 5
  store i32 64000, i32* %355, align 4
  br label %411

356:                                              ; preds = %295
  %357 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %358 = call i32 @XD_PAGE_512(%struct.xd_info* %357)
  %359 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %360 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %359, i32 0, i32 3
  store i32 4, i32* %360, align 4
  %361 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %362 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %361, i32 0, i32 4
  store i32 4, i32* %362, align 4
  %363 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %364 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %363, i32 0, i32 5
  store i32 128000, i32* %364, align 4
  br label %411

365:                                              ; preds = %295
  %366 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %367 = call i32 @XD_PAGE_512(%struct.xd_info* %366)
  %368 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %369 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %368, i32 0, i32 3
  store i32 4, i32* %369, align 4
  %370 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %371 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %370, i32 0, i32 4
  store i32 8, i32* %371, align 4
  %372 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %373 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %372, i32 0, i32 5
  store i32 256000, i32* %373, align 4
  br label %411

374:                                              ; preds = %295
  %375 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %376 = call i32 @XD_PAGE_512(%struct.xd_info* %375)
  %377 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %378 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %377, i32 0, i32 3
  store i32 4, i32* %378, align 4
  %379 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %380 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %379, i32 0, i32 4
  store i32 16, i32* %380, align 4
  %381 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %382 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %381, i32 0, i32 5
  store i32 512000, i32* %382, align 4
  br label %411

383:                                              ; preds = %295
  %384 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %385 = call i32 @XD_PAGE_512(%struct.xd_info* %384)
  %386 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %387 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %386, i32 0, i32 3
  store i32 4, i32* %387, align 4
  %388 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %389 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %388, i32 0, i32 4
  store i32 32, i32* %389, align 4
  %390 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %391 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %390, i32 0, i32 5
  store i32 1024000, i32* %391, align 4
  br label %411

392:                                              ; preds = %295
  %393 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %394 = call i32 @XD_PAGE_512(%struct.xd_info* %393)
  %395 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %396 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %395, i32 0, i32 3
  store i32 4, i32* %396, align 4
  %397 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %398 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %397, i32 0, i32 4
  store i32 64, i32* %398, align 4
  %399 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %400 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %399, i32 0, i32 5
  store i32 2048000, i32* %400, align 4
  br label %411

401:                                              ; preds = %295
  %402 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %403 = call i32 @XD_PAGE_512(%struct.xd_info* %402)
  %404 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %405 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %404, i32 0, i32 3
  store i32 4, i32* %405, align 4
  %406 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %407 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %406, i32 0, i32 4
  store i32 128, i32* %407, align 4
  %408 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %409 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %408, i32 0, i32 5
  store i32 4096000, i32* %409, align 4
  br label %411

410:                                              ; preds = %295
  br label %442

411:                                              ; preds = %401, %392, %383, %374, %365, %356, %347, %338, %327, %314
  store i32 0, i32* %7, align 4
  br label %412

412:                                              ; preds = %434, %411
  %413 = load i32, i32* %7, align 4
  %414 = icmp slt i32 %413, 10
  br i1 %414, label %415, label %437

415:                                              ; preds = %412
  %416 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %417 = load i32, i32* @READ_ID, align 4
  %418 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %419 = call i32 @xd_read_id(%struct.rtsx_chip* %416, i32 %417, i32* %418, i32 4)
  store i32 %419, i32* %5, align 4
  %420 = load i32, i32* %5, align 4
  %421 = load i32, i32* @STATUS_SUCCESS, align 4
  %422 = icmp ne i32 %420, %421
  br i1 %422, label %423, label %425

423:                                              ; preds = %415
  %424 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %424, i32* %2, align 4
  br label %671

425:                                              ; preds = %415
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %429 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %427, %430
  br i1 %431, label %432, label %433

432:                                              ; preds = %425
  br label %437

433:                                              ; preds = %425
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %7, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %7, align 4
  br label %412

437:                                              ; preds = %432, %412
  %438 = load i32, i32* %7, align 4
  %439 = icmp eq i32 %438, 10
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  br label %445

441:                                              ; preds = %437
  br label %442

442:                                              ; preds = %441, %410, %284
  %443 = load i32, i32* %6, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %6, align 4
  br label %192

445:                                              ; preds = %440, %192
  %446 = load i32, i32* %6, align 4
  %447 = icmp eq i32 %446, 4
  br i1 %447, label %448, label %458

448:                                              ; preds = %445
  %449 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %450 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %449, i32 0, i32 1
  store i32 0, i32* %450, align 4
  %451 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %452 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %451, i32 0, i32 2
  store i32 0, i32* %452, align 4
  %453 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %454 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %453, i32 0, i32 3
  store i32 0, i32* %454, align 4
  %455 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %456 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %455, i32 0, i32 5
  store i32 0, i32* %456, align 4
  %457 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %457, i32* %2, align 4
  br label %671

458:                                              ; preds = %445
  %459 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %460 = load i32, i32* @READ_xD_ID, align 4
  %461 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %462 = call i32 @xd_read_id(%struct.rtsx_chip* %459, i32 %460, i32* %461, i32 4)
  store i32 %462, i32* %5, align 4
  %463 = load i32, i32* %5, align 4
  %464 = load i32, i32* @STATUS_SUCCESS, align 4
  %465 = icmp ne i32 %463, %464
  br i1 %465, label %466, label %468

466:                                              ; preds = %458
  %467 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %467, i32* %2, align 4
  br label %671

468:                                              ; preds = %458
  %469 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %470 = call i32 @rtsx_dev(%struct.rtsx_chip* %469)
  %471 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %472 = load i32, i32* %471, align 16
  %473 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %474 = load i32, i32* %473, align 4
  %475 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %476 = load i32, i32* %475, align 8
  %477 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %478 = load i32, i32* %477, align 4
  %479 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %470, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %472, i32 %474, i32 %476, i32 %478)
  %480 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* @XD_ID_CODE, align 4
  %483 = icmp ne i32 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %468
  %485 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %485, i32* %2, align 4
  br label %671

486:                                              ; preds = %468
  store i32 0, i32* %6, align 4
  br label %487

487:                                              ; preds = %640, %486
  %488 = load i32, i32* %6, align 4
  %489 = icmp slt i32 %488, 24
  br i1 %489, label %490, label %643

490:                                              ; preds = %487
  %491 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %492 = load i64, i64* @XD_CARD, align 8
  %493 = call i32 @detect_card_cd(%struct.rtsx_chip* %491, i64 %492)
  %494 = load i32, i32* @STATUS_SUCCESS, align 4
  %495 = icmp ne i32 %493, %494
  br i1 %495, label %496, label %498

496:                                              ; preds = %490
  %497 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %497, i32* %2, align 4
  br label %671

498:                                              ; preds = %490
  %499 = load i32, i32* %6, align 4
  %500 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %501 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = shl i32 %499, %502
  store i32 %503, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %504

504:                                              ; preds = %517, %498
  %505 = load i32, i32* %7, align 4
  %506 = icmp slt i32 %505, 3
  br i1 %506, label %507, label %520

507:                                              ; preds = %504
  %508 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %509 = load i32, i32* %11, align 4
  %510 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 0
  %511 = call i32 @xd_read_redundant(%struct.rtsx_chip* %508, i32 %509, i32* %510, i32 11)
  store i32 %511, i32* %5, align 4
  %512 = load i32, i32* %5, align 4
  %513 = load i32, i32* @STATUS_SUCCESS, align 4
  %514 = icmp eq i32 %512, %513
  br i1 %514, label %515, label %516

515:                                              ; preds = %507
  br label %520

516:                                              ; preds = %507
  br label %517

517:                                              ; preds = %516
  %518 = load i32, i32* %7, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %7, align 4
  br label %504

520:                                              ; preds = %515, %504
  %521 = load i32, i32* %7, align 4
  %522 = icmp eq i32 %521, 3
  br i1 %522, label %523, label %524

523:                                              ; preds = %520
  br label %640

524:                                              ; preds = %520
  %525 = load i64, i64* @BLOCK_STATUS, align 8
  %526 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @XD_GBLK, align 4
  %529 = icmp ne i32 %527, %528
  br i1 %529, label %530, label %531

530:                                              ; preds = %524
  br label %640

531:                                              ; preds = %524
  store i32 0, i32* %7, align 4
  %532 = load i64, i64* @PAGE_STATUS, align 8
  %533 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* @XD_GPG, align 4
  %536 = icmp ne i32 %534, %535
  br i1 %536, label %537, label %568

537:                                              ; preds = %531
  store i32 1, i32* %7, align 4
  br label %538

538:                                              ; preds = %560, %537
  %539 = load i32, i32* %7, align 4
  %540 = icmp sle i32 %539, 8
  br i1 %540, label %541, label %563

541:                                              ; preds = %538
  %542 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %543 = load i32, i32* %11, align 4
  %544 = load i32, i32* %7, align 4
  %545 = add nsw i32 %543, %544
  %546 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 0
  %547 = call i32 @xd_read_redundant(%struct.rtsx_chip* %542, i32 %545, i32* %546, i32 11)
  store i32 %547, i32* %5, align 4
  %548 = load i32, i32* %5, align 4
  %549 = load i32, i32* @STATUS_SUCCESS, align 4
  %550 = icmp eq i32 %548, %549
  br i1 %550, label %551, label %559

551:                                              ; preds = %541
  %552 = load i64, i64* @PAGE_STATUS, align 8
  %553 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* @XD_GPG, align 4
  %556 = icmp eq i32 %554, %555
  br i1 %556, label %557, label %558

557:                                              ; preds = %551
  br label %563

558:                                              ; preds = %551
  br label %559

559:                                              ; preds = %558, %541
  br label %560

560:                                              ; preds = %559
  %561 = load i32, i32* %7, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %7, align 4
  br label %538

563:                                              ; preds = %557, %538
  %564 = load i32, i32* %7, align 4
  %565 = icmp eq i32 %564, 9
  br i1 %565, label %566, label %567

566:                                              ; preds = %563
  br label %643

567:                                              ; preds = %563
  br label %568

568:                                              ; preds = %567, %531
  %569 = load i64, i64* @BLOCK_STATUS, align 8
  %570 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* @XD_GBLK, align 4
  %573 = icmp eq i32 %571, %572
  br i1 %573, label %574, label %639

574:                                              ; preds = %568
  %575 = load i64, i64* @PARITY, align 8
  %576 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %575
  %577 = load i32, i32* %576, align 4
  %578 = load i32, i32* @XD_BA1_ALL0, align 4
  %579 = and i32 %577, %578
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %639

581:                                              ; preds = %574
  %582 = load i32, i32* %7, align 4
  %583 = load i32, i32* %11, align 4
  %584 = add nsw i32 %583, %582
  store i32 %584, i32* %11, align 4
  %585 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %586 = load i32, i32* %11, align 4
  %587 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %588 = call i32 @xd_read_cis(%struct.rtsx_chip* %585, i32 %586, i32* %587, i32 10)
  store i32 %588, i32* %5, align 4
  %589 = load i32, i32* %5, align 4
  %590 = load i32, i32* @STATUS_SUCCESS, align 4
  %591 = icmp ne i32 %589, %590
  br i1 %591, label %592, label %594

592:                                              ; preds = %581
  %593 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %593, i32* %2, align 4
  br label %671

594:                                              ; preds = %581
  %595 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %596 = load i32, i32* %595, align 16
  %597 = icmp eq i32 %596, 1
  br i1 %597, label %598, label %638

598:                                              ; preds = %594
  %599 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 1
  %600 = load i32, i32* %599, align 4
  %601 = icmp eq i32 %600, 3
  br i1 %601, label %602, label %638

602:                                              ; preds = %598
  %603 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 2
  %604 = load i32, i32* %603, align 8
  %605 = icmp eq i32 %604, 217
  br i1 %605, label %606, label %638

606:                                              ; preds = %602
  %607 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 3
  %608 = load i32, i32* %607, align 4
  %609 = icmp eq i32 %608, 1
  br i1 %609, label %610, label %638

610:                                              ; preds = %606
  %611 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 4
  %612 = load i32, i32* %611, align 16
  %613 = icmp eq i32 %612, 255
  br i1 %613, label %614, label %638

614:                                              ; preds = %610
  %615 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 5
  %616 = load i32, i32* %615, align 4
  %617 = icmp eq i32 %616, 24
  br i1 %617, label %618, label %638

618:                                              ; preds = %614
  %619 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 6
  %620 = load i32, i32* %619, align 8
  %621 = icmp eq i32 %620, 2
  br i1 %621, label %622, label %638

622:                                              ; preds = %618
  %623 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 7
  %624 = load i32, i32* %623, align 4
  %625 = icmp eq i32 %624, 223
  br i1 %625, label %626, label %638

626:                                              ; preds = %622
  %627 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 8
  %628 = load i32, i32* %627, align 16
  %629 = icmp eq i32 %628, 1
  br i1 %629, label %630, label %638

630:                                              ; preds = %626
  %631 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 9
  %632 = load i32, i32* %631, align 4
  %633 = icmp eq i32 %632, 32
  br i1 %633, label %634, label %638

634:                                              ; preds = %630
  %635 = load i32, i32* %6, align 4
  %636 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %637 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %636, i32 0, i32 6
  store i32 %635, i32* %637, align 4
  br label %638

638:                                              ; preds = %634, %630, %626, %622, %618, %614, %610, %606, %602, %598, %594
  br label %639

639:                                              ; preds = %638, %574, %568
  br label %643

640:                                              ; preds = %530, %523
  %641 = load i32, i32* %6, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %6, align 4
  br label %487

643:                                              ; preds = %639, %566, %487
  %644 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %645 = call i32 @rtsx_dev(%struct.rtsx_chip* %644)
  %646 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %647 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %646, i32 0, i32 6
  %648 = load i32, i32* %647, align 4
  %649 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %645, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %648)
  %650 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %651 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %650, i32 0, i32 6
  %652 = load i32, i32* %651, align 4
  %653 = icmp eq i32 %652, 65535
  br i1 %653, label %654, label %656

654:                                              ; preds = %643
  %655 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %655, i32* %2, align 4
  br label %671

656:                                              ; preds = %643
  %657 = load %struct.xd_info*, %struct.xd_info** %4, align 8
  %658 = getelementptr inbounds %struct.xd_info, %struct.xd_info* %657, i32 0, i32 5
  %659 = load i32, i32* %658, align 4
  %660 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %661 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %660, i32 0, i32 1
  %662 = load i32*, i32** %661, align 8
  %663 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %664 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %663, i32 0, i32 2
  %665 = load i64*, i64** %664, align 8
  %666 = load i64, i64* @XD_CARD, align 8
  %667 = getelementptr inbounds i64, i64* %665, i64 %666
  %668 = load i64, i64* %667, align 8
  %669 = getelementptr inbounds i32, i32* %662, i64 %668
  store i32 %659, i32* %669, align 4
  %670 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %670, i32* %2, align 4
  br label %671

671:                                              ; preds = %656, %654, %592, %496, %484, %466, %448, %423, %293, %255, %189, %174, %128, %119, %91, %77, %21
  %672 = load i32, i32* %2, align 4
  ret i32 %672
}

declare dso_local i32 @select_card(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_PID(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @xd_fill_pull_ctl_disable(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_fill_pull_ctl_stage1_barossa(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i64, i32) #1

declare dso_local i32 @card_power_off(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @wait_timeout(i32) #1

declare dso_local i32 @xd_fill_pull_ctl_enable(%struct.rtsx_chip*) #1

declare dso_local i32 @card_power_on(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @xd_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32* @rtsx_get_cmd_data(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @xd_read_id(%struct.rtsx_chip*, i32, i32*, i32) #1

declare dso_local i32 @XD_SET_4MB(%struct.xd_info*) #1

declare dso_local i32 @XD_PAGE_512(%struct.xd_info*) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @xd_read_redundant(%struct.rtsx_chip*, i32, i32*, i32) #1

declare dso_local i32 @xd_read_cis(%struct.rtsx_chip*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
