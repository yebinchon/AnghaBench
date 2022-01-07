; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_maybe_execute_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_maybe_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i64, i32, i32*, i32, i64*, i32*, %struct.esp_cmd_entry*, i32, %struct.esp_target_data* }
%struct.esp_cmd_entry = type { i32, i64*, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32*, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32 }
%struct.esp_target_data = type { i32, i64, i64, i64, i32, i64 }

@ESP_FLAG_RESETTING = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@ESP_TGT_CHECK_NEGO = common dso_local global i32 0, align 4
@ESP_TGT_BROKEN = common dso_local global i32 0, align 4
@ESP_TGT_DISCONNECT = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@ESP_TGT_NEGO_WIDE = common dso_local global i32 0, align 4
@ESP_TGT_NEGO_SYNC = common dso_local global i32 0, align 4
@ESP100 = common dso_local global i64 0, align 8
@ESP_CMD_SELAS = common dso_local global i32 0, align 4
@ESP_SELECT_MSGOUT = common dso_local global i32 0, align 4
@ESP_CMD_SELA = common dso_local global i32 0, align 4
@ESP_CMD_SA3 = common dso_local global i32 0, align 4
@ESP_SELECT_BASIC = common dso_local global i32 0, align 4
@ESP_BUSID_RESELID = common dso_local global i32 0, align 4
@ESP_BUSID_CTR32BIT = common dso_local global i32 0, align 4
@ESP_BUSID = common dso_local global i32 0, align 4
@esp_debug = common dso_local global i32 0, align 4
@ESP_DEBUG_SCSICMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ESP: tgt[%d] lun[%d] scsi_cmd [ \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_maybe_execute_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_maybe_execute_command(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca %struct.esp_target_data*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.esp_cmd_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.esp* %0, %struct.esp** %2, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.esp*, %struct.esp** %2, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 8
  %16 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %15, align 8
  %17 = icmp ne %struct.esp_cmd_entry* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.esp*, %struct.esp** %2, align 8
  %20 = getelementptr inbounds %struct.esp, %struct.esp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ESP_FLAG_RESETTING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  br label %440

26:                                               ; preds = %18
  %27 = load %struct.esp*, %struct.esp** %2, align 8
  %28 = call %struct.esp_cmd_entry* @find_and_prep_issuable_command(%struct.esp* %27)
  store %struct.esp_cmd_entry* %28, %struct.esp_cmd_entry** %6, align 8
  %29 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %30 = icmp ne %struct.esp_cmd_entry* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %440

32:                                               ; preds = %26
  %33 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %34 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.esp*, %struct.esp** %2, align 8
  %41 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %42 = call i32 @esp_autosense(%struct.esp* %40, %struct.esp_cmd_entry* %41)
  br label %440

43:                                               ; preds = %32
  %44 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %45 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %44, i32 0, i32 3
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %45, align 8
  store %struct.scsi_cmnd* %46, %struct.scsi_cmnd** %5, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 2
  %49 = load %struct.scsi_device*, %struct.scsi_device** %48, align 8
  store %struct.scsi_device* %49, %struct.scsi_device** %4, align 8
  %50 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.esp*, %struct.esp** %2, align 8
  %57 = getelementptr inbounds %struct.esp, %struct.esp* %56, i32 0, i32 10
  %58 = load %struct.esp_target_data*, %struct.esp_target_data** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %58, i64 %60
  store %struct.esp_target_data* %61, %struct.esp_target_data** %3, align 8
  %62 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %63 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %62, i32 0, i32 2
  %64 = load %struct.esp*, %struct.esp** %2, align 8
  %65 = getelementptr inbounds %struct.esp, %struct.esp* %64, i32 0, i32 9
  %66 = call i32 @list_move(i32* %63, i32* %65)
  %67 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %68 = load %struct.esp*, %struct.esp** %2, align 8
  %69 = getelementptr inbounds %struct.esp, %struct.esp* %68, i32 0, i32 8
  store %struct.esp_cmd_entry* %67, %struct.esp_cmd_entry** %69, align 8
  %70 = load %struct.esp*, %struct.esp** %2, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %72 = call i32 @esp_map_dma(%struct.esp* %70, %struct.scsi_cmnd* %71)
  %73 = load %struct.esp*, %struct.esp** %2, align 8
  %74 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %75 = call i32 @esp_save_pointers(%struct.esp* %73, %struct.esp_cmd_entry* %74)
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 6
  br i1 %79, label %91, label %80

80:                                               ; preds = %43
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 12
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %85, %80, %43
  %92 = load %struct.esp*, %struct.esp** %2, align 8
  %93 = getelementptr inbounds %struct.esp, %struct.esp* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %13, align 8
  %95 = load %struct.esp*, %struct.esp** %2, align 8
  %96 = getelementptr inbounds %struct.esp, %struct.esp* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %98 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %226

103:                                              ; preds = %91
  %104 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %105 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ESP_TGT_BROKEN, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %103
  %111 = load i32, i32* @ESP_TGT_DISCONNECT, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %114 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %118 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %120 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %119, i32 0, i32 2
  store i64 0, i64* %120, align 8
  %121 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %122 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %124 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %123, i32 0, i32 5
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %110, %103
  %126 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %127 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @spi_width(i32 %128)
  %130 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %131 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %129, %132
  br i1 %133, label %134, label %159

134:                                              ; preds = %125
  %135 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %136 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @spi_period(i32 %137)
  %139 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %140 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %134
  %144 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %145 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @spi_offset(i32 %146)
  %148 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %149 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %156 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %227

159:                                              ; preds = %143, %134, %125
  %160 = load %struct.esp*, %struct.esp** %2, align 8
  %161 = getelementptr inbounds %struct.esp, %struct.esp* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @FASHME, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %188

165:                                              ; preds = %159
  %166 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %167 = call i64 @esp_need_to_nego_wide(%struct.esp_target_data* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %165
  %170 = load %struct.esp*, %struct.esp** %2, align 8
  %171 = getelementptr inbounds %struct.esp, %struct.esp* %170, i32 0, i32 6
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %175 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  %180 = call i32 @spi_populate_width_msg(i64* %173, i32 %179)
  %181 = load %struct.esp*, %struct.esp** %2, align 8
  %182 = getelementptr inbounds %struct.esp, %struct.esp* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @ESP_TGT_NEGO_WIDE, align 4
  %184 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %185 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %219

188:                                              ; preds = %165, %159
  %189 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %190 = call i64 @esp_need_to_nego_sync(%struct.esp_target_data* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %211

192:                                              ; preds = %188
  %193 = load %struct.esp*, %struct.esp** %2, align 8
  %194 = getelementptr inbounds %struct.esp, %struct.esp* %193, i32 0, i32 6
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %198 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %201 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @spi_populate_sync_msg(i64* %196, i64 %199, i64 %202)
  %204 = load %struct.esp*, %struct.esp** %2, align 8
  %205 = getelementptr inbounds %struct.esp, %struct.esp* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %207 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %208 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %218

211:                                              ; preds = %188
  %212 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %215 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %211, %192
  br label %219

219:                                              ; preds = %218, %169
  %220 = load %struct.esp*, %struct.esp** %2, align 8
  %221 = getelementptr inbounds %struct.esp, %struct.esp* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 1, i32* %7, align 4
  br label %225

225:                                              ; preds = %224, %219
  br label %226

226:                                              ; preds = %225, %91
  br label %227

227:                                              ; preds = %226, %152
  %228 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %229 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @ESP_TGT_DISCONNECT, align 4
  %232 = and i32 %230, %231
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @IDENTIFY(i32 %232, i32 %233)
  %235 = load i32*, i32** %13, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %13, align 8
  store i32 %234, i32* %235, align 4
  %237 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %238 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %237, i32 0, i32 1
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %227
  %244 = load %struct.esp*, %struct.esp** %2, align 8
  %245 = getelementptr inbounds %struct.esp, %struct.esp* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @ESP100, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  store i32 1, i32* %7, align 4
  br label %250

250:                                              ; preds = %249, %243, %227
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %325

253:                                              ; preds = %250
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %255 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.esp*, %struct.esp** %2, align 8
  %258 = getelementptr inbounds %struct.esp, %struct.esp* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 8
  %259 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %260 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  %263 = load %struct.esp*, %struct.esp** %2, align 8
  %264 = getelementptr inbounds %struct.esp, %struct.esp* %263, i32 0, i32 7
  store i32* %262, i32** %264, align 8
  %265 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %266 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %265, i32 0, i32 1
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %320

271:                                              ; preds = %253
  %272 = load %struct.esp*, %struct.esp** %2, align 8
  %273 = getelementptr inbounds %struct.esp, %struct.esp* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = sub nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %276

276:                                              ; preds = %294, %271
  %277 = load i32, i32* %10, align 4
  %278 = icmp sge i32 %277, 0
  br i1 %278, label %279, label %297

279:                                              ; preds = %276
  %280 = load %struct.esp*, %struct.esp** %2, align 8
  %281 = getelementptr inbounds %struct.esp, %struct.esp* %280, i32 0, i32 6
  %282 = load i64*, i64** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.esp*, %struct.esp** %2, align 8
  %288 = getelementptr inbounds %struct.esp, %struct.esp* %287, i32 0, i32 6
  %289 = load i64*, i64** %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %289, i64 %292
  store i64 %286, i64* %293, align 8
  br label %294

294:                                              ; preds = %279
  %295 = load i32, i32* %10, align 4
  %296 = add nsw i32 %295, -1
  store i32 %296, i32* %10, align 4
  br label %276

297:                                              ; preds = %276
  %298 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %299 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 0
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.esp*, %struct.esp** %2, align 8
  %304 = getelementptr inbounds %struct.esp, %struct.esp* %303, i32 0, i32 6
  %305 = load i64*, i64** %304, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 0
  store i64 %302, i64* %306, align 8
  %307 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %308 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %307, i32 0, i32 1
  %309 = load i64*, i64** %308, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 1
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.esp*, %struct.esp** %2, align 8
  %313 = getelementptr inbounds %struct.esp, %struct.esp* %312, i32 0, i32 6
  %314 = load i64*, i64** %313, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 1
  store i64 %311, i64* %315, align 8
  %316 = load %struct.esp*, %struct.esp** %2, align 8
  %317 = getelementptr inbounds %struct.esp, %struct.esp* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 2
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %297, %253
  %321 = load i32, i32* @ESP_CMD_SELAS, align 4
  store i32 %321, i32* %12, align 4
  %322 = load i32, i32* @ESP_SELECT_MSGOUT, align 4
  %323 = load %struct.esp*, %struct.esp** %2, align 8
  %324 = getelementptr inbounds %struct.esp, %struct.esp* %323, i32 0, i32 5
  store i32 %322, i32* %324, align 8
  br label %375

325:                                              ; preds = %250
  %326 = load i32, i32* @ESP_CMD_SELA, align 4
  store i32 %326, i32* %12, align 4
  %327 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %328 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %327, i32 0, i32 1
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %351

333:                                              ; preds = %325
  %334 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %335 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %334, i32 0, i32 1
  %336 = load i64*, i64** %335, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 0
  %338 = load i64, i64* %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = load i32*, i32** %13, align 8
  %341 = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %341, i32** %13, align 8
  store i32 %339, i32* %340, align 4
  %342 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %6, align 8
  %343 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %342, i32 0, i32 1
  %344 = load i64*, i64** %343, align 8
  %345 = getelementptr inbounds i64, i64* %344, i64 1
  %346 = load i64, i64* %345, align 8
  %347 = trunc i64 %346 to i32
  %348 = load i32*, i32** %13, align 8
  %349 = getelementptr inbounds i32, i32* %348, i32 1
  store i32* %349, i32** %13, align 8
  store i32 %347, i32* %348, align 4
  %350 = load i32, i32* @ESP_CMD_SA3, align 4
  store i32 %350, i32* %12, align 4
  br label %351

351:                                              ; preds = %333, %325
  store i32 0, i32* %10, align 4
  br label %352

352:                                              ; preds = %368, %351
  %353 = load i32, i32* %10, align 4
  %354 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %355 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %371

358:                                              ; preds = %352
  %359 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %360 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %10, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32*, i32** %13, align 8
  %367 = getelementptr inbounds i32, i32* %366, i32 1
  store i32* %367, i32** %13, align 8
  store i32 %365, i32* %366, align 4
  br label %368

368:                                              ; preds = %358
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %10, align 4
  br label %352

371:                                              ; preds = %352
  %372 = load i32, i32* @ESP_SELECT_BASIC, align 4
  %373 = load %struct.esp*, %struct.esp** %2, align 8
  %374 = getelementptr inbounds %struct.esp, %struct.esp* %373, i32 0, i32 5
  store i32 %372, i32* %374, align 8
  br label %375

375:                                              ; preds = %371, %320
  %376 = load i32, i32* %8, align 4
  store i32 %376, i32* %11, align 4
  %377 = load %struct.esp*, %struct.esp** %2, align 8
  %378 = getelementptr inbounds %struct.esp, %struct.esp* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @FASHME, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %388

382:                                              ; preds = %375
  %383 = load i32, i32* @ESP_BUSID_RESELID, align 4
  %384 = load i32, i32* @ESP_BUSID_CTR32BIT, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* %11, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %11, align 4
  br label %388

388:                                              ; preds = %382, %375
  %389 = load i32, i32* %11, align 4
  %390 = load i32, i32* @ESP_BUSID, align 4
  %391 = call i32 @esp_write8(i32 %389, i32 %390)
  %392 = load %struct.esp*, %struct.esp** %2, align 8
  %393 = load i32, i32* %8, align 4
  %394 = call i32 @esp_write_tgt_sync(%struct.esp* %392, i32 %393)
  %395 = load %struct.esp*, %struct.esp** %2, align 8
  %396 = load i32, i32* %8, align 4
  %397 = call i32 @esp_write_tgt_config3(%struct.esp* %395, i32 %396)
  %398 = load i32*, i32** %13, align 8
  %399 = load %struct.esp*, %struct.esp** %2, align 8
  %400 = getelementptr inbounds %struct.esp, %struct.esp* %399, i32 0, i32 4
  %401 = load i32*, i32** %400, align 8
  %402 = ptrtoint i32* %398 to i64
  %403 = ptrtoint i32* %401 to i64
  %404 = sub i64 %402, %403
  %405 = sdiv exact i64 %404, 4
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %11, align 4
  %407 = load i32, i32* @esp_debug, align 4
  %408 = load i32, i32* @ESP_DEBUG_SCSICMD, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %435

411:                                              ; preds = %388
  %412 = load i32, i32* %8, align 4
  %413 = load i32, i32* %9, align 4
  %414 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %412, i32 %413)
  store i32 0, i32* %10, align 4
  br label %415

415:                                              ; preds = %430, %411
  %416 = load i32, i32* %10, align 4
  %417 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %418 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = icmp slt i32 %416, %419
  br i1 %420, label %421, label %433

421:                                              ; preds = %415
  %422 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %423 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %422, i32 0, i32 1
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %10, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %428)
  br label %430

430:                                              ; preds = %421
  %431 = load i32, i32* %10, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %10, align 4
  br label %415

433:                                              ; preds = %415
  %434 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %435

435:                                              ; preds = %433, %388
  %436 = load %struct.esp*, %struct.esp** %2, align 8
  %437 = load i32, i32* %11, align 4
  %438 = load i32, i32* %12, align 4
  %439 = call i32 @esp_send_dma_cmd(%struct.esp* %436, i32 %437, i32 16, i32 %438)
  br label %440

440:                                              ; preds = %435, %39, %31, %25
  ret void
}

declare dso_local %struct.esp_cmd_entry* @find_and_prep_issuable_command(%struct.esp*) #1

declare dso_local i32 @esp_autosense(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @esp_map_dma(%struct.esp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @esp_save_pointers(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i64 @spi_width(i32) #1

declare dso_local i64 @spi_period(i32) #1

declare dso_local i64 @spi_offset(i32) #1

declare dso_local i64 @esp_need_to_nego_wide(%struct.esp_target_data*) #1

declare dso_local i32 @spi_populate_width_msg(i64*, i32) #1

declare dso_local i64 @esp_need_to_nego_sync(%struct.esp_target_data*) #1

declare dso_local i32 @spi_populate_sync_msg(i64*, i64, i64) #1

declare dso_local i32 @IDENTIFY(i32, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @esp_write_tgt_sync(%struct.esp*, i32) #1

declare dso_local i32 @esp_write_tgt_config3(%struct.esp*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @esp_send_dma_cmd(%struct.esp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
