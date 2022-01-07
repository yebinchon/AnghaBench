; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_nop_out_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_initiator_nop_out_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task_params = type { i64, i64, %struct.e4_iscsi_task_context* }
%struct.e4_iscsi_task_context = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iscsi_nop_out_hdr = type { i64 }
%struct.scsi_sgl_task_params = type { i32 }
%struct.data_hdr = type { i32 }
%struct.iscsi_common_hdr = type { i32 }

@ISCSI_TASK_TYPE_MIDPATH = common dso_local global i32 0, align 4
@ISCSI_ITT_ALL_ONES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_initiator_nop_out_task(%struct.iscsi_task_params* %0, %struct.iscsi_nop_out_hdr* %1, %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params* %3) #0 {
  %5 = alloca %struct.iscsi_task_params*, align 8
  %6 = alloca %struct.iscsi_nop_out_hdr*, align 8
  %7 = alloca %struct.scsi_sgl_task_params*, align 8
  %8 = alloca %struct.scsi_sgl_task_params*, align 8
  %9 = alloca %struct.e4_iscsi_task_context*, align 8
  store %struct.iscsi_task_params* %0, %struct.iscsi_task_params** %5, align 8
  store %struct.iscsi_nop_out_hdr* %1, %struct.iscsi_nop_out_hdr** %6, align 8
  store %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params** %7, align 8
  store %struct.scsi_sgl_task_params* %3, %struct.scsi_sgl_task_params** %8, align 8
  %10 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %10, i32 0, i32 2
  %12 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %11, align 8
  store %struct.e4_iscsi_task_context* %12, %struct.e4_iscsi_task_context** %9, align 8
  %13 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %14 = load %struct.iscsi_nop_out_hdr*, %struct.iscsi_nop_out_hdr** %6, align 8
  %15 = bitcast %struct.iscsi_nop_out_hdr* %14 to %struct.data_hdr*
  %16 = load i32, i32* @ISCSI_TASK_TYPE_MIDPATH, align 4
  %17 = call i32 @init_default_iscsi_task(%struct.iscsi_task_params* %13, %struct.data_hdr* %15, i32 %16)
  %18 = load %struct.iscsi_nop_out_hdr*, %struct.iscsi_nop_out_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.iscsi_nop_out_hdr, %struct.iscsi_nop_out_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ISCSI_ITT_ALL_ONES, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %24, i32 0, i32 2
  %26 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %25, align 8
  %27 = call i32 @set_local_completion_context(%struct.e4_iscsi_task_context* %26)
  br label %28

28:                                               ; preds = %23, %4
  %29 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %30 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %35 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %39 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %43 = call i32 @init_scsi_sgl_context(i32* %37, i32* %41, %struct.scsi_sgl_task_params* %42)
  br label %44

44:                                               ; preds = %33, %28
  %45 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %51 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %54 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %57 = call i32 @init_scsi_sgl_context(i32* %52, i32* %55, %struct.scsi_sgl_task_params* %56)
  br label %58

58:                                               ; preds = %49, %44
  %59 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %60 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %59, i32 0, i32 2
  %61 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %62 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %61, i32 0, i32 1
  %63 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %69 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  %74 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %75 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %80 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i32 [ %81, %78 ], [ 0, %82 ]
  %85 = call i32 @init_ustorm_task_contexts(i32* %60, i32* %62, i32 %73, i32 %84, i32 0, i32 0)
  %86 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %87 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %8, align 8
  %92 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %90
  %96 = phi i32 [ %93, %90 ], [ 0, %94 ]
  %97 = call i32 @cpu_to_le32(i32 %96)
  %98 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %9, align 8
  %99 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 4
  %101 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %5, align 8
  %102 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %7, align 8
  %103 = load %struct.iscsi_nop_out_hdr*, %struct.iscsi_nop_out_hdr** %6, align 8
  %104 = bitcast %struct.iscsi_nop_out_hdr* %103 to %struct.iscsi_common_hdr*
  %105 = load i32, i32* @ISCSI_TASK_TYPE_MIDPATH, align 4
  %106 = call i32 @init_sqe(%struct.iscsi_task_params* %101, %struct.scsi_sgl_task_params* %102, i32* null, %struct.iscsi_common_hdr* %104, i32* null, i32 %105, i32 0)
  ret i32 0
}

declare dso_local i32 @init_default_iscsi_task(%struct.iscsi_task_params*, %struct.data_hdr*, i32) #1

declare dso_local i32 @set_local_completion_context(%struct.e4_iscsi_task_context*) #1

declare dso_local i32 @init_scsi_sgl_context(i32*, i32*, %struct.scsi_sgl_task_params*) #1

declare dso_local i32 @init_ustorm_task_contexts(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @init_sqe(%struct.iscsi_task_params*, %struct.scsi_sgl_task_params*, i32*, %struct.iscsi_common_hdr*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
