; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_83.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_emulate_evpd_83.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_lun*, %struct.se_device* }
%struct.se_lun = type { i32, i32, %struct.t10_alua_tg_pt_gp*, %struct.se_portal_group* }
%struct.t10_alua_tg_pt_gp = type { i32 }
%struct.se_portal_group = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)* }
%struct.se_device = type { i32, %struct.t10_alua_lu_gp_member*, %struct.TYPE_4__ }
%struct.t10_alua_lu_gp_member = type { i32, %struct.t10_alua_lu_gp* }
%struct.t10_alua_lu_gp = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@DF_EMULATED_VPD_UNIT_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@INQUIRY_VENDOR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s,t,0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spc_emulate_evpd_83(%struct.se_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_lun*, align 8
  %7 = alloca %struct.se_portal_group*, align 8
  %8 = alloca %struct.t10_alua_lu_gp_member*, align 8
  %9 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.t10_alua_lu_gp*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 1
  %25 = load %struct.se_device*, %struct.se_device** %24, align 8
  store %struct.se_device* %25, %struct.se_device** %5, align 8
  %26 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %26, i32 0, i32 0
  %28 = load %struct.se_lun*, %struct.se_lun** %27, align 8
  store %struct.se_lun* %28, %struct.se_lun** %6, align 8
  store %struct.se_portal_group* null, %struct.se_portal_group** %7, align 8
  %29 = load %struct.se_device*, %struct.se_device** %5, align 8
  %30 = getelementptr inbounds %struct.se_device, %struct.se_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8* %33, i8** %10, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i64 4, i64* %13, align 8
  %34 = load %struct.se_device*, %struct.se_device** %5, align 8
  %35 = getelementptr inbounds %struct.se_device, %struct.se_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DF_EMULATED_VPD_UNIT_SERIAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  br label %86

41:                                               ; preds = %2
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %13, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 1, i8* %45, align 1
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %13, align 8
  %52 = getelementptr inbounds i8, i8* %49, i64 %50
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, 3
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %13, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %13, align 8
  %62 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 16, i8* %62, align 1
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %13, align 8
  %66 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 96, i8* %66, align 1
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %13, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 1, i8* %70, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %13, align 8
  %74 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 64, i8* %74, align 1
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 80, i8* %77, align 1
  %78 = load %struct.se_device*, %struct.se_device** %5, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = call i32 @spc_parse_naa_6h_vendor_specific(%struct.se_device* %78, i8* %81)
  store i32 20, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %41, %40
  store i32 8, i32* %15, align 4
  store i64 4, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 8
  store i64 %88, i64* %11, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @strlen(i8* %89)
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %11, align 8
  %95 = load %struct.se_device*, %struct.se_device** %5, align 8
  %96 = getelementptr inbounds %struct.se_device, %struct.se_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DF_EMULATED_VPD_UNIT_SERIAL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %86
  %102 = load %struct.se_device*, %struct.se_device** %5, align 8
  %103 = getelementptr inbounds %struct.se_device, %struct.se_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = call i64 @strlen(i8* %106)
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %12, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 12
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.se_device*, %struct.se_device** %5, align 8
  %116 = getelementptr inbounds %struct.se_device, %struct.se_device* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = call i64 (i8*, i8*, ...) @sprintf(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %114, i8* %119)
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %101, %86
  %126 = load i8*, i8** %4, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8 2, i8* %128, align 1
  %129 = load i8*, i8** %4, align 8
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 1, i8* %132, align 1
  %133 = load i8*, i8** %4, align 8
  %134 = load i64, i64* %13, align 8
  %135 = add i64 %134, 2
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %4, align 8
  %138 = load i64, i64* %13, align 8
  %139 = add i64 %138, 4
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* @INQUIRY_VENDOR_LEN, align 4
  %142 = call i32 @memset(i8* %140, i32 32, i32 %141)
  %143 = load i8*, i8** %4, align 8
  %144 = load i64, i64* %13, align 8
  %145 = add i64 %144, 4
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load %struct.se_device*, %struct.se_device** %5, align 8
  %148 = getelementptr inbounds %struct.se_device, %struct.se_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.se_device*, %struct.se_device** %5, align 8
  %152 = getelementptr inbounds %struct.se_device, %struct.se_device* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @INQUIRY_VENDOR_LEN, align 4
  %156 = call i32 @strnlen(i32 %154, i32 %155)
  %157 = call i32 @memcpy(i8* %146, i32 %150, i32 %156)
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %4, align 8
  %163 = load i64, i64* %13, align 8
  %164 = add i64 %163, 3
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8 %161, i8* %165, align 1
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 4
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %13, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %13, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %175 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %176 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %175, i32 0, i32 3
  %177 = load %struct.se_portal_group*, %struct.se_portal_group** %176, align 8
  store %struct.se_portal_group* %177, %struct.se_portal_group** %7, align 8
  %178 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %179 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = shl i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %4, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8 %182, i8* %185, align 1
  %186 = load i8*, i8** %4, align 8
  %187 = load i64, i64* %13, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %13, align 8
  %189 = getelementptr inbounds i8, i8* %186, i64 %187
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = or i32 %191, 1
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %189, align 1
  %194 = load i8*, i8** %4, align 8
  %195 = load i64, i64* %13, align 8
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8 -128, i8* %196, align 1
  %197 = load i8*, i8** %4, align 8
  %198 = load i64, i64* %13, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = or i32 %201, 16
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %199, align 1
  %204 = load i8*, i8** %4, align 8
  %205 = load i64, i64* %13, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %13, align 8
  %207 = getelementptr inbounds i8, i8* %204, i64 %205
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = or i32 %209, 4
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %207, align 1
  %212 = load i64, i64* %13, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %13, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = load i64, i64* %13, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %13, align 8
  %217 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8 4, i8* %217, align 1
  %218 = load i64, i64* %13, align 8
  %219 = add i64 %218, 2
  store i64 %219, i64* %13, align 8
  %220 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %221 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i8*, i8** %4, align 8
  %224 = load i64, i64* %13, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  %226 = call i32 @put_unaligned_be16(i32 %222, i8* %225)
  %227 = load i64, i64* %13, align 8
  %228 = add i64 %227, 2
  store i64 %228, i64* %13, align 8
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %229, 8
  store i32 %230, i32* %14, align 4
  %231 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %232 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %231, i32 0, i32 1
  %233 = call i32 @spin_lock(i32* %232)
  %234 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %235 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %234, i32 0, i32 2
  %236 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %235, align 8
  store %struct.t10_alua_tg_pt_gp* %236, %struct.t10_alua_tg_pt_gp** %9, align 8
  %237 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %9, align 8
  %238 = icmp ne %struct.t10_alua_tg_pt_gp* %237, null
  br i1 %238, label %243, label %239

239:                                              ; preds = %125
  %240 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %241 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %240, i32 0, i32 1
  %242 = call i32 @spin_unlock(i32* %241)
  br label %301

243:                                              ; preds = %125
  %244 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %9, align 8
  %245 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %21, align 4
  %247 = load %struct.se_lun*, %struct.se_lun** %6, align 8
  %248 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %247, i32 0, i32 1
  %249 = call i32 @spin_unlock(i32* %248)
  %250 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %251 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = shl i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = load i8*, i8** %4, align 8
  %256 = load i64, i64* %13, align 8
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8 %254, i8* %257, align 1
  %258 = load i8*, i8** %4, align 8
  %259 = load i64, i64* %13, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %13, align 8
  %261 = getelementptr inbounds i8, i8* %258, i64 %259
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = or i32 %263, 1
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %261, align 1
  %266 = load i8*, i8** %4, align 8
  %267 = load i64, i64* %13, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  store i8 -128, i8* %268, align 1
  %269 = load i8*, i8** %4, align 8
  %270 = load i64, i64* %13, align 8
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = or i32 %273, 16
  %275 = trunc i32 %274 to i8
  store i8 %275, i8* %271, align 1
  %276 = load i8*, i8** %4, align 8
  %277 = load i64, i64* %13, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %13, align 8
  %279 = getelementptr inbounds i8, i8* %276, i64 %277
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = or i32 %281, 5
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %279, align 1
  %284 = load i64, i64* %13, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %13, align 8
  %286 = load i8*, i8** %4, align 8
  %287 = load i64, i64* %13, align 8
  %288 = add i64 %287, 1
  store i64 %288, i64* %13, align 8
  %289 = getelementptr inbounds i8, i8* %286, i64 %287
  store i8 4, i8* %289, align 1
  %290 = load i64, i64* %13, align 8
  %291 = add i64 %290, 2
  store i64 %291, i64* %13, align 8
  %292 = load i32, i32* %21, align 4
  %293 = load i8*, i8** %4, align 8
  %294 = load i64, i64* %13, align 8
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  %296 = call i32 @put_unaligned_be16(i32 %292, i8* %295)
  %297 = load i64, i64* %13, align 8
  %298 = add i64 %297, 2
  store i64 %298, i64* %13, align 8
  %299 = load i32, i32* %14, align 4
  %300 = add nsw i32 %299, 8
  store i32 %300, i32* %14, align 4
  br label %301

301:                                              ; preds = %243, %239
  %302 = load %struct.se_device*, %struct.se_device** %5, align 8
  %303 = getelementptr inbounds %struct.se_device, %struct.se_device* %302, i32 0, i32 1
  %304 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %303, align 8
  store %struct.t10_alua_lu_gp_member* %304, %struct.t10_alua_lu_gp_member** %8, align 8
  %305 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %8, align 8
  %306 = icmp ne %struct.t10_alua_lu_gp_member* %305, null
  br i1 %306, label %308, label %307

307:                                              ; preds = %301
  br label %361

308:                                              ; preds = %301
  %309 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %8, align 8
  %310 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %309, i32 0, i32 0
  %311 = call i32 @spin_lock(i32* %310)
  %312 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %8, align 8
  %313 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %312, i32 0, i32 1
  %314 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %313, align 8
  store %struct.t10_alua_lu_gp* %314, %struct.t10_alua_lu_gp** %16, align 8
  %315 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %16, align 8
  %316 = icmp ne %struct.t10_alua_lu_gp* %315, null
  br i1 %316, label %321, label %317

317:                                              ; preds = %308
  %318 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %8, align 8
  %319 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %318, i32 0, i32 0
  %320 = call i32 @spin_unlock(i32* %319)
  br label %361

321:                                              ; preds = %308
  %322 = load %struct.t10_alua_lu_gp*, %struct.t10_alua_lu_gp** %16, align 8
  %323 = getelementptr inbounds %struct.t10_alua_lu_gp, %struct.t10_alua_lu_gp* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %20, align 4
  %325 = load %struct.t10_alua_lu_gp_member*, %struct.t10_alua_lu_gp_member** %8, align 8
  %326 = getelementptr inbounds %struct.t10_alua_lu_gp_member, %struct.t10_alua_lu_gp_member* %325, i32 0, i32 0
  %327 = call i32 @spin_unlock(i32* %326)
  %328 = load i8*, i8** %4, align 8
  %329 = load i64, i64* %13, align 8
  %330 = add i64 %329, 1
  store i64 %330, i64* %13, align 8
  %331 = getelementptr inbounds i8, i8* %328, i64 %329
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = or i32 %333, 1
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %331, align 1
  %336 = load i8*, i8** %4, align 8
  %337 = load i64, i64* %13, align 8
  %338 = add i64 %337, 1
  store i64 %338, i64* %13, align 8
  %339 = getelementptr inbounds i8, i8* %336, i64 %337
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = or i32 %341, 6
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %339, align 1
  %344 = load i64, i64* %13, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %13, align 8
  %346 = load i8*, i8** %4, align 8
  %347 = load i64, i64* %13, align 8
  %348 = add i64 %347, 1
  store i64 %348, i64* %13, align 8
  %349 = getelementptr inbounds i8, i8* %346, i64 %347
  store i8 4, i8* %349, align 1
  %350 = load i64, i64* %13, align 8
  %351 = add i64 %350, 2
  store i64 %351, i64* %13, align 8
  %352 = load i32, i32* %20, align 4
  %353 = load i8*, i8** %4, align 8
  %354 = load i64, i64* %13, align 8
  %355 = getelementptr inbounds i8, i8* %353, i64 %354
  %356 = call i32 @put_unaligned_be16(i32 %352, i8* %355)
  %357 = load i64, i64* %13, align 8
  %358 = add i64 %357, 2
  store i64 %358, i64* %13, align 8
  %359 = load i32, i32* %14, align 4
  %360 = add nsw i32 %359, 8
  store i32 %360, i32* %14, align 4
  br label %361

361:                                              ; preds = %321, %317, %307
  %362 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %363 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = shl i32 %364, 4
  %366 = trunc i32 %365 to i8
  %367 = load i8*, i8** %4, align 8
  %368 = load i64, i64* %13, align 8
  %369 = getelementptr inbounds i8, i8* %367, i64 %368
  store i8 %366, i8* %369, align 1
  %370 = load i8*, i8** %4, align 8
  %371 = load i64, i64* %13, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %13, align 8
  %373 = getelementptr inbounds i8, i8* %370, i64 %371
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i32
  %376 = or i32 %375, 3
  %377 = trunc i32 %376 to i8
  store i8 %377, i8* %373, align 1
  %378 = load i8*, i8** %4, align 8
  %379 = load i64, i64* %13, align 8
  %380 = getelementptr inbounds i8, i8* %378, i64 %379
  store i8 -128, i8* %380, align 1
  %381 = load i8*, i8** %4, align 8
  %382 = load i64, i64* %13, align 8
  %383 = getelementptr inbounds i8, i8* %381, i64 %382
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = or i32 %385, 16
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %383, align 1
  %388 = load i8*, i8** %4, align 8
  %389 = load i64, i64* %13, align 8
  %390 = add i64 %389, 1
  store i64 %390, i64* %13, align 8
  %391 = getelementptr inbounds i8, i8* %388, i64 %389
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = or i32 %393, 8
  %395 = trunc i32 %394 to i8
  store i8 %395, i8* %391, align 1
  %396 = load i64, i64* %13, align 8
  %397 = add i64 %396, 2
  store i64 %397, i64* %13, align 8
  %398 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %399 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %398, i32 0, i32 1
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 0
  %402 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %401, align 8
  %403 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %404 = call i32 %402(%struct.se_portal_group* %403)
  store i32 %404, i32* %22, align 4
  %405 = load i8*, i8** %4, align 8
  %406 = load i64, i64* %13, align 8
  %407 = getelementptr inbounds i8, i8* %405, i64 %406
  %408 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %409 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %408, i32 0, i32 1
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 1
  %412 = load i8* (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)** %411, align 8
  %413 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %414 = call i8* %412(%struct.se_portal_group* %413)
  %415 = load i32, i32* %22, align 4
  %416 = call i64 (i8*, i8*, ...) @sprintf(i8* %407, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %414, i32 %415)
  store i64 %416, i64* %18, align 8
  %417 = load i64, i64* %18, align 8
  %418 = add i64 %417, 1
  store i64 %418, i64* %18, align 8
  %419 = load i64, i64* %18, align 8
  %420 = sub i64 0, %419
  %421 = and i64 %420, 3
  store i64 %421, i64* %17, align 8
  %422 = load i64, i64* %17, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %361
  %425 = load i64, i64* %17, align 8
  %426 = load i64, i64* %18, align 8
  %427 = add i64 %426, %425
  store i64 %427, i64* %18, align 8
  br label %428

428:                                              ; preds = %424, %361
  %429 = load i64, i64* %18, align 8
  %430 = icmp ugt i64 %429, 256
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  store i64 256, i64* %18, align 8
  br label %432

432:                                              ; preds = %431, %428
  %433 = load i64, i64* %18, align 8
  %434 = trunc i64 %433 to i8
  %435 = load i8*, i8** %4, align 8
  %436 = load i64, i64* %13, align 8
  %437 = sub i64 %436, 1
  %438 = getelementptr inbounds i8, i8* %435, i64 %437
  store i8 %434, i8* %438, align 1
  %439 = load i64, i64* %18, align 8
  %440 = load i64, i64* %13, align 8
  %441 = add i64 %440, %439
  store i64 %441, i64* %13, align 8
  %442 = load i64, i64* %18, align 8
  %443 = add i64 %442, 4
  %444 = load i32, i32* %14, align 4
  %445 = sext i32 %444 to i64
  %446 = add i64 %445, %443
  %447 = trunc i64 %446 to i32
  store i32 %447, i32* %14, align 4
  %448 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %449 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = shl i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = load i8*, i8** %4, align 8
  %454 = load i64, i64* %13, align 8
  %455 = getelementptr inbounds i8, i8* %453, i64 %454
  store i8 %452, i8* %455, align 1
  %456 = load i8*, i8** %4, align 8
  %457 = load i64, i64* %13, align 8
  %458 = add i64 %457, 1
  store i64 %458, i64* %13, align 8
  %459 = getelementptr inbounds i8, i8* %456, i64 %457
  %460 = load i8, i8* %459, align 1
  %461 = zext i8 %460 to i32
  %462 = or i32 %461, 3
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %459, align 1
  %464 = load i8*, i8** %4, align 8
  %465 = load i64, i64* %13, align 8
  %466 = getelementptr inbounds i8, i8* %464, i64 %465
  store i8 -128, i8* %466, align 1
  %467 = load i8*, i8** %4, align 8
  %468 = load i64, i64* %13, align 8
  %469 = getelementptr inbounds i8, i8* %467, i64 %468
  %470 = load i8, i8* %469, align 1
  %471 = zext i8 %470 to i32
  %472 = or i32 %471, 32
  %473 = trunc i32 %472 to i8
  store i8 %473, i8* %469, align 1
  %474 = load i8*, i8** %4, align 8
  %475 = load i64, i64* %13, align 8
  %476 = add i64 %475, 1
  store i64 %476, i64* %13, align 8
  %477 = getelementptr inbounds i8, i8* %474, i64 %475
  %478 = load i8, i8* %477, align 1
  %479 = zext i8 %478 to i32
  %480 = or i32 %479, 8
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %477, align 1
  %482 = load i64, i64* %13, align 8
  %483 = add i64 %482, 2
  store i64 %483, i64* %13, align 8
  %484 = load i8*, i8** %4, align 8
  %485 = load i64, i64* %13, align 8
  %486 = getelementptr inbounds i8, i8* %484, i64 %485
  %487 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %488 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %487, i32 0, i32 1
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 1
  %491 = load i8* (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)** %490, align 8
  %492 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %493 = call i8* %491(%struct.se_portal_group* %492)
  %494 = call i64 (i8*, i8*, ...) @sprintf(i8* %486, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %493)
  store i64 %494, i64* %19, align 8
  %495 = load i64, i64* %19, align 8
  %496 = add i64 %495, 1
  store i64 %496, i64* %19, align 8
  %497 = load i64, i64* %19, align 8
  %498 = sub i64 0, %497
  %499 = and i64 %498, 3
  store i64 %499, i64* %17, align 8
  %500 = load i64, i64* %17, align 8
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %432
  %503 = load i64, i64* %17, align 8
  %504 = load i64, i64* %19, align 8
  %505 = add i64 %504, %503
  store i64 %505, i64* %19, align 8
  br label %506

506:                                              ; preds = %502, %432
  %507 = load i64, i64* %19, align 8
  %508 = icmp ugt i64 %507, 256
  br i1 %508, label %509, label %510

509:                                              ; preds = %506
  store i64 256, i64* %19, align 8
  br label %510

510:                                              ; preds = %509, %506
  %511 = load i64, i64* %19, align 8
  %512 = trunc i64 %511 to i8
  %513 = load i8*, i8** %4, align 8
  %514 = load i64, i64* %13, align 8
  %515 = sub i64 %514, 1
  %516 = getelementptr inbounds i8, i8* %513, i64 %515
  store i8 %512, i8* %516, align 1
  %517 = load i64, i64* %19, align 8
  %518 = load i64, i64* %13, align 8
  %519 = add i64 %518, %517
  store i64 %519, i64* %13, align 8
  %520 = load i64, i64* %19, align 8
  %521 = add i64 %520, 4
  %522 = load i32, i32* %14, align 4
  %523 = sext i32 %522 to i64
  %524 = add i64 %523, %521
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* %14, align 4
  %526 = load i32, i32* %14, align 4
  %527 = load i8*, i8** %4, align 8
  %528 = getelementptr inbounds i8, i8* %527, i64 2
  %529 = call i32 @put_unaligned_be16(i32 %526, i8* %528)
  ret i32 0
}

declare dso_local i32 @spc_parse_naa_6h_vendor_specific(%struct.se_device*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
