; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_ct_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_ct_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 (%struct.TYPE_23__*, i32)*, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.bsg_job* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.bsg_job = type { i32, %struct.TYPE_17__, %struct.fc_bsg_reply* }
%struct.TYPE_17__ = type { i8* }
%struct.fc_bsg_reply = type { i8*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.ct_sns_rsp = type { i32 }

@__const.qla2x00_ct_entry.func = private unnamed_addr constant [8 x i8] c"CT_IOCB\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"ct pass-through\00", align 1
@FC_CTELS_STATUS_OK = common dso_local global i32 0, align 4
@CS_COMPLETE = common dso_local global i8* null, align 8
@CS_DATA_UNDERRUN = common dso_local global i8* null, align 8
@DID_OK = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"CT pass-through-%s error comp_status=0x%x total_byte=0x%x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"CT pass-through-%s error comp_status=0x%x.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.TYPE_22__*, i32)* @qla2x00_ct_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_ct_entry(i32* %0, %struct.req_que* %1, %struct.TYPE_22__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.bsg_job*, align 8
  %13 = alloca %struct.fc_bsg_reply*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.req_que* %1, %struct.req_que** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = bitcast [8 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.qla2x00_ct_entry.func, i32 0, i32 0), i64 8, i1 false)
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %19 = load %struct.req_que*, %struct.req_que** %6, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %21 = call %struct.TYPE_23__* @qla2x00_get_sp_from_handle(i32* %17, i8* %18, %struct.req_que* %19, %struct.TYPE_22__* %20)
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %11, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %23 = icmp ne %struct.TYPE_23__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %124

25:                                               ; preds = %4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %117 [
    i32 129, label %29
    i32 128, label %101
  ]

29:                                               ; preds = %25
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load %struct.bsg_job*, %struct.bsg_job** %32, align 8
  store %struct.bsg_job* %33, %struct.bsg_job** %12, align 8
  %34 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %35 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %34, i32 0, i32 2
  %36 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %35, align 8
  store %struct.fc_bsg_reply* %36, %struct.fc_bsg_reply** %13, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le16_to_cpu(i32 %39)
  store i8* %40, i8** %14, align 8
  %41 = load i32, i32* @FC_CTELS_STATUS_OK, align 4
  %42 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %43 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %47 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %46, i32 0, i32 0
  store i32 16, i32* %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** @CS_COMPLETE, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %89

51:                                               ; preds = %29
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** @CS_DATA_UNDERRUN, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* @DID_OK, align 4
  %57 = shl i32 %56, 16
  store i32 %57, i32* %15, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le16_to_cpu(i32 %60)
  %62 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %63 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @ql_log_warn, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %69 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i32, i32*, i32, i8*, i8*, i8*, ...) @ql_log(i32 %64, i32* %65, i32 20552, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %66, i8* %67, i8* %70)
  br label %82

72:                                               ; preds = %51
  %73 = load i32, i32* @ql_log_warn, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 (i32, i32*, i32, i8*, i8*, i8*, ...) @ql_log(i32 %73, i32* %74, i32 20553, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %75, i8* %76)
  %78 = load i32, i32* @DID_ERROR, align 4
  %79 = shl i32 %78, 16
  store i32 %79, i32* %15, align 4
  %80 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %81 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %80, i32 0, i32 0
  store i8* null, i8** %81, align 8
  br label %82

82:                                               ; preds = %72, %55
  %83 = load i64, i64* @ql_dbg_async, align 8
  %84 = load i64, i64* @ql_dbg_buffer, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %88 = call i32 @ql_dump_buffer(i64 %85, i32* %86, i32 20533, %struct.TYPE_22__* %87, i32 8)
  br label %100

89:                                               ; preds = %29
  %90 = load i32, i32* @DID_OK, align 4
  %91 = shl i32 %90, 16
  store i32 %91, i32* %15, align 4
  %92 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %93 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %13, align 8
  %97 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.bsg_job*, %struct.bsg_job** %12, align 8
  %99 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %89, %82
  br label %117

101:                                              ; preds = %25
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %104 = bitcast %struct.TYPE_22__* %103 to i32*
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.ct_sns_rsp*
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @qla2x00_chk_ms_status(i32* %102, i32* %104, %struct.ct_sns_rsp* %112, i32 %115)
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %25, %101, %100
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = load i32 (%struct.TYPE_23__*, i32)*, i32 (%struct.TYPE_23__*, i32)** %119, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 %120(%struct.TYPE_23__* %121, i32 %122)
  br label %124

124:                                              ; preds = %117, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_23__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.TYPE_22__*) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @ql_dump_buffer(i64, i32*, i32, %struct.TYPE_22__*, i32) #2

declare dso_local i32 @qla2x00_chk_ms_status(i32*, i32*, %struct.ct_sns_rsp*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
