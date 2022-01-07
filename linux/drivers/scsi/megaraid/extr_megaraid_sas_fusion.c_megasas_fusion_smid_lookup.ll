; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_fusion_smid_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_fusion_smid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.megasas_instance = type { i32, %struct.fusion_context* }
%struct.fusion_context = type { %struct.megasas_cmd_fusion** }
%struct.megasas_cmd_fusion = type { i32, %struct.scsi_cmnd* }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Abort request is for SMID: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @megasas_fusion_smid_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_fusion_smid_lookup(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca %struct.megasas_cmd_fusion*, align 8
  %7 = alloca %struct.fusion_context*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.megasas_instance*
  store %struct.megasas_instance* %15, %struct.megasas_instance** %5, align 8
  %16 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %17 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %16, i32 0, i32 1
  %18 = load %struct.fusion_context*, %struct.fusion_context** %17, align 8
  store %struct.fusion_context* %18, %struct.fusion_context** %7, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %54, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %22 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = load %struct.fusion_context*, %struct.fusion_context** %7, align 8
  %27 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %26, i32 0, i32 0
  %28 = load %struct.megasas_cmd_fusion**, %struct.megasas_cmd_fusion*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %28, i64 %30
  %32 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %31, align 8
  store %struct.megasas_cmd_fusion* %32, %struct.megasas_cmd_fusion** %6, align 8
  %33 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %34 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %33, i32 0, i32 1
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %34, align 8
  %36 = icmp ne %struct.scsi_cmnd* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %25
  %38 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %39 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %38, i32 0, i32 1
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %39, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %42 = icmp eq %struct.scsi_cmnd* %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* @KERN_NOTICE, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %46 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %47 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @scmd_printk(i32 %44, %struct.scsi_cmnd* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %6, align 8
  %51 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %37, %25
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %19

57:                                               ; preds = %43, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
