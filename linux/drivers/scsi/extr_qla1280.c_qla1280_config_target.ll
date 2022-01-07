; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_config_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_config_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_12__*, %struct.nvram }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.nvram = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }

@MAILBOX_REGISTER_COUNT = common dso_local global i32 0, align 4
@MBC_SET_TARGET_PARAMETERS = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@TP_RENEGOTIATE = common dso_local global i32 0, align 4
@TP_AUTO_REQUEST_SENSE = common dso_local global i32 0, align 4
@TP_TAGGED_QUEUE = common dso_local global i32 0, align 4
@TP_WIDE = common dso_local global i32 0, align 4
@TP_PARITY = common dso_local global i32 0, align 4
@TP_DISCONNECT = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@MAX_LUNS = common dso_local global i32 0, align 4
@MBC_SET_DEVICE_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32)* @qla1280_config_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla1280_config_target(%struct.scsi_qla_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvram*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 1
  store %struct.nvram* %14, %struct.nvram** %7, align 8
  %15 = load i32, i32* @MAILBOX_REGISTER_COUNT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @MBC_SET_TARGET_PARAMETERS, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BIT_7, align 4
  %26 = or i32 %24, %25
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ]
  %31 = shl i32 %30, 8
  %32 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @TP_RENEGOTIATE, align 4
  %34 = load i32, i32* @TP_AUTO_REQUEST_SENSE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @TP_TAGGED_QUEUE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TP_WIDE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @TP_PARITY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TP_DISCONNECT, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %43, i32* %44, align 8
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %46 = call i64 @IS_ISP1x160(%struct.scsi_qla_host* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %29
  %49 = load %struct.nvram*, %struct.nvram** %7, align 8
  %50 = getelementptr inbounds %struct.nvram, %struct.nvram* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 %63, 8
  %65 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 %64, i32* %65, align 4
  br label %84

66:                                               ; preds = %29
  %67 = load %struct.nvram*, %struct.nvram** %7, align 8
  %68 = getelementptr inbounds %struct.nvram, %struct.nvram* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 %81, 8
  %83 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %66, %48
  %85 = load %struct.nvram*, %struct.nvram** %7, align 8
  %86 = getelementptr inbounds %struct.nvram, %struct.nvram* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds i32, i32* %18, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %102 = call i32 @qla1280_mailbox_command(%struct.scsi_qla_host* %101, i32 15, i32* %18)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @BIT_0, align 4
  %104 = load i32, i32* %6, align 4
  %105 = shl i32 %103, %104
  store i32 %105, i32* %12, align 4
  %106 = load %struct.nvram*, %struct.nvram** %7, align 8
  %107 = getelementptr inbounds %struct.nvram, %struct.nvram* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %84
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %124 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %122
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %121, %84
  %133 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %134 = call i64 @IS_ISP1x160(%struct.scsi_qla_host* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %173

136:                                              ; preds = %132
  %137 = load %struct.nvram*, %struct.nvram** %7, align 8
  %138 = getelementptr inbounds %struct.nvram, %struct.nvram* %137, i32 0, i32 0
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %136
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %156 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %155, i32 0, i32 0
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %154
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %153, %136
  %165 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %166 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %171, align 4
  br label %230

173:                                              ; preds = %132
  %174 = load %struct.nvram*, %struct.nvram** %7, align 8
  %175 = getelementptr inbounds %struct.nvram, %struct.nvram* %174, i32 0, i32 0
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %173
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %193 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %192, i32 0, i32 0
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %191
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %190, %173
  %202 = load %struct.nvram*, %struct.nvram** %7, align 8
  %203 = getelementptr inbounds %struct.nvram, %struct.nvram* %202, i32 0, i32 0
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %201
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %221 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %220, i32 0, i32 0
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %219
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %218, %201
  br label %230

230:                                              ; preds = %229, %164
  store i32 0, i32* %11, align 4
  br label %231

231:                                              ; preds = %281, %230
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* @MAX_LUNS, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %284

235:                                              ; preds = %231
  %236 = load i32, i32* @MBC_SET_DEVICE_QUEUE, align 4
  %237 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %236, i32* %237, align 16
  %238 = load i32, i32* %5, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @BIT_7, align 4
  %243 = or i32 %241, %242
  br label %246

244:                                              ; preds = %235
  %245 = load i32, i32* %6, align 4
  br label %246

246:                                              ; preds = %244, %240
  %247 = phi i32 [ %243, %240 ], [ %245, %244 ]
  %248 = shl i32 %247, 8
  %249 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* %11, align 4
  %251 = getelementptr inbounds i32, i32* %18, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %250
  store i32 %253, i32* %251, align 4
  %254 = load %struct.nvram*, %struct.nvram** %7, align 8
  %255 = getelementptr inbounds %struct.nvram, %struct.nvram* %254, i32 0, i32 0
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %261, i32* %262, align 8
  %263 = load %struct.nvram*, %struct.nvram** %7, align 8
  %264 = getelementptr inbounds %struct.nvram, %struct.nvram* %263, i32 0, i32 0
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 %275, i32* %276, align 4
  %277 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %278 = call i32 @qla1280_mailbox_command(%struct.scsi_qla_host* %277, i32 15, i32* %18)
  %279 = load i32, i32* %10, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %10, align 4
  br label %281

281:                                              ; preds = %246
  %282 = load i32, i32* %11, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %11, align 4
  br label %231

284:                                              ; preds = %231
  %285 = load i32, i32* %10, align 4
  %286 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %286)
  ret i32 %285
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_ISP1x160(%struct.scsi_qla_host*) #2

declare dso_local i32 @qla1280_mailbox_command(%struct.scsi_qla_host*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
