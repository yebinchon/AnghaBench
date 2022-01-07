; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla25xx_process_bidir_status_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla25xx_process_bidir_status_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_20__, i32, %struct.qla_hw_data* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.qla_hw_data = type { i32 }
%struct.req_que = type { i64, %struct.TYPE_24__**, i32 }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_24__*, i32)*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.bsg_job* }
%struct.bsg_job = type { i32, %struct.TYPE_19__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_19__ = type { i64 }
%struct.fc_bsg_reply = type { %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64* }
%struct.fc_bsg_request = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.sts_entry_24xx = type { i32, i32 }

@EXT_STATUS_OK = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid SCSI completion handle 0x%x.\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Req:%d: Invalid ISP SCSI completion handle(0x%x)\0A\00", align 1
@SS_MASK = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Command completed with data overrun thread_id=%d\0A\00", align 1
@EXT_STATUS_DATA_OVERRUN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"Command completed with data underrun thread_id=%d\0A\00", align 1
@EXT_STATUS_DATA_UNDERRUN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"Command completed with read data overrun thread_id=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Command completed with read and write data overrun thread_id=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Command completed with read data over and write data underrun thread_id=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Command completed with read data underrun thread_id=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"Command completed with read data under and write data overrun thread_id=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Command completed with read and write data underrun thread_id=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Command completed with data DMA error thread_id=%d\0A\00", align 1
@EXT_STATUS_DMA_ERR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"Command completed with timeout thread_id=%d\0A\00", align 1
@EXT_STATUS_TIMEOUT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [60 x i8] c"Command completed with completion status=0x%x thread_id=%d\0A\00", align 1
@EXT_STATUS_ERR = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8*, %struct.req_que*, i64)* @qla25xx_process_bidir_status_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla25xx_process_bidir_status_iocb(%struct.TYPE_15__* %0, i8* %1, %struct.req_que* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.req_que*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.bsg_job*, align 8
  %16 = alloca %struct.fc_bsg_request*, align 8
  %17 = alloca %struct.fc_bsg_reply*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.sts_entry_24xx*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.req_que* %2, %struct.req_que** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %21, align 8
  store %struct.qla_hw_data* %22, %struct.qla_hw_data** %9, align 8
  %23 = load i64, i64* @EXT_STATUS_OK, align 8
  store i64 %23, i64* %14, align 8
  store %struct.bsg_job* null, %struct.bsg_job** %15, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %18, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.sts_entry_24xx*
  store %struct.sts_entry_24xx* %27, %struct.sts_entry_24xx** %19, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.req_que*, %struct.req_que** %7, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = load i32, i32* @ql_log_warn, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i64, ...) @ql_log(i32 %34, %struct.TYPE_15__* %35, i32 28847, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  br label %228

42:                                               ; preds = %4
  %43 = load %struct.req_que*, %struct.req_que** %7, align 8
  %44 = getelementptr inbounds %struct.req_que, %struct.req_que* %43, i32 0, i32 1
  %45 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %45, i64 %46
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %10, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %50 = icmp ne %struct.TYPE_24__* %49, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @ql_log_warn, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = load %struct.req_que*, %struct.req_que** %7, align 8
  %55 = getelementptr inbounds %struct.req_que, %struct.req_que* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i64, ...) @ql_log(i32 %52, %struct.TYPE_15__* %53, i32 28848, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %228

64:                                               ; preds = %42
  %65 = load %struct.req_que*, %struct.req_que** %7, align 8
  %66 = getelementptr inbounds %struct.req_que, %struct.req_que* %65, i32 0, i32 1
  %67 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %67, i64 %68
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %69, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load %struct.bsg_job*, %struct.bsg_job** %72, align 8
  store %struct.bsg_job* %73, %struct.bsg_job** %15, align 8
  %74 = load %struct.bsg_job*, %struct.bsg_job** %15, align 8
  %75 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %74, i32 0, i32 3
  %76 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %75, align 8
  store %struct.fc_bsg_request* %76, %struct.fc_bsg_request** %16, align 8
  %77 = load %struct.bsg_job*, %struct.bsg_job** %15, align 8
  %78 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %77, i32 0, i32 2
  %79 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %78, align 8
  store %struct.fc_bsg_reply* %79, %struct.fc_bsg_reply** %17, align 8
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %81 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %64
  %84 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %19, align 8
  %85 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %19, align 8
  %89 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  %92 = load i32, i32* @SS_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %12, align 4
  br label %105

94:                                               ; preds = %64
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = load i32, i32* @SS_MASK, align 4
  %104 = and i32 %102, %103
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %94, %83
  %106 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %16, align 8
  %107 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  switch i32 %113, label %201 [
    i32 131, label %114
    i32 130, label %141
    i32 129, label %147
    i32 137, label %153
    i32 133, label %159
    i32 136, label %165
    i32 135, label %171
    i32 134, label %177
    i32 132, label %183
    i32 138, label %189
    i32 128, label %195
  ]

114:                                              ; preds = %105
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %114
  %118 = load %struct.bsg_job*, %struct.bsg_job** %15, align 8
  %119 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  %125 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %126
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load i64, i64* @EXT_STATUS_OK, align 8
  store i64 %139, i64* %14, align 8
  br label %140

140:                                              ; preds = %117, %114
  br label %211

141:                                              ; preds = %105
  %142 = load i32, i32* @ql_dbg_user, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %142, %struct.TYPE_15__* %143, i32 28849, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i64, i64* @EXT_STATUS_DATA_OVERRUN, align 8
  store i64 %146, i64* %14, align 8
  br label %208

147:                                              ; preds = %105
  %148 = load i32, i32* @ql_dbg_user, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %148, %struct.TYPE_15__* %149, i32 28850, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load i64, i64* @EXT_STATUS_DATA_UNDERRUN, align 8
  store i64 %152, i64* %14, align 8
  br label %208

153:                                              ; preds = %105
  %154 = load i32, i32* @ql_dbg_user, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %154, %struct.TYPE_15__* %155, i32 28851, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load i64, i64* @EXT_STATUS_DATA_OVERRUN, align 8
  store i64 %158, i64* %14, align 8
  br label %208

159:                                              ; preds = %105
  %160 = load i32, i32* @ql_dbg_user, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %160, %struct.TYPE_15__* %161, i32 28852, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = load i64, i64* @EXT_STATUS_DATA_OVERRUN, align 8
  store i64 %164, i64* %14, align 8
  br label %208

165:                                              ; preds = %105
  %166 = load i32, i32* @ql_dbg_user, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %166, %struct.TYPE_15__* %167, i32 28853, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  %170 = load i64, i64* @EXT_STATUS_DATA_OVERRUN, align 8
  store i64 %170, i64* %14, align 8
  br label %208

171:                                              ; preds = %105
  %172 = load i32, i32* @ql_dbg_user, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %174 = load i32, i32* %13, align 4
  %175 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %172, %struct.TYPE_15__* %173, i32 28854, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %174)
  %176 = load i64, i64* @EXT_STATUS_DATA_UNDERRUN, align 8
  store i64 %176, i64* %14, align 8
  br label %208

177:                                              ; preds = %105
  %178 = load i32, i32* @ql_dbg_user, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %178, %struct.TYPE_15__* %179, i32 28855, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 %180)
  %182 = load i64, i64* @EXT_STATUS_DATA_UNDERRUN, align 8
  store i64 %182, i64* %14, align 8
  br label %208

183:                                              ; preds = %105
  %184 = load i32, i32* @ql_dbg_user, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %184, %struct.TYPE_15__* %185, i32 28856, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i32 %186)
  %188 = load i64, i64* @EXT_STATUS_DATA_UNDERRUN, align 8
  store i64 %188, i64* %14, align 8
  br label %208

189:                                              ; preds = %105
  %190 = load i32, i32* @ql_dbg_user, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %190, %struct.TYPE_15__* %191, i32 28857, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %192)
  %194 = load i64, i64* @EXT_STATUS_DMA_ERR, align 8
  store i64 %194, i64* %14, align 8
  br label %208

195:                                              ; preds = %105
  %196 = load i32, i32* @ql_dbg_user, align 4
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %198 = load i32, i32* %13, align 4
  %199 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %196, %struct.TYPE_15__* %197, i32 28858, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %198)
  %200 = load i64, i64* @EXT_STATUS_TIMEOUT, align 8
  store i64 %200, i64* %14, align 8
  br label %208

201:                                              ; preds = %105
  %202 = load i32, i32* @ql_dbg_user, align 4
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %13, align 4
  %206 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, i32, ...) @ql_dbg(i32 %202, %struct.TYPE_15__* %203, i32 28859, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i32 %204, i32 %205)
  %207 = load i64, i64* @EXT_STATUS_ERR, align 8
  store i64 %207, i64* %14, align 8
  br label %208

208:                                              ; preds = %201, %195, %189, %183, %177, %171, %165, %159, %153, %147, %141
  %209 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  %210 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %209, i32 0, i32 1
  store i64 0, i64* %210, align 8
  br label %211

211:                                              ; preds = %208, %140
  %212 = load i64, i64* %14, align 8
  %213 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  %214 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 0
  store i64 %212, i64* %218, align 8
  %219 = load %struct.bsg_job*, %struct.bsg_job** %15, align 8
  %220 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %219, i32 0, i32 0
  store i32 16, i32* %220, align 8
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 0
  %223 = load i32 (%struct.TYPE_24__*, i32)*, i32 (%struct.TYPE_24__*, i32)** %222, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %225 = load i32, i32* @DID_OK, align 4
  %226 = shl i32 %225, 16
  %227 = call i32 %223(%struct.TYPE_24__* %224, i32 %226)
  br label %228

228:                                              ; preds = %211, %51, %33
  ret void
}

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*, i64, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_15__*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
