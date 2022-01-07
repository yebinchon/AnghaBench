; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_default_iscsi_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_default_iscsi_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task_params = type { i32, i32, %struct.e4_iscsi_task_context* }
%struct.e4_iscsi_task_context = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.data_hdr = type { i32* }

@E4_USTORM_ISCSI_TASK_AG_CTX_R2T2RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task_params*, %struct.data_hdr*, i32)* @init_default_iscsi_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_default_iscsi_task(%struct.iscsi_task_params* %0, %struct.data_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_task_params*, align 8
  %5 = alloca %struct.data_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e4_iscsi_task_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_task_params* %0, %struct.iscsi_task_params** %4, align 8
  store %struct.data_hdr* %1, %struct.data_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %11, i32 0, i32 2
  %13 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %12, align 8
  store %struct.e4_iscsi_task_context* %13, %struct.e4_iscsi_task_context** %7, align 8
  %14 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %15 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %19 = call i32 @memset(%struct.e4_iscsi_task_context* %18, i32 0, i32 56)
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %22 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %51, %3
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %27 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @ARRAY_SIZE(i32* %31)
  %33 = icmp ult i64 %25, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %24
  %35 = load %struct.data_hdr*, %struct.data_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.data_hdr, %struct.data_hdr* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_le32(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %44 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %42, i32* %50, align 4
  br label %51

51:                                               ; preds = %34
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %24

54:                                               ; preds = %24
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %57 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @cpu_to_le16(i32 %61)
  %63 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %64 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %67 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @E4_USTORM_ISCSI_TASK_AG_CTX_R2T2RECV, align 4
  %71 = call i32 @SET_FIELD(i32 %69, i32 %70, i32 1)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %74 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %4, align 8
  %77 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %80 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.iscsi_task_params*, %struct.iscsi_task_params** %4, align 8
  %83 = getelementptr inbounds %struct.iscsi_task_params, %struct.iscsi_task_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @cpu_to_le16(i32 %84)
  %86 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %87 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  ret void
}

declare dso_local i32 @memset(%struct.e4_iscsi_task_context*, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
