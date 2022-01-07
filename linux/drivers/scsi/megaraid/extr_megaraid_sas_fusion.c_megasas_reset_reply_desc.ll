; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_reset_reply_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_reset_reply_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, %struct.fusion_context* }
%struct.fusion_context = type { i32, %union.MPI2_REPLY_DESCRIPTORS_UNION**, i64* }
%union.MPI2_REPLY_DESCRIPTORS_UNION = type { i32 }

@ULLONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_reset_reply_desc(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fusion_context*, align 8
  %7 = alloca %union.MPI2_REPLY_DESCRIPTORS_UNION*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %8 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %9 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %8, i32 0, i32 1
  %10 = load %struct.fusion_context*, %struct.fusion_context** %9, align 8
  store %struct.fusion_context* %10, %struct.fusion_context** %6, align 8
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %17 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i64 [ %18, %15 ], [ 1, %19 ]
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %58, %20
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %29 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %35 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %34, i32 0, i32 1
  %36 = load %union.MPI2_REPLY_DESCRIPTORS_UNION**, %union.MPI2_REPLY_DESCRIPTORS_UNION*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %36, i64 %38
  %40 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %39, align 8
  store %union.MPI2_REPLY_DESCRIPTORS_UNION* %40, %union.MPI2_REPLY_DESCRIPTORS_UNION** %7, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %52, %27
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %44 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32, i32* @ULLONG_MAX, align 4
  %49 = call i32 @cpu_to_le64(i32 %48)
  %50 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %7, align 8
  %51 = bitcast %union.MPI2_REPLY_DESCRIPTORS_UNION* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  %55 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %7, align 8
  %56 = getelementptr inbounds %union.MPI2_REPLY_DESCRIPTORS_UNION, %union.MPI2_REPLY_DESCRIPTORS_UNION* %55, i32 1
  store %union.MPI2_REPLY_DESCRIPTORS_UNION* %56, %union.MPI2_REPLY_DESCRIPTORS_UNION** %7, align 8
  br label %41

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %23

61:                                               ; preds = %23
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
