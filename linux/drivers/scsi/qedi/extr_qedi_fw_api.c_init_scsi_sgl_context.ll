; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_scsi_sgl_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_scsi_sgl_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sgl_params = type { i32, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.scsi_cached_sges = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.scsi_sgl_task_params = type { i64, %struct.TYPE_11__*, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SCSI_NUM_SGES_IN_CACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_sgl_params*, %struct.scsi_cached_sges*, %struct.scsi_sgl_task_params*)* @init_scsi_sgl_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_scsi_sgl_context(%struct.scsi_sgl_params* %0, %struct.scsi_cached_sges* %1, %struct.scsi_sgl_task_params* %2) #0 {
  %4 = alloca %struct.scsi_sgl_params*, align 8
  %5 = alloca %struct.scsi_cached_sges*, align 8
  %6 = alloca %struct.scsi_sgl_task_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.scsi_sgl_params* %0, %struct.scsi_sgl_params** %4, align 8
  store %struct.scsi_cached_sges* %1, %struct.scsi_cached_sges** %5, align 8
  store %struct.scsi_sgl_task_params* %2, %struct.scsi_sgl_task_params** %6, align 8
  %10 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %11 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SCSI_NUM_SGES_IN_CACHE, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @SCSI_NUM_SGES_IN_CACHE, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i64 [ %16, %15 ], [ %20, %17 ]
  store i64 %22, i64* %8, align 8
  %23 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %24 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.scsi_sgl_params*, %struct.scsi_sgl_params** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_sgl_params, %struct.scsi_sgl_params* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %33 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.scsi_sgl_params*, %struct.scsi_sgl_params** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_sgl_params, %struct.scsi_sgl_params* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %42 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @cpu_to_le32(i32 %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.scsi_sgl_params*, %struct.scsi_sgl_params** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_sgl_params, %struct.scsi_sgl_params* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %49 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @cpu_to_le16(i64 %50)
  %52 = load %struct.scsi_sgl_params*, %struct.scsi_sgl_params** %4, align 8
  %53 = getelementptr inbounds %struct.scsi_sgl_params, %struct.scsi_sgl_params* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i64 0, i64* %7, align 8
  br label %54

54:                                               ; preds = %108, %21
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %111

58:                                               ; preds = %54
  %59 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %60 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.scsi_cached_sges*, %struct.scsi_cached_sges** %5, align 8
  %70 = getelementptr inbounds %struct.scsi_cached_sges, %struct.scsi_cached_sges* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i8* %68, i8** %75, align 8
  %76 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %77 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_le32(i32 %83)
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.scsi_cached_sges*, %struct.scsi_cached_sges** %5, align 8
  %87 = getelementptr inbounds %struct.scsi_cached_sges, %struct.scsi_cached_sges* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i8* %85, i8** %92, align 8
  %93 = load %struct.scsi_sgl_task_params*, %struct.scsi_sgl_task_params** %6, align 8
  %94 = getelementptr inbounds %struct.scsi_sgl_task_params, %struct.scsi_sgl_task_params* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_le32(i32 %99)
  store i8* %100, i8** %9, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = load %struct.scsi_cached_sges*, %struct.scsi_cached_sges** %5, align 8
  %103 = getelementptr inbounds %struct.scsi_cached_sges, %struct.scsi_cached_sges* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i8* %101, i8** %107, align 8
  br label %108

108:                                              ; preds = %58
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %7, align 8
  br label %54

111:                                              ; preds = %54
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
