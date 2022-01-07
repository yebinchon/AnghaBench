; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_get_ras_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_get_ras_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.lpfc_ras_fwlog }
%struct.lpfc_ras_fwlog = type { i32, i32 }
%struct.lpfc_bsg_get_ras_config_reply = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"6192 FW_LOG request received below minimum size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPFC_RASLOG_STATE_RUNNING = common dso_local global i32 0, align 4
@LPFC_RASLOG_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_get_ras_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_get_ras_config(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_bsg_get_ras_config_reply*, align 8
  %8 = alloca %struct.lpfc_ras_fwlog*, align 8
  %9 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %11 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %3, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = call %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %4, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %15 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %14, i32 0, i32 1
  %16 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %15, align 8
  store %struct.fc_bsg_reply* %16, %struct.fc_bsg_reply** %5, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %6, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 1
  store %struct.lpfc_ras_fwlog* %21, %struct.lpfc_ras_fwlog** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %23 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 8
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = load i32, i32* @LOG_LIBDFC, align 4
  %31 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %71

34:                                               ; preds = %1
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %36 = call i32 @lpfc_check_fwlog_support(%struct.lpfc_hba* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %71

40:                                               ; preds = %34
  %41 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %42 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.lpfc_bsg_get_ras_config_reply*
  store %struct.lpfc_bsg_get_ras_config_reply* %46, %struct.lpfc_bsg_get_ras_config_reply** %7, align 8
  %47 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %8, align 8
  %48 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @LPFC_RASLOG_STATE_RUNNING, align 4
  %53 = load %struct.lpfc_bsg_get_ras_config_reply*, %struct.lpfc_bsg_get_ras_config_reply** %7, align 8
  %54 = getelementptr inbounds %struct.lpfc_bsg_get_ras_config_reply, %struct.lpfc_bsg_get_ras_config_reply* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %59

55:                                               ; preds = %40
  %56 = load i32, i32* @LPFC_RASLOG_STATE_STOPPED, align 4
  %57 = load %struct.lpfc_bsg_get_ras_config_reply*, %struct.lpfc_bsg_get_ras_config_reply** %7, align 8
  %58 = getelementptr inbounds %struct.lpfc_bsg_get_ras_config_reply, %struct.lpfc_bsg_get_ras_config_reply* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.lpfc_bsg_get_ras_config_reply*, %struct.lpfc_bsg_get_ras_config_reply** %7, align 8
  %65 = getelementptr inbounds %struct.lpfc_bsg_get_ras_config_reply, %struct.lpfc_bsg_get_ras_config_reply* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lpfc_bsg_get_ras_config_reply*, %struct.lpfc_bsg_get_ras_config_reply** %7, align 8
  %70 = getelementptr inbounds %struct.lpfc_bsg_get_ras_config_reply, %struct.lpfc_bsg_get_ras_config_reply* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %59, %39, %27
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %74 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %71
  %78 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %79 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %83 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bsg_job_done(%struct.bsg_job* %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %77, %71
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_check_fwlog_support(%struct.lpfc_hba*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
