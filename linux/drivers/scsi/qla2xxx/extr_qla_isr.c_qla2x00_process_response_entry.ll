; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_process_response_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_process_response_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.rsp_que = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i32* }
%struct.mbx_entry = type { i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Received unknown response pkt type %x entry status=%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.rsp_que*, %struct.TYPE_7__*)* @qla2x00_process_response_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_process_response_entry(%struct.scsi_qla_host* %0, %struct.rsp_que* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %91 [
    i32 130, label %14
    i32 129, label %19
    i32 128, label %45
    i32 131, label %71
    i32 132, label %76
    i32 133, label %84
  ]

14:                                               ; preds = %3
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %16 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = call i32 @qla2x00_status_entry(%struct.scsi_qla_host* %15, %struct.rsp_que* %16, %struct.TYPE_7__* %17)
  br label %101

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = bitcast %struct.TYPE_7__* %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %41, %19
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %31 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %32 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qla2x00_process_completed_request(%struct.scsi_qla_host* %30, i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %29
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %25

44:                                               ; preds = %25
  br label %101

45:                                               ; preds = %3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = bitcast %struct.TYPE_7__* %46 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %8, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %67, %45
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %57 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %58 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @qla2x00_process_completed_request(%struct.scsi_qla_host* %56, i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %55
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %51

70:                                               ; preds = %51
  br label %101

71:                                               ; preds = %3
  %72 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = bitcast %struct.TYPE_7__* %73 to i32*
  %75 = call i32 @qla2x00_status_cont_entry(%struct.rsp_que* %72, i32* %74)
  br label %101

76:                                               ; preds = %3
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %78 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %79 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = bitcast %struct.TYPE_7__* %81 to %struct.mbx_entry*
  %83 = call i32 @qla2x00_mbx_iocb_entry(%struct.scsi_qla_host* %77, i32 %80, %struct.mbx_entry* %82)
  br label %101

84:                                               ; preds = %3
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %86 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %87 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = call i32 @qla2x00_ct_entry(%struct.scsi_qla_host* %85, i32 %88, %struct.TYPE_7__* %89, i32 133)
  br label %101

91:                                               ; preds = %3
  %92 = load i32, i32* @ql_log_warn, align 4
  %93 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ql_log(i32 %92, %struct.scsi_qla_host* %93, i32 20554, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %91, %84, %76, %71, %70, %44, %14
  ret void
}

declare dso_local i32 @qla2x00_status_entry(%struct.scsi_qla_host*, %struct.rsp_que*, %struct.TYPE_7__*) #1

declare dso_local i32 @qla2x00_process_completed_request(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @qla2x00_status_cont_entry(%struct.rsp_que*, i32*) #1

declare dso_local i32 @qla2x00_mbx_iocb_entry(%struct.scsi_qla_host*, i32, %struct.mbx_entry*) #1

declare dso_local i32 @qla2x00_ct_entry(%struct.scsi_qla_host*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
