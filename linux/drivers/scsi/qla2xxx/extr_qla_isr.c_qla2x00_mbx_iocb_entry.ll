; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_mbx_iocb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_mbx_iocb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.mbx_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i64, i32 (%struct.TYPE_15__*, i32)*, i32, %struct.TYPE_16__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32 }

@__const.qla2x00_mbx_iocb_entry.func = private unnamed_addr constant [9 x i8] c"MBX-IOCB\00", align 1
@MBS_COMMAND_ERROR = common dso_local global i32 0, align 4
@SRB_LOGIN_RETRIED = common dso_local global i32 0, align 4
@QLA_LOGIO_LOGIN_RETRIED = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [108 x i8] c"Async-%s error entry - hdl=%x portid=%02x%02x%02x entry-status=%x status=%x state-flag=%x status-flags=%x.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@SRB_LOGIN_CMD = common dso_local global i64 0, align 8
@MBS_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Async-%s complete - hdl=%x portid=%02x%02x%02x mbx1=%x.\0A\00", align 1
@FCT_TARGET = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@FCT_INITIATOR = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@FCF_FCP2_DEVICE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"Async-%s failed - hdl=%x portid=%02x%02x%02x status=%x mb0=%x mb1=%x mb2=%x mb6=%x mb7=%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.mbx_entry*)* @qla2x00_mbx_iocb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_mbx_iocb_entry(i32* %0, %struct.req_que* %1, %struct.mbx_entry* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.mbx_entry*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.srb_iocb*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store %struct.mbx_entry* %2, %struct.mbx_entry** %6, align 8
  %14 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.qla2x00_mbx_iocb_entry.func, i32 0, i32 0), i64 9, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %17 = load %struct.req_que*, %struct.req_que** %5, align 8
  %18 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %19 = call %struct.TYPE_15__* @qla2x00_get_sp_from_handle(i32* %15, i8* %16, %struct.req_que* %17, %struct.mbx_entry* %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %10, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %274

23:                                               ; preds = %3
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store %struct.srb_iocb* %26, %struct.srb_iocb** %11, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %9, align 8
  %33 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %34 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %12, align 8
  %38 = load i32, i32* @MBS_COMMAND_ERROR, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %42 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SRB_LOGIN_RETRIED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %23
  %50 = load i32, i32* @QLA_LOGIO_LOGIN_RETRIED, align 4
  br label %52

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load i32*, i32** %12, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %57 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %52
  %61 = load i64, i64* @ql_dbg_async, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %83 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %86 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %90 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %94 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = call i32 (i64, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, ...) @ql_dbg(i64 %61, i32* %62, i32 20547, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %66, i32 %71, i32 %76, i32 %81, i32 %84, i32 %88, i32 %92, i32 %96)
  %98 = load i64, i64* @ql_dbg_async, align 8
  %99 = load i64, i64* @ql_dbg_buffer, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %103 = call i32 @ql_dump_buffer(i64 %100, i32* %101, i32 20521, %struct.mbx_entry* %102, i32 36)
  br label %268

104:                                              ; preds = %52
  %105 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %106 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, 48
  br i1 %110, label %111, label %125

111:                                              ; preds = %104
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SRB_LOGIN_CMD, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %119 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le16_to_cpu(i32 %120)
  %122 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %124, %117, %111, %104
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %202, label %128

128:                                              ; preds = %125
  %129 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %130 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %202

135:                                              ; preds = %128
  %136 = load i64, i64* @ql_dbg_async, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %158 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @le16_to_cpu(i32 %159)
  %161 = call i32 (i64, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, ...) @ql_dbg(i64 %136, i32* %137, i32 20549, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %138, i32 %141, i32 %146, i32 %151, i32 %156, i32 %160)
  %162 = load i32, i32* @MBS_COMMAND_COMPLETE, align 4
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SRB_LOGIN_CMD, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %135
  %171 = load i32, i32* @FCT_TARGET, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %175 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le16_to_cpu(i32 %176)
  %178 = load i32, i32* @BIT_0, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %170
  %182 = load i32, i32* @FCT_INITIATOR, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  br label %200

185:                                              ; preds = %170
  %186 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %187 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @le16_to_cpu(i32 %188)
  %190 = load i32, i32* @BIT_1, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load i32, i32* @FCF_FCP2_DEVICE, align 4
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %193, %185
  br label %200

200:                                              ; preds = %199, %181
  br label %201

201:                                              ; preds = %200, %135
  br label %268

202:                                              ; preds = %128, %125
  %203 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %204 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le16_to_cpu(i32 %205)
  %207 = load i32*, i32** %12, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %206, i32* %208, align 4
  %209 = load i32*, i32** %12, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  switch i32 %211, label %220 [
    i32 128, label %212
    i32 129, label %219
  ]

212:                                              ; preds = %202
  %213 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %214 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @le16_to_cpu(i32 %215)
  %217 = load i32*, i32** %12, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  store i32 %216, i32* %218, align 4
  br label %224

219:                                              ; preds = %202
  br label %224

220:                                              ; preds = %202
  %221 = load i32, i32* @MBS_COMMAND_ERROR, align 4
  %222 = load i32*, i32** %12, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %220, %219, %212
  %225 = load i32, i32* @ql_log_warn, align 4
  %226 = load i32*, i32** %4, align 8
  %227 = load i8*, i8** %8, align 8
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %248 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @le16_to_cpu(i32 %249)
  %251 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %252 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @le16_to_cpu(i32 %253)
  %255 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %256 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @le16_to_cpu(i32 %257)
  %259 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %260 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @le16_to_cpu(i32 %261)
  %263 = load %struct.mbx_entry*, %struct.mbx_entry** %6, align 8
  %264 = getelementptr inbounds %struct.mbx_entry, %struct.mbx_entry* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @le16_to_cpu(i32 %265)
  %267 = call i32 @ql_log(i32 %225, i32* %226, i32 20550, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i8* %227, i32 %230, i32 %235, i32 %240, i32 %245, i32 %246, i32 %250, i32 %254, i32 %258, i32 %262, i32 %266)
  br label %268

268:                                              ; preds = %224, %201, %60
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 2
  %271 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %270, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %273 = call i32 %271(%struct.TYPE_15__* %272, i32 0)
  br label %274

274:                                              ; preds = %268, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_15__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.mbx_entry*) #2

declare dso_local i32 @ql_dbg(i64, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, ...) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @ql_dump_buffer(i64, i32*, i32, %struct.mbx_entry*, i32) #2

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
