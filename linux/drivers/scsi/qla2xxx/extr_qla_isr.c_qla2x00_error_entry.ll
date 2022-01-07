; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_error_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_error_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, %struct.req_que** }
%struct.req_que = type { i32 }
%struct.rsp_que = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32)* }

@__const.qla2x00_error_entry.func = private unnamed_addr constant [11 x i8] c"ERROR-IOCB\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"iocb type %xh with error status %xh, handle %xh, rspq id %d\0A\00", align 1
@RF_BUSY = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@QLA_TGT_HANDLE_MASK = common dso_local global i32 0, align 4
@QLA_TGT_SKIP_HANDLE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Error entry - invalid handle/queue (%04x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.rsp_que*, %struct.TYPE_12__*)* @qla2x00_error_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_error_entry(%struct.TYPE_14__* %0, %struct.rsp_que* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.rsp_que*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca [11 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca %struct.req_que*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %9, align 8
  %17 = bitcast [11 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.qla2x00_error_entry.func, i32 0, i32 0), i64 11, i1 false)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @MSW(i32 %20)
  store i64 %21, i64* %11, align 8
  store %struct.req_que* null, %struct.req_que** %12, align 8
  %22 = load i32, i32* @DID_ERROR, align 4
  %23 = shl i32 %22, 16
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @ql_dbg_async, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rsp_que*, %struct.rsp_que** %6, align 8
  %36 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ql_dbg(i32 %24, %struct.TYPE_14__* %25, i32 20522, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %3
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 1
  %47 = load %struct.req_que**, %struct.req_que*** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.req_que*, %struct.req_que** %47, i64 %48
  %50 = load %struct.req_que*, %struct.req_que** %49, align 8
  %51 = icmp ne %struct.req_que* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44, %3
  br label %102

53:                                               ; preds = %44
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 1
  %56 = load %struct.req_que**, %struct.req_que*** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.req_que*, %struct.req_que** %56, i64 %57
  %59 = load %struct.req_que*, %struct.req_que** %58, align 8
  store %struct.req_que* %59, %struct.req_que** %12, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RF_BUSY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* @DID_BUS_BUSY, align 4
  %68 = shl i32 %67, 16
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %66, %53
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @QLA_TGT_HANDLE_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = load i32, i32* @QLA_TGT_SKIP_HANDLE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %107

79:                                               ; preds = %69
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %84 [
    i32 130, label %83
    i32 128, label %83
    i32 129, label %83
    i32 132, label %83
    i32 134, label %83
    i32 133, label %83
    i32 138, label %83
    i32 131, label %83
    i32 137, label %100
    i32 135, label %100
    i32 136, label %100
  ]

83:                                               ; preds = %79, %79, %79, %79, %79, %79, %79, %79
  br label %84

84:                                               ; preds = %79, %83
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %87 = load %struct.req_que*, %struct.req_que** %12, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = call %struct.TYPE_13__* @qla2x00_get_sp_from_handle(%struct.TYPE_14__* %85, i8* %86, %struct.req_que* %87, %struct.TYPE_12__* %88)
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %8, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 %95(%struct.TYPE_13__* %96, i32 %97)
  store i32 0, i32* %4, align 4
  br label %107

99:                                               ; preds = %84
  br label %101

100:                                              ; preds = %79, %79, %79
  store i32 1, i32* %4, align 4
  br label %107

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %52
  %103 = load i32, i32* @ql_log_warn, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @ql_log(i32 %103, %struct.TYPE_14__* %104, i32 20528, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %102, %100, %92, %78
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @MSW(i32) #2

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_14__*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_13__* @qla2x00_get_sp_from_handle(%struct.TYPE_14__*, i8*, %struct.req_que*, %struct.TYPE_12__*) #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_14__*, i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
