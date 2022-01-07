; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_track_scsiio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_track_scsiio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, %struct.TYPE_5__*, %struct.fusion_context* }
%struct.TYPE_5__ = type { i32 }
%struct.fusion_context = type { %struct.megasas_cmd_fusion** }
%struct.megasas_cmd_fusion = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"SCSI commands pending to targetchannel %d id %d \09SMID: 0x%x\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i32, i32)* @megasas_track_scsiio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_track_scsiio(%struct.megasas_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.megasas_cmd_fusion*, align 8
  %10 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %12 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %11, i32 0, i32 2
  %13 = load %struct.fusion_context*, %struct.fusion_context** %12, align 8
  store %struct.fusion_context* %13, %struct.fusion_context** %10, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %68, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %17 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %14
  %21 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  %22 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %21, i32 0, i32 0
  %23 = load %struct.megasas_cmd_fusion**, %struct.megasas_cmd_fusion*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %23, i64 %25
  %27 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %26, align 8
  store %struct.megasas_cmd_fusion* %27, %struct.megasas_cmd_fusion** %9, align 8
  %28 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %9, align 8
  %29 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %67

32:                                               ; preds = %20
  %33 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %9, align 8
  %34 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %32
  %43 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %9, align 8
  %44 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %54 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %9, align 8
  %60 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %61)
  %63 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %9, align 8
  %64 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @scsi_print_command(%struct.TYPE_6__* %65)
  store i32 1, i32* %8, align 4
  br label %71

67:                                               ; preds = %42, %32, %20
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %14

71:                                               ; preds = %52, %14
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @FAILED, align 4
  br label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @SUCCESS, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  ret i32 %79
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @scsi_print_command(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
