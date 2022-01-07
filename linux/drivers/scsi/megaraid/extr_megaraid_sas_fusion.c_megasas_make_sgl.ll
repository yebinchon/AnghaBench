; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_make_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_make_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.megasas_cmd_fusion = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.MPI25_IEEE_SGE_CHAIN64 = type { i32 }

@MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH = common dso_local global i32 0, align 4
@NVME_PD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, %struct.scsi_cmnd*, %struct.megasas_cmd_fusion*)* @megasas_make_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_make_sgl(%struct.megasas_instance* %0, %struct.scsi_cmnd* %1, %struct.megasas_cmd_fusion* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.megasas_cmd_fusion*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.MPI25_IEEE_SGE_CHAIN64*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store %struct.megasas_cmd_fusion* %2, %struct.megasas_cmd_fusion** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %12 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %18
  %24 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %25 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to %struct.MPI25_IEEE_SGE_CHAIN64*
  store %struct.MPI25_IEEE_SGE_CHAIN64* %28, %struct.MPI25_IEEE_SGE_CHAIN64** %10, align 8
  %29 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %30 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = load i32, i32* @MPI25_SAS_DEVICE0_FLAGS_ENABLED_FAST_PATH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %23
  %39 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %40 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NVME_PD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %47 = load %struct.MPI25_IEEE_SGE_CHAIN64*, %struct.MPI25_IEEE_SGE_CHAIN64** %10, align 8
  %48 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @megasas_make_prp_nvme(%struct.megasas_instance* %45, %struct.scsi_cmnd* %46, %struct.MPI25_IEEE_SGE_CHAIN64* %47, %struct.megasas_cmd_fusion* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %44, %38, %23
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %57 = load %struct.MPI25_IEEE_SGE_CHAIN64*, %struct.MPI25_IEEE_SGE_CHAIN64** %10, align 8
  %58 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @megasas_make_sgl_fusion(%struct.megasas_instance* %55, %struct.scsi_cmnd* %56, %struct.MPI25_IEEE_SGE_CHAIN64* %57, %struct.megasas_cmd_fusion* %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @megasas_make_prp_nvme(%struct.megasas_instance*, %struct.scsi_cmnd*, %struct.MPI25_IEEE_SGE_CHAIN64*, %struct.megasas_cmd_fusion*, i32) #1

declare dso_local i32 @megasas_make_sgl_fusion(%struct.megasas_instance*, %struct.scsi_cmnd*, %struct.MPI25_IEEE_SGE_CHAIN64*, %struct.megasas_cmd_fusion*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
