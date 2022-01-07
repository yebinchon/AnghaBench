; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_parse_cdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_spc.c_spc_parse_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i8*, i32, i8*, i8*, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.se_device*)* }
%struct.TYPE_3__ = type { i32 }

@TCM_UNSUPPORTED_SCSI_OPCODE = common dso_local global i32 0, align 4
@spc_emulate_modeselect = common dso_local global i8* null, align 8
@spc_emulate_modesense = common dso_local global i8* null, align 8
@target_scsi3_emulate_pr_in = common dso_local global i8* null, align 8
@target_scsi3_emulate_pr_out = common dso_local global i8* null, align 8
@target_scsi2_reservation_release = common dso_local global i8* null, align 8
@target_scsi2_reservation_reserve = common dso_local global i8* null, align 8
@spc_emulate_request_sense = common dso_local global i8* null, align 8
@TCM_HEAD_TAG = common dso_local global i8* null, align 8
@spc_emulate_inquiry = common dso_local global i8* null, align 8
@target_do_xcopy = common dso_local global i8* null, align 8
@target_do_receive_copy_results = common dso_local global i8* null, align 8
@spc_emulate_report_luns = common dso_local global i8* null, align 8
@spc_emulate_testunitready = common dso_local global i8* null, align 8
@TYPE_ROM = common dso_local global i32 0, align 4
@MI_REPORT_TARGET_PGS = common dso_local global i8 0, align 1
@target_emulate_report_target_port_groups = common dso_local global i8* null, align 8
@MO_SET_TARGET_PGS = common dso_local global i8 0, align 1
@target_emulate_set_target_port_groups = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spc_parse_cdb(%struct.se_cmd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.se_device*, align 8
  %7 = alloca i8*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 4
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %6, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.se_device*, %struct.se_device** %6, align 8
  %15 = getelementptr inbounds %struct.se_device, %struct.se_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 144
  br i1 %24, label %55, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 143
  br i1 %30, label %55, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 139
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 138
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 135
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 134
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %43, %37, %31, %25, %19
  %56 = load i32, i32* @TCM_UNSUPPORTED_SCSI_OPCODE, align 4
  store i32 %56, i32* %3, align 4
  br label %299

57:                                               ; preds = %49, %2
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  switch i32 %61, label %296 [
    i32 148, label %62
    i32 147, label %71
    i32 146, label %79
    i32 145, label %88
    i32 152, label %96
    i32 151, label %96
    i32 144, label %101
    i32 143, label %109
    i32 139, label %117
    i32 138, label %117
    i32 135, label %137
    i32 134, label %137
    i32 136, label %157
    i32 153, label %166
    i32 133, label %177
    i32 132, label %177
    i32 154, label %182
    i32 141, label %190
    i32 142, label %198
    i32 129, label %198
    i32 140, label %203
    i32 131, label %203
    i32 128, label %208
    i32 137, label %213
    i32 130, label %224
    i32 150, label %229
    i32 149, label %263
  ]

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i8*, i8** @spc_emulate_modeselect, align 8
  %69 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %298

71:                                               ; preds = %57
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 7
  %74 = call i32 @get_unaligned_be16(i8* %73)
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i8*, i8** @spc_emulate_modeselect, align 8
  %77 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %298

79:                                               ; preds = %57
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** @spc_emulate_modesense, align 8
  %86 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %87 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  br label %298

88:                                               ; preds = %57
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 7
  %91 = call i32 @get_unaligned_be16(i8* %90)
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i8*, i8** @spc_emulate_modesense, align 8
  %94 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  br label %298

96:                                               ; preds = %57, %57
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 7
  %99 = call i32 @get_unaligned_be16(i8* %98)
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  br label %298

101:                                              ; preds = %57
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 7
  %104 = call i32 @get_unaligned_be16(i8* %103)
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i8*, i8** @target_scsi3_emulate_pr_in, align 8
  %107 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %108 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %298

109:                                              ; preds = %57
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 5
  %112 = call i32 @get_unaligned_be32(i8* %111)
  %113 = load i32*, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i8*, i8** @target_scsi3_emulate_pr_out, align 8
  %115 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %116 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  br label %298

117:                                              ; preds = %57, %57
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %121, 138
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 7
  %126 = call i32 @get_unaligned_be16(i8* %125)
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  br label %133

128:                                              ; preds = %117
  %129 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %130 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %5, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i8*, i8** @target_scsi2_reservation_release, align 8
  %135 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %136 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  br label %298

137:                                              ; preds = %57, %57
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 134
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 7
  %146 = call i32 @get_unaligned_be16(i8* %145)
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  br label %153

148:                                              ; preds = %137
  %149 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %150 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %5, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i8*, i8** @target_scsi2_reservation_reserve, align 8
  %155 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %156 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  br label %298

157:                                              ; preds = %57
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 4
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load i32*, i32** %5, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i8*, i8** @spc_emulate_request_sense, align 8
  %164 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %165 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %298

166:                                              ; preds = %57
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  %169 = call i32 @get_unaligned_be16(i8* %168)
  %170 = load i32*, i32** %5, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i8*, i8** @TCM_HEAD_TAG, align 8
  %172 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %173 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @spc_emulate_inquiry, align 8
  %175 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %176 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  br label %298

177:                                              ; preds = %57, %57
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 6
  %180 = call i32 @get_unaligned_be32(i8* %179)
  %181 = load i32*, i32** %5, align 8
  store i32 %180, i32* %181, align 4
  br label %298

182:                                              ; preds = %57
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 10
  %185 = call i32 @get_unaligned_be32(i8* %184)
  %186 = load i32*, i32** %5, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i8*, i8** @target_do_xcopy, align 8
  %188 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %189 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  br label %298

190:                                              ; preds = %57
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 10
  %193 = call i32 @get_unaligned_be32(i8* %192)
  %194 = load i32*, i32** %5, align 8
  store i32 %193, i32* %194, align 4
  %195 = load i8*, i8** @target_do_receive_copy_results, align 8
  %196 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %197 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  br label %298

198:                                              ; preds = %57, %57
  %199 = load i8*, i8** %7, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 10
  %201 = call i32 @get_unaligned_be32(i8* %200)
  %202 = load i32*, i32** %5, align 8
  store i32 %201, i32* %202, align 4
  br label %298

203:                                              ; preds = %57, %57
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 3
  %206 = call i32 @get_unaligned_be16(i8* %205)
  %207 = load i32*, i32** %5, align 8
  store i32 %206, i32* %207, align 4
  br label %298

208:                                              ; preds = %57
  %209 = load i8*, i8** %7, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 6
  %211 = call i32 @get_unaligned_be24(i8* %210)
  %212 = load i32*, i32** %5, align 8
  store i32 %211, i32* %212, align 4
  br label %298

213:                                              ; preds = %57
  %214 = load i8*, i8** @spc_emulate_report_luns, align 8
  %215 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %216 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 6
  %219 = call i32 @get_unaligned_be32(i8* %218)
  %220 = load i32*, i32** %5, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i8*, i8** @TCM_HEAD_TAG, align 8
  %222 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %223 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %222, i32 0, i32 3
  store i8* %221, i8** %223, align 8
  br label %298

224:                                              ; preds = %57
  %225 = load i8*, i8** @spc_emulate_testunitready, align 8
  %226 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %227 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  %228 = load i32*, i32** %5, align 8
  store i32 0, i32* %228, align 4
  br label %298

229:                                              ; preds = %57
  %230 = load %struct.se_device*, %struct.se_device** %6, align 8
  %231 = getelementptr inbounds %struct.se_device, %struct.se_device* %230, i32 0, i32 0
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %233, align 8
  %235 = load %struct.se_device*, %struct.se_device** %6, align 8
  %236 = call i32 %234(%struct.se_device* %235)
  %237 = load i32, i32* @TYPE_ROM, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %257

239:                                              ; preds = %229
  %240 = load i8*, i8** %7, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %243, 31
  %245 = load i8, i8* @MI_REPORT_TARGET_PGS, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 %244, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %239
  %249 = load i8*, i8** @target_emulate_report_target_port_groups, align 8
  %250 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %251 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %250, i32 0, i32 2
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %248, %239
  %253 = load i8*, i8** %7, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 6
  %255 = call i32 @get_unaligned_be32(i8* %254)
  %256 = load i32*, i32** %5, align 8
  store i32 %255, i32* %256, align 4
  br label %262

257:                                              ; preds = %229
  %258 = load i8*, i8** %7, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 8
  %260 = call i32 @get_unaligned_be16(i8* %259)
  %261 = load i32*, i32** %5, align 8
  store i32 %260, i32* %261, align 4
  br label %262

262:                                              ; preds = %257, %252
  br label %298

263:                                              ; preds = %57
  %264 = load %struct.se_device*, %struct.se_device** %6, align 8
  %265 = getelementptr inbounds %struct.se_device, %struct.se_device* %264, i32 0, i32 0
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32 (%struct.se_device*)*, i32 (%struct.se_device*)** %267, align 8
  %269 = load %struct.se_device*, %struct.se_device** %6, align 8
  %270 = call i32 %268(%struct.se_device* %269)
  %271 = load i32, i32* @TYPE_ROM, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %290

273:                                              ; preds = %263
  %274 = load i8*, i8** %7, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = load i8, i8* @MO_SET_TARGET_PGS, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp eq i32 %277, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %273
  %282 = load i8*, i8** @target_emulate_set_target_port_groups, align 8
  %283 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %284 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %283, i32 0, i32 2
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %281, %273
  %286 = load i8*, i8** %7, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 6
  %288 = call i32 @get_unaligned_be32(i8* %287)
  %289 = load i32*, i32** %5, align 8
  store i32 %288, i32* %289, align 4
  br label %295

290:                                              ; preds = %263
  %291 = load i8*, i8** %7, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 8
  %293 = call i32 @get_unaligned_be16(i8* %292)
  %294 = load i32*, i32** %5, align 8
  store i32 %293, i32* %294, align 4
  br label %295

295:                                              ; preds = %290, %285
  br label %298

296:                                              ; preds = %57
  %297 = load i32, i32* @TCM_UNSUPPORTED_SCSI_OPCODE, align 4
  store i32 %297, i32* %3, align 4
  br label %299

298:                                              ; preds = %295, %262, %224, %213, %208, %203, %198, %190, %182, %177, %166, %157, %153, %133, %109, %101, %96, %88, %79, %71, %62
  store i32 0, i32* %3, align 4
  br label %299

299:                                              ; preds = %298, %296, %55
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @get_unaligned_be24(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
