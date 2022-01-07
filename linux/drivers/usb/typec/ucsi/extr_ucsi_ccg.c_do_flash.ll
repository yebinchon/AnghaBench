; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_do_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_do_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.firmware = type { i8*, i32 }
%struct.fw_config_table = type { float }

@jiffies = common dso_local global i64 0, align 8
@FW_CFG_TABLE_SIG_SIZE = common dso_local global i32 0, align 4
@ccg_fw_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [26 x i8] c"request %s failed err=%d\0A\00", align 1
@CCG_DEVINFO_FWMODE_MASK = common dso_local global i32 0, align 4
@CCG_DEVINFO_FWMODE_SHIFT = common dso_local global i32 0, align 4
@FW2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"not a signed image\0A\00", align 1
@FLASH_FWCT1_WR_CMD = common dso_local global i32 0, align 4
@CCG4_ROW_SIZE = common dso_local global i32 0, align 4
@FLASH_FWCT2_WR_CMD = common dso_local global i32 0, align 4
@FLASH_FWCT_SIG_WR_CMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CYACD_LINE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad FW format line_sz=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FLASH_WR_CMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"total %d row flashed. time: %dms\0A\00", align 1
@PRIMARY = common dso_local global i32 0, align 4
@FW1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"%s validation failed err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"FW2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"FW1\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s validated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*, i32)* @do_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_flash(%struct.ucsi_ccg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucsi_ccg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.fw_config_table, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %4, align 8
  store i32 %1, i32* %5, align 4
  %22 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %23 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %22, i32 0, i32 1
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %6, align 8
  store %struct.firmware* null, %struct.firmware** %7, align 8
  store i32 0, i32* %15, align 4
  %25 = load i64, i64* @jiffies, align 8
  store i64 %25, i64* %16, align 8
  %26 = load i32, i32* @FW_CFG_TABLE_SIG_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %18, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %19, align 8
  %30 = load i8**, i8*** @ccg_fw_names, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @request_firmware(%struct.firmware** %7, i8* %34, %struct.device* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %2
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i8**, i8*** @ccg_fw_names, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %324

49:                                               ; preds = %2
  %50 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %51 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CCG_DEVINFO_FWMODE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @CCG_DEVINFO_FWMODE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* @FW2, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %49
  %61 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %62 = call i32 @ccg_cmd_port_control(%struct.ucsi_ccg* %61, i32 0)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %320

66:                                               ; preds = %60
  %67 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %68 = call i32 @ccg_cmd_jump_boot_mode(%struct.ucsi_ccg* %67, i32 0)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %320

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %49
  %74 = load %struct.firmware*, %struct.firmware** %7, align 8
  %75 = getelementptr inbounds %struct.firmware, %struct.firmware* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.firmware*, %struct.firmware** %7, align 8
  %78 = getelementptr inbounds %struct.firmware, %struct.firmware* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8* %81, i8** %10, align 8
  %82 = load %struct.firmware*, %struct.firmware** %7, align 8
  %83 = getelementptr inbounds %struct.firmware, %struct.firmware* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = mul nuw i64 4, %27
  %87 = add i64 4, %86
  %88 = icmp ult i64 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  br label %164

90:                                               ; preds = %73
  %91 = bitcast %struct.fw_config_table* %17 to i32*
  %92 = load %struct.firmware*, %struct.firmware** %7, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.firmware*, %struct.firmware** %7, align 8
  %96 = getelementptr inbounds %struct.firmware, %struct.firmware* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = getelementptr inbounds i8, i8* %99, i64 -4
  %101 = mul nuw i64 4, %27
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = call i32 @memcpy(i32* %91, i8* %103, i32 4)
  %105 = getelementptr inbounds %struct.fw_config_table, %struct.fw_config_table* %17, i32 0, i32 0
  %106 = load float, float* %105, align 4
  %107 = fcmp une float %106, 0x41D510D5E0000000
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %164

111:                                              ; preds = %90
  %112 = load %struct.firmware*, %struct.firmware** %7, align 8
  %113 = getelementptr inbounds %struct.firmware, %struct.firmware* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.firmware*, %struct.firmware** %7, align 8
  %116 = getelementptr inbounds %struct.firmware, %struct.firmware* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 -4
  %121 = mul nuw i64 4, %27
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8* %123, i8** %10, align 8
  %124 = load %struct.firmware*, %struct.firmware** %7, align 8
  %125 = getelementptr inbounds %struct.firmware, %struct.firmware* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.firmware*, %struct.firmware** %7, align 8
  %128 = getelementptr inbounds %struct.firmware, %struct.firmware* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  %132 = mul nuw i64 4, %27
  %133 = sub i64 0, %132
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = mul nuw i64 4, %27
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memcpy(i32* %29, i8* %134, i32 %136)
  %138 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %139 = bitcast %struct.fw_config_table* %17 to i32*
  %140 = load i32, i32* @FLASH_FWCT1_WR_CMD, align 4
  %141 = call i32 @ccg_cmd_write_flash_row(%struct.ucsi_ccg* %138, i32 0, i32* %139, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %111
  br label %320

145:                                              ; preds = %111
  %146 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %147 = bitcast %struct.fw_config_table* %17 to i32*
  %148 = load i32, i32* @CCG4_ROW_SIZE, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* @FLASH_FWCT2_WR_CMD, align 4
  %152 = call i32 @ccg_cmd_write_flash_row(%struct.ucsi_ccg* %146, i32 0, i32* %150, i32 %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %320

156:                                              ; preds = %145
  %157 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %158 = load i32, i32* @FLASH_FWCT_SIG_WR_CMD, align 4
  %159 = call i32 @ccg_cmd_write_flash_row(%struct.ucsi_ccg* %157, i32 0, i32* %29, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %320

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %108, %89
  %165 = load i32, i32* @CCG4_ROW_SIZE, align 4
  %166 = add nsw i32 %165, 4
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call i32* @kzalloc(i32 %166, i32 %167)
  store i32* %168, i32** %20, align 8
  %169 = load i32*, i32** %20, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %11, align 4
  br label %320

174:                                              ; preds = %164
  %175 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %176 = call i32 @ccg_cmd_enter_flashing(%struct.ucsi_ccg* %175)
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %317

180:                                              ; preds = %174
  %181 = load %struct.firmware*, %struct.firmware** %7, align 8
  %182 = getelementptr inbounds %struct.firmware, %struct.firmware* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.firmware*, %struct.firmware** %7, align 8
  %185 = getelementptr inbounds %struct.firmware, %struct.firmware* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @strnchr(i8* %183, i32 %186, i8 signext 58)
  store i8* %187, i8** %8, align 8
  br label %188

188:                                              ; preds = %256, %180
  %189 = load i8*, i8** %8, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = icmp ult i8* %189, %190
  br i1 %191, label %192, label %260

192:                                              ; preds = %188
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = load i8*, i8** %10, align 8
  %196 = load i8*, i8** %8, align 8
  %197 = ptrtoint i8* %195 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sub nsw i64 %199, 1
  %201 = trunc i64 %200 to i32
  %202 = call i8* @strnchr(i8* %194, i32 %201, i8 signext 58)
  store i8* %202, i8** %9, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %192
  %206 = load i8*, i8** %10, align 8
  store i8* %206, i8** %9, align 8
  br label %207

207:                                              ; preds = %205, %192
  %208 = load i8*, i8** %9, align 8
  %209 = load i8*, i8** %8, align 8
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* @CYACD_LINE_SIZE, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %207
  %218 = load %struct.device*, %struct.device** %6, align 8
  %219 = load i32, i32* %14, align 4
  %220 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %218, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %11, align 4
  br label %317

223:                                              ; preds = %207
  %224 = load i32*, i32** %20, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 3
  %227 = load i32, i32* @CCG4_ROW_SIZE, align 4
  %228 = add nsw i32 %227, 4
  %229 = call i64 @hex2bin(i32* %224, i8* %226, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %223
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %11, align 4
  br label %317

234:                                              ; preds = %223
  %235 = load i32*, i32** %20, align 8
  %236 = call i32 @get_unaligned_be16(i32* %235)
  store i32 %236, i32* %12, align 4
  %237 = load i32*, i32** %20, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = call i32 @get_unaligned_be16(i32* %238)
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* @CCG4_ROW_SIZE, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %234
  %244 = load i32, i32* @EINVAL, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %11, align 4
  br label %317

246:                                              ; preds = %234
  %247 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %248 = load i32, i32* %12, align 4
  %249 = load i32*, i32** %20, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 4
  %251 = load i32, i32* @FLASH_WR_CMD, align 4
  %252 = call i32 @ccg_cmd_write_flash_row(%struct.ucsi_ccg* %247, i32 %248, i32* %250, i32 %251)
  store i32 %252, i32* %11, align 4
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %246
  br label %317

256:                                              ; preds = %246
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %15, align 4
  %259 = load i8*, i8** %9, align 8
  store i8* %259, i8** %8, align 8
  br label %188

260:                                              ; preds = %188
  %261 = load %struct.device*, %struct.device** %6, align 8
  %262 = load i32, i32* %15, align 4
  %263 = load i64, i64* @jiffies, align 8
  %264 = load i64, i64* %16, align 8
  %265 = sub i64 %263, %264
  %266 = call i32 @jiffies_to_msecs(i64 %265)
  %267 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %261, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %262, i32 %266)
  %268 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %269 = load i32, i32* %5, align 4
  %270 = load i32, i32* @PRIMARY, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %260
  %273 = load i32, i32* @FW2, align 4
  br label %276

274:                                              ; preds = %260
  %275 = load i32, i32* @FW1, align 4
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i32 [ %273, %272 ], [ %275, %274 ]
  %278 = call i32 @ccg_cmd_validate_fw(%struct.ucsi_ccg* %268, i32 %277)
  store i32 %278, i32* %11, align 4
  %279 = load i32, i32* %11, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %276
  %282 = load %struct.device*, %struct.device** %6, align 8
  %283 = load i32, i32* %5, align 4
  %284 = load i32, i32* @PRIMARY, align 4
  %285 = icmp eq i32 %283, %284
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %288 = load i32, i32* %11, align 4
  %289 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %282, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %287, i32 %288)
  br label %298

290:                                              ; preds = %276
  %291 = load %struct.device*, %struct.device** %6, align 8
  %292 = load i32, i32* %5, align 4
  %293 = load i32, i32* @PRIMARY, align 4
  %294 = icmp eq i32 %292, %293
  %295 = zext i1 %294 to i64
  %296 = select i1 %294, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %297 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %291, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %296)
  br label %298

298:                                              ; preds = %290, %281
  %299 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %300 = call i32 @ccg_cmd_port_control(%struct.ucsi_ccg* %299, i32 0)
  store i32 %300, i32* %11, align 4
  %301 = load i32, i32* %11, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %317

304:                                              ; preds = %298
  %305 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %306 = call i32 @ccg_cmd_reset(%struct.ucsi_ccg* %305)
  store i32 %306, i32* %11, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %317

310:                                              ; preds = %304
  %311 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %4, align 8
  %312 = call i32 @ccg_cmd_port_control(%struct.ucsi_ccg* %311, i32 1)
  store i32 %312, i32* %11, align 4
  %313 = load i32, i32* %11, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  br label %317

316:                                              ; preds = %310
  br label %317

317:                                              ; preds = %316, %315, %309, %303, %255, %243, %231, %217, %179
  %318 = load i32*, i32** %20, align 8
  %319 = call i32 @kfree(i32* %318)
  br label %320

320:                                              ; preds = %317, %171, %162, %155, %144, %71, %65
  %321 = load %struct.firmware*, %struct.firmware** %7, align 8
  %322 = call i32 @release_firmware(%struct.firmware* %321)
  %323 = load i32, i32* %11, align 4
  store i32 %323, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %324

324:                                              ; preds = %320, %39
  %325 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %325)
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @ccg_cmd_port_control(%struct.ucsi_ccg*, i32) #2

declare dso_local i32 @ccg_cmd_jump_boot_mode(%struct.ucsi_ccg*, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #2

declare dso_local i32 @ccg_cmd_write_flash_row(%struct.ucsi_ccg*, i32, i32*, i32) #2

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i32 @ccg_cmd_enter_flashing(%struct.ucsi_ccg*) #2

declare dso_local i8* @strnchr(i8*, i32, i8 signext) #2

declare dso_local i64 @hex2bin(i32*, i8*, i32) #2

declare dso_local i32 @get_unaligned_be16(i32*) #2

declare dso_local i32 @jiffies_to_msecs(i64) #2

declare dso_local i32 @ccg_cmd_validate_fw(%struct.ucsi_ccg*, i32) #2

declare dso_local i32 @ccg_cmd_reset(%struct.ucsi_ccg*) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
