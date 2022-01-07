; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_els_ct_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_els_ct_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.sts_entry_24xx = type { i32 }
%struct.TYPE_20__ = type { i32, i32 (%struct.TYPE_20__*, i32)*, i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { %struct.bsg_job*, %struct.srb_iocb }
%struct.bsg_job = type { i32, %struct.TYPE_19__, %struct.fc_bsg_reply* }
%struct.TYPE_19__ = type { i8* }
%struct.fc_bsg_reply = type { i8*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.srb_iocb = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8*, i8*, i8** }
%struct.TYPE_13__ = type { i64 }
%struct.ct_sns_rsp = type { i32 }
%struct.els_sts_entry_24xx = type { i32, i32, i32 }

@__const.qla24xx_els_ct_entry.func = private unnamed_addr constant [12 x i8] c"ELS_CT_IOCB\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"els\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ct pass-through\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Driver ELS logo\00", align 1
@ELS_IOCB_TYPE = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Completing %s: (%p) type=%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Unrecognized SRB: (%p) type=%d.\0A\00", align 1
@CS_COMPLETE = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@CS_DATA_UNDERRUN = common dso_local global i64 0, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [107 x i8] c"ELS IOCB Done -%s error hdl=%x comp_status=0x%x error subcode 1=0x%x error subcode 2=0x%x total_byte=0x%x\0A\00", align 1
@FC_CTELS_STATUS_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [122 x i8] c"ELS-CT pass-through-%s error hdl=%x comp_status-status=0x%x error subcode 1=0x%x error subcode 2=0x%x total_byte = 0x%x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"ELS-CT pass-through-%s error hdl=%x comp_status-status=0x%x error subcode 1=0x%x error subcode 2=0x%x.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.sts_entry_24xx*, i32)* @qla24xx_els_ct_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_els_ct_entry(i32* %0, %struct.req_que* %1, %struct.sts_entry_24xx* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.sts_entry_24xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.bsg_job*, align 8
  %13 = alloca %struct.fc_bsg_reply*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [3 x i8*], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.srb_iocb*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.req_que* %1, %struct.req_que** %6, align 8
  store %struct.sts_entry_24xx* %2, %struct.sts_entry_24xx** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = bitcast [12 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.qla24xx_els_ct_entry.func, i32 0, i32 0), i64 12, i1 false)
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %21 = load %struct.req_que*, %struct.req_que** %6, align 8
  %22 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %23 = call %struct.TYPE_20__* @qla2x00_get_sp_from_handle(i32* %19, i8* %20, %struct.req_que* %21, %struct.sts_entry_24xx* %22)
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %11, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %25 = icmp ne %struct.TYPE_20__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %292

27:                                               ; preds = %4
  store i8* null, i8** %10, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %76 [
    i32 129, label %31
    i32 130, label %31
    i32 132, label %32
    i32 128, label %33
    i32 131, label %52
  ]

31:                                               ; preds = %27, %27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %84

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %84

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ELS_IOCB_TYPE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i64, i64* @ql_dbg_user, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i64, i32*, i32, i8*, ...) @ql_dbg(i64 %38, i32* %39, i32 20551, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %40, %struct.TYPE_20__* %41, i32 %44)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %47, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %50 = call i32 %48(%struct.TYPE_20__* %49, i32 0)
  br label %292

51:                                               ; preds = %33
  br label %84

52:                                               ; preds = %27
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %57 = bitcast %struct.sts_entry_24xx* %56 to i32*
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.ct_sns_rsp*
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @qla2x00_chk_ms_status(i32 %55, i32* %57, %struct.ct_sns_rsp* %65, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 %72(%struct.TYPE_20__* %73, i32 %74)
  br label %292

76:                                               ; preds = %27
  %77 = load i64, i64* @ql_dbg_user, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i64, i32*, i32, i8*, ...) @ql_dbg(i64 %77, i32* %78, i32 20542, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_20__* %79, i32 %82)
  br label %292

84:                                               ; preds = %51, %32, %31
  %85 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %86 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le16_to_cpu(i32 %87)
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  store i8* %88, i8** %89, align 16
  %90 = ptrtoint i8* %88 to i64
  store i64 %90, i64* %14, align 8
  %91 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %92 = bitcast %struct.sts_entry_24xx* %91 to %struct.els_sts_entry_24xx*
  %93 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @le16_to_cpu(i32 %94)
  %96 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 1
  store i8* %95, i8** %96, align 8
  %97 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %98 = bitcast %struct.sts_entry_24xx* %97 to %struct.els_sts_entry_24xx*
  %99 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le16_to_cpu(i32 %100)
  %102 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 2
  store i8* %101, i8** %102, align 16
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ELS_IOCB_TYPE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %188

106:                                              ; preds = %84
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  store %struct.srb_iocb* %109, %struct.srb_iocb** %17, align 8
  %110 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %111 = load i8*, i8** %110, align 16
  %112 = load %struct.srb_iocb*, %struct.srb_iocb** %17, align 8
  %113 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  store i8* %111, i8** %117, align 8
  %118 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.srb_iocb*, %struct.srb_iocb** %17, align 8
  %121 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  store i8* %119, i8** %125, align 8
  %126 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 2
  %127 = load i8*, i8** %126, align 16
  %128 = load %struct.srb_iocb*, %struct.srb_iocb** %17, align 8
  %129 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  store i8* %127, i8** %133, align 8
  %134 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %135 = load i8*, i8** %134, align 16
  %136 = load %struct.srb_iocb*, %struct.srb_iocb** %17, align 8
  %137 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  store i8* %135, i8** %139, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* @CS_COMPLETE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %106
  %144 = load i32, i32* @DID_OK, align 4
  %145 = shl i32 %144, 16
  store i32 %145, i32* %16, align 4
  br label %170

146:                                              ; preds = %106
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* @CS_DATA_UNDERRUN, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i32, i32* @DID_OK, align 4
  %152 = shl i32 %151, 16
  store i32 %152, i32* %16, align 4
  %153 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %154 = bitcast %struct.sts_entry_24xx* %153 to %struct.els_sts_entry_24xx*
  %155 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @le16_to_cpu(i32 %156)
  %158 = load %struct.srb_iocb*, %struct.srb_iocb** %17, align 8
  %159 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  store i8* %157, i8** %161, align 8
  br label %169

162:                                              ; preds = %146
  %163 = load %struct.srb_iocb*, %struct.srb_iocb** %17, align 8
  %164 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i8* null, i8** %166, align 8
  %167 = load i32, i32* @DID_ERROR, align 4
  %168 = shl i32 %167, 16
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %162, %150
  br label %170

170:                                              ; preds = %169, %143
  %171 = load i64, i64* @ql_dbg_user, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = load i8*, i8** %10, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i64, i64* %14, align 8
  %178 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 1
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 2
  %181 = load i8*, i8** %180, align 16
  %182 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %183 = bitcast %struct.sts_entry_24xx* %182 to %struct.els_sts_entry_24xx*
  %184 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @le16_to_cpu(i32 %185)
  %187 = call i32 (i64, i32*, i32, i8*, ...) @ql_dbg(i64 %171, i32* %172, i32 20543, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i8* %173, i32 %176, i64 %177, i8* %179, i8* %181, i8* %186)
  br label %285

188:                                              ; preds = %84
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load %struct.bsg_job*, %struct.bsg_job** %191, align 8
  store %struct.bsg_job* %192, %struct.bsg_job** %12, align 8
  %193 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %194 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %193, i32 0, i32 2
  %195 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %194, align 8
  store %struct.fc_bsg_reply* %195, %struct.fc_bsg_reply** %13, align 8
  %196 = load i32, i32* @FC_CTELS_STATUS_OK, align 4
  %197 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %198 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  store i32 %196, i32* %200, align 8
  %201 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %202 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %201, i32 0, i32 0
  store i32 40, i32* %202, align 8
  %203 = load i64, i64* %14, align 8
  %204 = load i64, i64* @CS_COMPLETE, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %273

206:                                              ; preds = %188
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* @CS_DATA_UNDERRUN, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %237

210:                                              ; preds = %206
  %211 = load i32, i32* @DID_OK, align 4
  %212 = shl i32 %211, 16
  store i32 %212, i32* %16, align 4
  %213 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %214 = bitcast %struct.sts_entry_24xx* %213 to %struct.els_sts_entry_24xx*
  %215 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @le16_to_cpu(i32 %216)
  %218 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %219 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %218, i32 0, i32 0
  store i8* %217, i8** %219, align 8
  %220 = load i64, i64* @ql_dbg_user, align 8
  %221 = load i32*, i32** %5, align 8
  %222 = load i8*, i8** %10, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load i64, i64* %14, align 8
  %227 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 1
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 2
  %230 = load i8*, i8** %229, align 16
  %231 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %232 = bitcast %struct.sts_entry_24xx* %231 to %struct.els_sts_entry_24xx*
  %233 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @le16_to_cpu(i32 %234)
  %236 = call i32 (i64, i32*, i32, i8*, ...) @ql_dbg(i64 %220, i32* %221, i32 20543, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.6, i64 0, i64 0), i8* %222, i32 %225, i64 %226, i8* %228, i8* %230, i8* %235)
  br label %260

237:                                              ; preds = %206
  %238 = load i64, i64* @ql_dbg_user, align 8
  %239 = load i32*, i32** %5, align 8
  %240 = load i8*, i8** %10, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i64, i64* %14, align 8
  %245 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %246 = bitcast %struct.sts_entry_24xx* %245 to %struct.els_sts_entry_24xx*
  %247 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @le16_to_cpu(i32 %248)
  %250 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %251 = bitcast %struct.sts_entry_24xx* %250 to %struct.els_sts_entry_24xx*
  %252 = getelementptr inbounds %struct.els_sts_entry_24xx, %struct.els_sts_entry_24xx* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @le16_to_cpu(i32 %253)
  %255 = call i32 (i64, i32*, i32, i8*, ...) @ql_dbg(i64 %238, i32* %239, i32 20544, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i64 0, i64 0), i8* %240, i32 %243, i64 %244, i8* %249, i8* %254)
  %256 = load i32, i32* @DID_ERROR, align 4
  %257 = shl i32 %256, 16
  store i32 %257, i32* %16, align 4
  %258 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %259 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %258, i32 0, i32 0
  store i8* null, i8** %259, align 8
  br label %260

260:                                              ; preds = %237, %210
  %261 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %262 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %261, i32 0, i32 2
  %263 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %262, align 8
  %264 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %263, i64 16
  %265 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %266 = call i32 @memcpy(%struct.fc_bsg_reply* %264, i8** %265, i32 24)
  %267 = load i64, i64* @ql_dbg_user, align 8
  %268 = load i64, i64* @ql_dbg_buffer, align 8
  %269 = add nsw i64 %267, %268
  %270 = load i32*, i32** %5, align 8
  %271 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %7, align 8
  %272 = call i32 @ql_dump_buffer(i64 %269, i32* %270, i32 20566, %struct.sts_entry_24xx* %271, i32 4)
  br label %284

273:                                              ; preds = %188
  %274 = load i32, i32* @DID_OK, align 4
  %275 = shl i32 %274, 16
  store i32 %275, i32* %16, align 4
  %276 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %277 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %281 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %280, i32 0, i32 0
  store i8* %279, i8** %281, align 8
  %282 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %283 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %282, i32 0, i32 0
  store i32 0, i32* %283, align 8
  br label %284

284:                                              ; preds = %273, %260
  br label %285

285:                                              ; preds = %284, %170
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 1
  %288 = load i32 (%struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_20__*, i32)** %287, align 8
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %290 = load i32, i32* %16, align 4
  %291 = call i32 %288(%struct.TYPE_20__* %289, i32 %290)
  br label %292

292:                                              ; preds = %285, %76, %52, %37, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_20__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.sts_entry_24xx*) #2

declare dso_local i32 @ql_dbg(i64, i32*, i32, i8*, ...) #2

declare dso_local i32 @qla2x00_chk_ms_status(i32, i32*, %struct.ct_sns_rsp*, i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @memcpy(%struct.fc_bsg_reply*, i8**, i32) #2

declare dso_local i32 @ql_dump_buffer(i64, i32*, i32, %struct.sts_entry_24xx*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
