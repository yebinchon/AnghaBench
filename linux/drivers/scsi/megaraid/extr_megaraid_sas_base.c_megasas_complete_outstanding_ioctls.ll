; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_complete_outstanding_ioctls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_complete_outstanding_ioctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.megasas_cmd**, %struct.fusion_context* }
%struct.megasas_cmd = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.fusion_context = type { %struct.megasas_cmd_fusion** }
%struct.megasas_cmd_fusion = type { i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@MFI_CMD_ABORT = common dso_local global i64 0, align 8
@MFI_STAT_WRONG_STATE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.megasas_instance*)* @megasas_complete_outstanding_ioctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_complete_outstanding_ioctls(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_cmd*, align 8
  %5 = alloca %struct.megasas_cmd_fusion*, align 8
  %6 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %8 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %7, i32 0, i32 2
  %9 = load %struct.fusion_context*, %struct.fusion_context** %8, align 8
  store %struct.fusion_context* %9, %struct.fusion_context** %6, align 8
  %10 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %11 = icmp ne %struct.fusion_context* %10, null
  br i1 %11, label %12, label %71

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %67, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %13
  %20 = load %struct.fusion_context*, %struct.fusion_context** %6, align 8
  %21 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %20, i32 0, i32 0
  %22 = load %struct.megasas_cmd_fusion**, %struct.megasas_cmd_fusion*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %22, i64 %24
  %26 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %25, align 8
  store %struct.megasas_cmd_fusion* %26, %struct.megasas_cmd_fusion** %5, align 8
  %27 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %5, align 8
  %28 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ULONG_MAX, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %19
  %33 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %34 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %33, i32 0, i32 1
  %35 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %34, align 8
  %36 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %5, align 8
  %37 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %35, i64 %38
  %40 = load %struct.megasas_cmd*, %struct.megasas_cmd** %39, align 8
  store %struct.megasas_cmd* %40, %struct.megasas_cmd** %4, align 8
  %41 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %32
  %46 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MFI_CMD_ABORT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %45
  %55 = load i32, i32* @MFI_STAT_WRONG_STATE, align 4
  %56 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 8
  %61 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %62 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %63 = load i32, i32* @DID_OK, align 4
  %64 = call i32 @megasas_complete_cmd(%struct.megasas_instance* %61, %struct.megasas_cmd* %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %45, %32
  br label %66

66:                                               ; preds = %65, %19
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %13

70:                                               ; preds = %13
  br label %109

71:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %105, %71
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %75 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %80 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %79, i32 0, i32 1
  %81 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %81, i64 %83
  %85 = load %struct.megasas_cmd*, %struct.megasas_cmd** %84, align 8
  store %struct.megasas_cmd* %85, %struct.megasas_cmd** %4, align 8
  %86 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %87 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %78
  %91 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %92 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MFI_CMD_ABORT, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %101 = load %struct.megasas_cmd*, %struct.megasas_cmd** %4, align 8
  %102 = load i32, i32* @DID_OK, align 4
  %103 = call i32 @megasas_complete_cmd(%struct.megasas_instance* %100, %struct.megasas_cmd* %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %90, %78
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %72

108:                                              ; preds = %72
  br label %109

109:                                              ; preds = %108, %70
  ret void
}

declare dso_local i32 @megasas_complete_cmd(%struct.megasas_instance*, %struct.megasas_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
