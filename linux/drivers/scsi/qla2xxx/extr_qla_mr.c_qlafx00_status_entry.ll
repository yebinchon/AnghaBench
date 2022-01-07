; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_status_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_status_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.req_que** }
%struct.req_que = type { i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i64, i32 (%struct.TYPE_16__*, i32)*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.rsp_que = type { i32* }
%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.sts_entry_fx00 = type { i32, i32, i64, i64, i32*, i32 }

@SS_MASK = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid status handle (0x%x).\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@SRB_TM_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Command already returned (0x%x/%p).\0A\00", align 1
@STATUS_MASK = common dso_local global i64 0, align 8
@SS_SENSE_LEN_VALID = common dso_local global i64 0, align 8
@SS_RESIDUAL_UNDER = common dso_local global i64 0, align 8
@SS_RESIDUAL_OVER = common dso_local global i64 0, align 8
@CS_DATA_OVERRUN = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Mid-layer underflow detected (0x%x of 0x%x bytes).\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_TASK_SET_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"QUEUE FULL detected.\0A\00", align 1
@SS_CHECK_CONDITION = common dso_local global i64 0, align 8
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Dropped frame(s) detected (0x%x of 0x%x bytes).\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Mid-layer underflow detected (0x%x of 0x%x bytes, cp->underflow: 0x%x).\0A\00", align 1
@SAM_STAT_BUSY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"scsi_status: 0x%x, lscsi_status: 0x%x\0A\00", align 1
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Port down status: port-state=0x%x.\0A\00", align 1
@FCS_ONLINE = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [199 x i8] c"FCP command status: 0x%x-0x%x (0x%x) nexus=%ld:%d:%llu tgt_id: 0x%x lscsi_status: 0x%x cdb=%10phN len=0x%x rsp_info=%p resid=0x%x fw_resid=0x%x sense_len=0x%x, par_sense_len=0x%x, rsp_info_len=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.rsp_que*, i8*)* @qlafx00_status_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_status_entry(%struct.TYPE_17__* %0, %struct.rsp_que* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.sts_entry_fx00*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.qla_hw_data*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.req_que*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %30, align 8
  store %struct.qla_hw_data* %31, %struct.qla_hw_data** %22, align 8
  store i32 1, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.sts_entry_fx00*
  store %struct.sts_entry_fx00* %33, %struct.sts_entry_fx00** %10, align 8
  %34 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %35 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %38 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @SS_MASK, align 8
  %41 = call i32 @cpu_to_le16(i64 %40)
  %42 = and i32 %39, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %44 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %23, align 8
  %46 = load i64, i64* %23, align 8
  %47 = call i64 @LSW(i64 %46)
  store i64 %47, i64* %24, align 8
  %48 = load i64, i64* %23, align 8
  %49 = call i64 @MSW(i64 %48)
  store i64 %49, i64* %25, align 8
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load %struct.req_que**, %struct.req_que*** %51, align 8
  %53 = load i64, i64* %25, align 8
  %54 = getelementptr inbounds %struct.req_que*, %struct.req_que** %52, i64 %53
  %55 = load %struct.req_que*, %struct.req_que** %54, align 8
  store %struct.req_que* %55, %struct.req_que** %26, align 8
  %56 = load i64, i64* %24, align 8
  %57 = load %struct.req_que*, %struct.req_que** %26, align 8
  %58 = getelementptr inbounds %struct.req_que, %struct.req_que* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %3
  %62 = load %struct.req_que*, %struct.req_que** %26, align 8
  %63 = getelementptr inbounds %struct.req_que, %struct.req_que* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %63, align 8
  %65 = load i64, i64* %24, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %64, i64 %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %7, align 8
  br label %69

68:                                               ; preds = %3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  br label %69

69:                                               ; preds = %68, %61
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = icmp eq %struct.TYPE_16__* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, i32* @ql_dbg_io, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = load i64, i64* %24, align 8
  %76 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %73, %struct.TYPE_17__* %74, i32 12340, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_17__* %81)
  br label %527

83:                                               ; preds = %69
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SRB_TM_CMD, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.req_que*, %struct.req_que** %26, align 8
  %91 = getelementptr inbounds %struct.req_que, %struct.req_que* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %91, align 8
  %93 = load i64, i64* %24, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %92, i64 %93
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = load %struct.req_que*, %struct.req_que** %26, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @qlafx00_tm_iocb_entry(%struct.TYPE_17__* %95, %struct.req_que* %96, i8* %97, %struct.TYPE_16__* %98, i32 %99, i32 %100)
  br label %527

102:                                              ; preds = %83
  %103 = load i32, i32* %11, align 4
  %104 = icmp eq i32 %103, 137
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = load %struct.req_que*, %struct.req_que** %26, align 8
  %111 = load i64, i64* %24, align 8
  %112 = call i32 @qla2x00_process_completed_request(%struct.TYPE_17__* %109, %struct.req_que* %110, i64 %111)
  br label %527

113:                                              ; preds = %105, %102
  %114 = load %struct.req_que*, %struct.req_que** %26, align 8
  %115 = getelementptr inbounds %struct.req_que, %struct.req_que* %114, i32 0, i32 1
  %116 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %115, align 8
  %117 = load i64, i64* %24, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %116, i64 %117
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %118, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_16__* %119)
  store %struct.scsi_cmnd* %120, %struct.scsi_cmnd** %9, align 8
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %122 = icmp eq %struct.scsi_cmnd* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load i32, i32* @ql_dbg_io, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = load i64, i64* %24, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %128 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %124, %struct.TYPE_17__* %125, i32 12360, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %126, %struct.TYPE_16__* %127)
  br label %527

129:                                              ; preds = %113
  %130 = load i32, i32* %12, align 4
  %131 = load i64, i64* @STATUS_MASK, align 8
  %132 = call i32 @cpu_to_le16(i64 %131)
  %133 = and i32 %130, %132
  store i32 %133, i32* %13, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  store %struct.TYPE_18__* %136, %struct.TYPE_18__** %8, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %139 = call i32 @cpu_to_le16(i64 %138)
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %129
  %143 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %144 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %15, align 8
  br label %146

146:                                              ; preds = %142, %129
  %147 = load i32, i32* %12, align 4
  %148 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %149 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %150 = or i64 %148, %149
  %151 = call i32 @cpu_to_le16(i64 %150)
  %152 = and i32 %147, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %146
  %155 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %156 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @le32_to_cpu(i32 %157)
  store i64 %158, i64* %18, align 8
  br label %159

159:                                              ; preds = %154, %146
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @cpu_to_le16(i64 136)
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %165 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @le32_to_cpu(i32 %166)
  store i64 %167, i64* %19, align 8
  br label %168

168:                                              ; preds = %163, %159
  %169 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %170 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  store i32* %171, i32** %21, align 8
  store i32* %171, i32** %20, align 8
  store i64 8, i64* %16, align 8
  %172 = load i32, i32* %11, align 4
  %173 = icmp eq i32 %172, 137
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load i32, i32* %12, align 4
  %176 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %177 = call i32 @cpu_to_le16(i64 %176)
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i64, i64* @CS_DATA_OVERRUN, align 8
  %182 = call i32 @cpu_to_le16(i64 %181)
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %180, %174, %168
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @le16_to_cpu(i32 %184)
  switch i32 %185, label %468 [
    i32 137, label %186
    i32 130, label %186
    i32 136, label %275
    i32 132, label %440
    i32 133, label %440
    i32 134, label %440
    i32 135, label %440
    i32 131, label %440
    i32 128, label %440
    i32 129, label %440
    i32 138, label %465
  ]

186:                                              ; preds = %183, %183
  %187 = load i32, i32* %12, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* @DID_OK, align 4
  %191 = shl i32 %190, 16
  store i32 %191, i32* %28, align 4
  br label %471

192:                                              ; preds = %186
  %193 = load i32, i32* %12, align 4
  %194 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %195 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %196 = or i64 %194, %195
  %197 = call i32 @cpu_to_le16(i64 %196)
  %198 = and i32 %193, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %231

200:                                              ; preds = %192
  %201 = load i64, i64* %18, align 8
  store i64 %201, i64* %14, align 8
  %202 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %203 = load i64, i64* %14, align 8
  %204 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %202, i64 %203)
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %230, label %207

207:                                              ; preds = %200
  %208 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %209 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %208)
  %210 = load i64, i64* %14, align 8
  %211 = sub i64 %209, %210
  %212 = trunc i64 %211 to i32
  %213 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %214 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ult i32 %212, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %207
  %218 = load i32, i32* @ql_dbg_io, align 4
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to %struct.TYPE_17__*
  %224 = load i64, i64* %14, align 8
  %225 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %226 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %225)
  %227 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %218, %struct.TYPE_17__* %223, i32 12368, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %224, i64 %226)
  %228 = load i32, i32* @DID_ERROR, align 4
  %229 = shl i32 %228, 16
  store i32 %229, i32* %28, align 4
  br label %471

230:                                              ; preds = %207, %200
  br label %231

231:                                              ; preds = %230, %192
  %232 = load i32, i32* @DID_OK, align 4
  %233 = shl i32 %232, 16
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @le16_to_cpu(i32 %234)
  %236 = or i32 %233, %235
  store i32 %236, i32* %28, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %239 = call i32 @cpu_to_le16(i64 %238)
  %240 = icmp eq i32 %237, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %231
  %242 = load i32, i32* @ql_dbg_io, align 4
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to %struct.TYPE_17__*
  %248 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %242, %struct.TYPE_17__* %247, i32 12369, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %471

249:                                              ; preds = %231
  store i32 0, i32* %27, align 4
  %250 = load i32, i32* %13, align 4
  %251 = load i64, i64* @SS_CHECK_CONDITION, align 8
  %252 = call i32 @cpu_to_le16(i64 %251)
  %253 = icmp ne i32 %250, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %471

255:                                              ; preds = %249
  %256 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %257 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %260 = call i32 @memset(i32 %258, i32 0, i32 %259)
  %261 = load i32, i32* %12, align 4
  %262 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %263 = call i32 @cpu_to_le16(i64 %262)
  %264 = and i32 %261, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %255
  br label %471

267:                                              ; preds = %255
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %269 = load i32*, i32** %21, align 8
  %270 = load i64, i64* %16, align 8
  %271 = load i64, i64* %15, align 8
  %272 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %273 = load i32, i32* %28, align 4
  %274 = call i32 @qlafx00_handle_sense(%struct.TYPE_16__* %268, i32* %269, i64 %270, i64 %271, %struct.rsp_que* %272, i32 %273)
  br label %471

275:                                              ; preds = %183
  %276 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  %277 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  %281 = call i32 @IS_QLAFX00(%struct.qla_hw_data* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %279, %275
  %284 = load i64, i64* %19, align 8
  store i64 %284, i64* %14, align 8
  br label %287

285:                                              ; preds = %279
  %286 = load i64, i64* %18, align 8
  store i64 %286, i64* %14, align 8
  br label %287

287:                                              ; preds = %285, %283
  %288 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %289 = load i64, i64* %14, align 8
  %290 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %288, i64 %289)
  %291 = load i32, i32* %12, align 4
  %292 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %293 = call i32 @cpu_to_le16(i64 %292)
  %294 = and i32 %291, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %354

296:                                              ; preds = %287
  %297 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  %298 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %296
  %301 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  %302 = call i32 @IS_QLAFX00(%struct.qla_hw_data* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %324

304:                                              ; preds = %300, %296
  %305 = load i64, i64* %19, align 8
  %306 = load i64, i64* %18, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %324

308:                                              ; preds = %304
  %309 = load i32, i32* @ql_dbg_io, align 4
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to %struct.TYPE_17__*
  %315 = load i64, i64* %14, align 8
  %316 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %317 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %316)
  %318 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %309, %struct.TYPE_17__* %314, i32 12370, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %315, i64 %317)
  %319 = load i32, i32* @DID_ERROR, align 4
  %320 = shl i32 %319, 16
  %321 = load i32, i32* %13, align 4
  %322 = call i32 @le16_to_cpu(i32 %321)
  %323 = or i32 %320, %322
  store i32 %323, i32* %28, align 4
  br label %397

324:                                              ; preds = %304, %300
  %325 = load i32, i32* %13, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %353, label %327

327:                                              ; preds = %324
  %328 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %329 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %328)
  %330 = load i64, i64* %14, align 8
  %331 = sub i64 %329, %330
  %332 = trunc i64 %331 to i32
  %333 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %334 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp ult i32 %332, %335
  br i1 %336, label %337, label %353

337:                                              ; preds = %327
  %338 = load i32, i32* @ql_dbg_io, align 4
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = inttoptr i64 %342 to %struct.TYPE_17__*
  %344 = load i64, i64* %14, align 8
  %345 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %346 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %345)
  %347 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %348 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %338, %struct.TYPE_17__* %343, i32 12371, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i64 %344, i64 %346, i32 %349)
  %351 = load i32, i32* @DID_ERROR, align 4
  %352 = shl i32 %351, 16
  store i32 %352, i32* %28, align 4
  br label %471

353:                                              ; preds = %327, %324
  br label %391

354:                                              ; preds = %287
  %355 = load i32, i32* %13, align 4
  %356 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %357 = call i32 @cpu_to_le16(i64 %356)
  %358 = icmp ne i32 %355, %357
  br i1 %358, label %359, label %380

359:                                              ; preds = %354
  %360 = load i32, i32* %13, align 4
  %361 = load i64, i64* @SAM_STAT_BUSY, align 8
  %362 = call i32 @cpu_to_le16(i64 %361)
  %363 = icmp ne i32 %360, %362
  br i1 %363, label %364, label %380

364:                                              ; preds = %359
  %365 = load i32, i32* @ql_dbg_io, align 4
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = inttoptr i64 %369 to %struct.TYPE_17__*
  %371 = load i64, i64* %14, align 8
  %372 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %373 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %372)
  %374 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %365, %struct.TYPE_17__* %370, i32 12372, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %371, i64 %373)
  %375 = load i32, i32* @DID_ERROR, align 4
  %376 = shl i32 %375, 16
  %377 = load i32, i32* %13, align 4
  %378 = call i32 @le16_to_cpu(i32 %377)
  %379 = or i32 %376, %378
  store i32 %379, i32* %28, align 4
  br label %397

380:                                              ; preds = %359, %354
  %381 = load i32, i32* @ql_dbg_io, align 4
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  %386 = inttoptr i64 %385 to %struct.TYPE_17__*
  %387 = load i32, i32* %12, align 4
  %388 = load i32, i32* %13, align 4
  %389 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %381, %struct.TYPE_17__* %386, i32 12373, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %387, i32 %388)
  br label %390

390:                                              ; preds = %380
  br label %391

391:                                              ; preds = %390, %353
  %392 = load i32, i32* @DID_OK, align 4
  %393 = shl i32 %392, 16
  %394 = load i32, i32* %13, align 4
  %395 = call i32 @le16_to_cpu(i32 %394)
  %396 = or i32 %393, %395
  store i32 %396, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %397

397:                                              ; preds = %391, %364, %308
  %398 = load i32, i32* %13, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %439

400:                                              ; preds = %397
  %401 = load i32, i32* %13, align 4
  %402 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %403 = call i32 @cpu_to_le16(i64 %402)
  %404 = icmp eq i32 %401, %403
  br i1 %404, label %405, label %413

405:                                              ; preds = %400
  %406 = load i32, i32* @ql_dbg_io, align 4
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = inttoptr i64 %410 to %struct.TYPE_17__*
  %412 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %406, %struct.TYPE_17__* %411, i32 12374, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %27, align 4
  br label %471

413:                                              ; preds = %400
  %414 = load i32, i32* %13, align 4
  %415 = load i64, i64* @SS_CHECK_CONDITION, align 8
  %416 = call i32 @cpu_to_le16(i64 %415)
  %417 = icmp ne i32 %414, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %413
  br label %471

419:                                              ; preds = %413
  %420 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %421 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %424 = call i32 @memset(i32 %422, i32 0, i32 %423)
  %425 = load i32, i32* %12, align 4
  %426 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %427 = call i32 @cpu_to_le16(i64 %426)
  %428 = and i32 %425, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %419
  br label %471

431:                                              ; preds = %419
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %433 = load i32*, i32** %21, align 8
  %434 = load i64, i64* %16, align 8
  %435 = load i64, i64* %15, align 8
  %436 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %437 = load i32, i32* %28, align 4
  %438 = call i32 @qlafx00_handle_sense(%struct.TYPE_16__* %432, i32* %433, i64 %434, i64 %435, %struct.rsp_que* %436, i32 %437)
  br label %439

439:                                              ; preds = %431, %397
  br label %471

440:                                              ; preds = %183, %183, %183, %183, %183, %183, %183
  %441 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %442 = shl i32 %441, 16
  store i32 %442, i32* %28, align 4
  %443 = load i32, i32* @ql_dbg_io, align 4
  %444 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  %448 = inttoptr i64 %447 to %struct.TYPE_17__*
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %449, i32 0, i32 2
  %451 = call i32 @atomic_read(i32* %450)
  %452 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %443, %struct.TYPE_17__* %448, i32 12375, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %451)
  %453 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 2
  %455 = call i32 @atomic_read(i32* %454)
  %456 = load i32, i32* @FCS_ONLINE, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %464

458:                                              ; preds = %440
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %463 = call i32 @qla2x00_mark_device_lost(i32 %461, %struct.TYPE_18__* %462, i32 1, i32 1)
  br label %464

464:                                              ; preds = %458, %440
  br label %471

465:                                              ; preds = %183
  %466 = load i32, i32* @DID_RESET, align 4
  %467 = shl i32 %466, 16
  store i32 %467, i32* %28, align 4
  br label %471

468:                                              ; preds = %183
  %469 = load i32, i32* @DID_ERROR, align 4
  %470 = shl i32 %469, 16
  store i32 %470, i32* %28, align 4
  br label %471

471:                                              ; preds = %468, %465, %464, %439, %430, %418, %405, %337, %267, %266, %254, %241, %217, %189
  %472 = load i32, i32* %27, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %513

474:                                              ; preds = %471
  %475 = load i32, i32* @ql_dbg_io, align 4
  %476 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = inttoptr i64 %479 to %struct.TYPE_17__*
  %481 = load i32, i32* %11, align 4
  %482 = load i32, i32* %12, align 4
  %483 = load i32, i32* %28, align 4
  %484 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %488 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %487, i32 0, i32 2
  %489 = load %struct.TYPE_15__*, %struct.TYPE_15__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %493 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %492, i32 0, i32 2
  %494 = load %struct.TYPE_15__*, %struct.TYPE_15__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* %13, align 4
  %501 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %502 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %505 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %504)
  %506 = load i32*, i32** %20, align 8
  %507 = load i64, i64* %18, align 8
  %508 = load i64, i64* %19, align 8
  %509 = load i64, i64* %15, align 8
  %510 = load i64, i64* %16, align 8
  %511 = load i64, i64* %17, align 8
  %512 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %475, %struct.TYPE_17__* %480, i32 12376, i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.8, i64 0, i64 0), i32 %481, i32 %482, i32 %483, i32 %486, i32 %491, i32 %496, i32 %499, i32 %500, i32 %503, i64 %505, i32* %506, i64 %507, i64 %508, i64 %509, i64 %510, i64 %511)
  br label %513

513:                                              ; preds = %474, %471
  %514 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %515 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %514, i32 0, i32 0
  %516 = load i32*, i32** %515, align 8
  %517 = icmp eq i32* %516, null
  br i1 %517, label %518, label %525

518:                                              ; preds = %513
  %519 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %520 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %519, i32 0, i32 1
  %521 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %520, align 8
  %522 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %523 = load i32, i32* %28, align 4
  %524 = call i32 %521(%struct.TYPE_16__* %522, i32 %523)
  br label %527

525:                                              ; preds = %513
  %526 = call i32 @WARN_ON_ONCE(i32 1)
  br label %527

527:                                              ; preds = %72, %89, %108, %123, %525, %518
  ret void
}

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @LSW(i64) #1

declare dso_local i64 @MSW(i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_17__*) #1

declare dso_local i32 @qlafx00_tm_iocb_entry(%struct.TYPE_17__*, %struct.req_que*, i8*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @qla2x00_process_completed_request(%struct.TYPE_17__*, %struct.req_que*, i64) #1

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_16__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qlafx00_handle_sense(%struct.TYPE_16__*, i32*, i64, i64, %struct.rsp_que*, i32) #1

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qla2x00_mark_device_lost(i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
