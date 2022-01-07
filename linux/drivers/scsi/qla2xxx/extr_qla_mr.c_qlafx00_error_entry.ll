; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_error_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_error_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.req_que** }
%struct.req_que = type { i32 }
%struct.rsp_que = type { i32 }
%struct.sts_entry_fx00 = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32)* }

@__const.qlafx00_error_entry.func = private unnamed_addr constant [11 x i8] c"ERROR-IOCB\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.rsp_que*, %struct.sts_entry_fx00*)* @qlafx00_error_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_error_entry(%struct.TYPE_9__* %0, %struct.rsp_que* %1, %struct.sts_entry_fx00* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca %struct.sts_entry_fx00*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca [11 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca %struct.req_que*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  store %struct.sts_entry_fx00* %2, %struct.sts_entry_fx00** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %8, align 8
  %16 = bitcast [11 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.qlafx00_error_entry.func, i32 0, i32 0), i64 11, i1 false)
  store i64 0, i64* %10, align 8
  store %struct.req_que* null, %struct.req_que** %11, align 8
  %17 = load i32, i32* @DID_ERROR, align 4
  %18 = shl i32 %17, 16
  store i32 %18, i32* %12, align 4
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 0
  %21 = load %struct.req_que**, %struct.req_que*** %20, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.req_que*, %struct.req_que** %21, i64 %22
  %24 = load %struct.req_que*, %struct.req_que** %23, align 8
  store %struct.req_que* %24, %struct.req_que** %11, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %27 = load %struct.req_que*, %struct.req_que** %11, align 8
  %28 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %6, align 8
  %29 = call %struct.TYPE_8__* @qla2x00_get_sp_from_handle(%struct.TYPE_9__* %25, i8* %26, %struct.req_que* %27, %struct.sts_entry_fx00* %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 %35(%struct.TYPE_8__* %36, i32 %37)
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_9__* %44)
  br label %46

46:                                               ; preds = %39, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_8__* @qla2x00_get_sp_from_handle(%struct.TYPE_9__*, i8*, %struct.req_que*, %struct.sts_entry_fx00*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
