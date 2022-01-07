; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_text_request_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_text_request_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task_params = type { i64, i64, %struct.e4_iscsi_task_context* }
%struct.e4_iscsi_task_context = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iscsi_text_request_hdr = type { i32 }
%struct.scsi_sgl_task_params = type { i32 }
%struct.data_hdr = type { i32 }
%struct.iscsi_common_hdr = type { i32 }

@ISCSI_TASK_TYPE_MIDPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_initiator_text_request_task(%struct.iscsi_task_params* %0, %struct.iscsi_text_request_hdr* %1, %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params* %3) #0 {
  %5 = alloca %struct.iscsi_task_params*, align 8
  %6 = alloca %struct.iscsi_text_request_hdr*, align 8
  %7 = alloca %struct.scsi_sgl_task_params*, align 8
  %8 = alloca %struct.scsi_sgl_task_params*, align 8
  %9 = alloca %struct.e4_iscsi_task_context*, align 8
  store %struct.iscsi_task_params* %0, %struct.iscsi_task_params** %5, align 8
  store %struct.iscsi_text_request_hdr* %1, %struct.iscsi_text_request_hdr** %6, align 8
  store %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params** %7, align 8
  store %struct.scsi_sgl_task_params* %3, %struct.scsi_sgl_task_params** %8, align 8
  %10 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %10, i32 0, i32 2
  %12 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %11, align 8
  store %struct.e4_iscsi_task_context* %12, %struct.e4_iscsi_task_context** %9, align 8
  %13 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %14 = load %struct.iscsi_text_request_hdr*, %struct.iscsi_text_request_hdr** %6, align 8
  %15 = bitcast %struct.iscsi_text_request_hdr* %14 to %struct.data_hdr*
  %16 = load i32, i32* @ISCSI_TASK_TYPE_MIDPATH, align 4
  %17 = call i32 @init_default_iscsi_task(%struct.iscsi_task_params* %13, %struct.data_hdr* %15, i32 %16)
  %18 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %24 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %28 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %32 = call i32 @init_scsi_sgl_context(i32* %26, i32* %30, %struct.scsi_sgl_task_params* %31)
  br label %33

33:                                               ; preds = %22, %4
  %34 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %40 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %43 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %46 = call i32 @init_scsi_sgl_context(i32* %41, i32* %44, %struct.scsi_sgl_task_params* %45)
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %49 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %54 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %57

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ %55, %52 ], [ 0, %56 ]
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %61 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %64 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %63, i32 0, i32 1
  %65 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %66 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %65, i32 0, i32 0
  %67 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %68 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %73 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  br label %76

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ 0, %75 ]
  %78 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %84 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  br label %87

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32 [ %85, %82 ], [ 0, %86 ]
  %89 = call i32 @init_ustorm_task_contexts(i32* %64, i32* %66, i32 %77, i32 %88, i32 0, i32 0)
  %90 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %91 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %92 = load %struct.iscsi_text_request_hdr*, %struct.iscsi_text_request_hdr** %6, align 8
  %93 = bitcast %struct.iscsi_text_request_hdr* %92 to %struct.iscsi_common_hdr*
  %94 = load i32, i32* @ISCSI_TASK_TYPE_MIDPATH, align 4
  %95 = call i32 @init_sqe(%struct.iscsi_task_params* %90, %struct.scsi_sgl_task_params* %91, i32* null, %struct.iscsi_common_hdr* %93, i32* null, i32 %94, i32 0)
  ret i32 0
}

declare dso_local i32 @init_default_iscsi_task(%struct.iscsi_task_params*, %struct.data_hdr*, i32) #1

declare dso_local i32 @init_scsi_sgl_context(i32*, i32*, %struct.scsi_sgl_task_params*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @init_ustorm_task_contexts(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @init_sqe(%struct.iscsi_task_params*, %struct.scsi_sgl_task_params*, i32*, %struct.iscsi_common_hdr*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
