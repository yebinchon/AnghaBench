; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_smp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_sas_transport.c_pqi_sas_smp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_rphy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pqi_ctrl_info = type { i32 }
%struct.bmic_csmi_smp_passthru_buffer = type { i32 }
%struct.pqi_raid_error_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SAS_FANOUT_EXPANDER_DEVICE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pqi_sas_smp_handler(%struct.bsg_job* %0, %struct.Scsi_Host* %1, %struct.sas_rphy* %2) #0 {
  %4 = alloca %struct.bsg_job*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sas_rphy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pqi_ctrl_info*, align 8
  %9 = alloca %struct.bmic_csmi_smp_passthru_buffer*, align 8
  %10 = alloca %struct.pqi_raid_error_info, align 4
  %11 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %4, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %5, align 8
  store %struct.sas_rphy* %2, %struct.sas_rphy** %6, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %13 = call %struct.pqi_ctrl_info* @shost_to_hba(%struct.Scsi_Host* %12)
  store %struct.pqi_ctrl_info* %13, %struct.pqi_ctrl_info** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %15 = call i32 @pqi_ctrl_busy(%struct.pqi_ctrl_info* %14)
  %16 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %89

24:                                               ; preds = %3
  %25 = load %struct.sas_rphy*, %struct.sas_rphy** %6, align 8
  %26 = icmp ne %struct.sas_rphy* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %89

30:                                               ; preds = %24
  %31 = load %struct.sas_rphy*, %struct.sas_rphy** %6, align 8
  %32 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SAS_FANOUT_EXPANDER_DEVICE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %89

40:                                               ; preds = %30
  %41 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %42 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %48 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %89

55:                                               ; preds = %46
  %56 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %57 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %89

62:                                               ; preds = %55
  %63 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %64 = call i64 @pqi_ctrl_blocked(%struct.pqi_ctrl_info* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %89

69:                                               ; preds = %62
  %70 = load %struct.sas_rphy*, %struct.sas_rphy** %6, align 8
  %71 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %72 = call %struct.bmic_csmi_smp_passthru_buffer* @pqi_build_csmi_smp_passthru_buffer(%struct.sas_rphy* %70, %struct.bsg_job* %71)
  store %struct.bmic_csmi_smp_passthru_buffer* %72, %struct.bmic_csmi_smp_passthru_buffer** %9, align 8
  %73 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %9, align 8
  %74 = icmp ne %struct.bmic_csmi_smp_passthru_buffer* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %89

78:                                               ; preds = %69
  %79 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %80 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %9, align 8
  %81 = call i32 @pqi_csmi_smp_passthru(%struct.pqi_ctrl_info* %79, %struct.bmic_csmi_smp_passthru_buffer* %80, i32 4, %struct.pqi_raid_error_info* %10)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %89

85:                                               ; preds = %78
  %86 = load %struct.bmic_csmi_smp_passthru_buffer*, %struct.bmic_csmi_smp_passthru_buffer** %9, align 8
  %87 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %88 = call i32 @pqi_build_sas_smp_handler_reply(%struct.bmic_csmi_smp_passthru_buffer* %86, %struct.bsg_job* %87, %struct.pqi_raid_error_info* %10)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %84, %75, %66, %59, %52, %37, %27, %21
  %90 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @bsg_job_done(%struct.bsg_job* %90, i32 %91, i32 %92)
  %94 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %8, align 8
  %95 = call i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info* %94)
  ret void
}

declare dso_local %struct.pqi_ctrl_info* @shost_to_hba(%struct.Scsi_Host*) #1

declare dso_local i32 @pqi_ctrl_busy(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_blocked(%struct.pqi_ctrl_info*) #1

declare dso_local %struct.bmic_csmi_smp_passthru_buffer* @pqi_build_csmi_smp_passthru_buffer(%struct.sas_rphy*, %struct.bsg_job*) #1

declare dso_local i32 @pqi_csmi_smp_passthru(%struct.pqi_ctrl_info*, %struct.bmic_csmi_smp_passthru_buffer*, i32, %struct.pqi_raid_error_info*) #1

declare dso_local i32 @pqi_build_sas_smp_handler_reply(%struct.bmic_csmi_smp_passthru_buffer*, %struct.bsg_job*, %struct.pqi_raid_error_info*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

declare dso_local i32 @pqi_ctrl_unbusy(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
