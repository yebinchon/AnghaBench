; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_ioctl_iosb_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_ioctl_iosb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.ioctl_iocb_entry_fx00 = type { i32, i32, %struct.qla_mt_iocb_rsp_fx00*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qla_mt_iocb_rsp_fx00 = type { %struct.ioctl_iocb_entry_fx00*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 (%struct.TYPE_12__*, i32)*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.bsg_job*, %struct.srb_iocb }
%struct.bsg_job = type { i32, %struct.TYPE_11__, %struct.ioctl_iocb_entry_fx00* }
%struct.TYPE_11__ = type { i32 }
%struct.srb_iocb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.fc_bsg_reply = type { i32, i32, %struct.qla_mt_iocb_rsp_fx00*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.qlafx00_ioctl_iosb_entry.func = private unnamed_addr constant [10 x i8] c"IOSB_IOCB\00", align 1
@SRB_FXIOCB_DCMD = common dso_local global i64 0, align 8
@SRB_FXDISC_RSP_DWRD_VALID = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i64 0, align 8
@ql_dbg_verbose = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.ioctl_iocb_entry_fx00*)* @qlafx00_ioctl_iosb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_ioctl_iosb_entry(i32* %0, %struct.req_que* %1, %struct.ioctl_iocb_entry_fx00* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.ioctl_iocb_entry_fx00*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.bsg_job*, align 8
  %10 = alloca %struct.fc_bsg_reply*, align 8
  %11 = alloca %struct.srb_iocb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qla_mt_iocb_rsp_fx00, align 8
  %14 = alloca %struct.ioctl_iocb_entry_fx00*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store %struct.ioctl_iocb_entry_fx00* %2, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %15 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.qlafx00_ioctl_iosb_entry.func, i32 0, i32 0), i64 10, i1 false)
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %18 = load %struct.req_que*, %struct.req_que** %5, align 8
  %19 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %20 = call %struct.TYPE_12__* @qla2x00_get_sp_from_handle(i32* %16, i8* %17, %struct.req_que* %18, %struct.ioctl_iocb_entry_fx00* %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %8, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = icmp ne %struct.TYPE_12__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %165

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SRB_FXIOCB_DCMD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store %struct.srb_iocb* %33, %struct.srb_iocb** %11, align 8
  %34 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %35 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %38 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  store i32 %36, i32* %40, align 4
  %41 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %42 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %45 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 4
  %48 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %49 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %52 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 4
  %55 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %56 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SRB_FXDISC_RSP_DWRD_VALID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %30
  %64 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %65 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %68 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %30
  br label %158

72:                                               ; preds = %24
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.bsg_job*, %struct.bsg_job** %75, align 8
  store %struct.bsg_job* %76, %struct.bsg_job** %9, align 8
  %77 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %78 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %77, i32 0, i32 2
  %79 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %78, align 8
  %80 = bitcast %struct.ioctl_iocb_entry_fx00* %79 to %struct.fc_bsg_reply*
  store %struct.fc_bsg_reply* %80, %struct.fc_bsg_reply** %10, align 8
  %81 = call i32 @memset(%struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 48)
  %82 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %83 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 9
  store i32 %84, i32* %85, align 8
  %86 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %87 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %91 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 7
  store i32 %92, i32* %93, align 8
  %94 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %95 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 6
  store i32 %96, i32* %97, align 4
  %98 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %99 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 5
  store i32 %100, i32* %101, align 8
  %102 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %103 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  %106 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %107 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 3
  store i32 %108, i32* %109, align 8
  %110 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %111 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  %114 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %115 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 1
  store i32 %116, i32* %117, align 8
  %118 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %13, i32 0, i32 0
  %119 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %118, align 8
  %120 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %121 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %120, i32 0, i32 2
  %122 = load %struct.qla_mt_iocb_rsp_fx00*, %struct.qla_mt_iocb_rsp_fx00** %121, align 8
  %123 = call i32 @memcpy(%struct.ioctl_iocb_entry_fx00* %119, %struct.qla_mt_iocb_rsp_fx00* %122, i32 1120)
  %124 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %125 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %124, i32 0, i32 2
  %126 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %125, align 8
  %127 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %126, i64 56
  store %struct.ioctl_iocb_entry_fx00* %127, %struct.ioctl_iocb_entry_fx00** %14, align 8
  %128 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %14, align 8
  %129 = call i32 @memcpy(%struct.ioctl_iocb_entry_fx00* %128, %struct.qla_mt_iocb_rsp_fx00* %13, i32 48)
  %130 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %131 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %130, i32 0, i32 0
  store i32 160, i32* %131, align 8
  %132 = load i64, i64* @ql_dbg_user, align 8
  %133 = load i64, i64* @ql_dbg_verbose, align 8
  %134 = add nsw i64 %132, %133
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %139 = call i32 @ql_dump_buffer(i64 %134, i32 %137, i32 20608, %struct.ioctl_iocb_entry_fx00* %138, i32 56)
  %140 = load i64, i64* @ql_dbg_user, align 8
  %141 = load i64, i64* @ql_dbg_verbose, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %14, align 8
  %147 = call i32 @ql_dump_buffer(i64 %142, i32 %145, i32 20596, %struct.ioctl_iocb_entry_fx00* %146, i32 48)
  %148 = load i32, i32* @DID_OK, align 4
  %149 = shl i32 %148, 16
  %150 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %10, align 8
  %151 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  store i32 %149, i32* %12, align 4
  %152 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %153 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %10, align 8
  %157 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %72, %71
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %160, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 %161(%struct.TYPE_12__* %162, i32 %163)
  br label %165

165:                                              ; preds = %158, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_12__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.ioctl_iocb_entry_fx00*) #2

declare dso_local i32 @memset(%struct.qla_mt_iocb_rsp_fx00*, i32, i32) #2

declare dso_local i32 @memcpy(%struct.ioctl_iocb_entry_fx00*, %struct.qla_mt_iocb_rsp_fx00*, i32) #2

declare dso_local i32 @ql_dump_buffer(i64, i32, i32, %struct.ioctl_iocb_entry_fx00*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
