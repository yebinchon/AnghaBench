; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_set_ras_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_set_ras_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.lpfc_ras_fwlog }
%struct.lpfc_ras_fwlog = type { i32 }
%struct.lpfc_bsg_set_ras_config_req = type { i64, i64 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"6182 Received RAS_LOG request below minimum size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LPFC_RASACTION_STOP_LOGGING = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@LPFC_RAS_ENABLE_LOGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_set_ras_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_set_ras_config(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_bsg_set_ras_config_req*, align 8
  %7 = alloca %struct.fc_bsg_request*, align 8
  %8 = alloca %struct.lpfc_ras_fwlog*, align 8
  %9 = alloca %struct.fc_bsg_reply*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %15 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %3, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = call %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host* %16)
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %4, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 0
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %5, align 8
  %21 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %22 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %21, i32 0, i32 2
  %23 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %22, align 8
  store %struct.fc_bsg_request* %23, %struct.fc_bsg_request** %7, align 8
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  store %struct.lpfc_ras_fwlog* %25, %struct.lpfc_ras_fwlog** %8, align 8
  %26 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %27 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %26, i32 0, i32 1
  %28 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %27, align 8
  store %struct.fc_bsg_reply* %28, %struct.fc_bsg_reply** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %30 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 24
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @LOG_LIBDFC, align 4
  %38 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %101

41:                                               ; preds = %1
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %43 = call i32 @lpfc_check_fwlog_support(%struct.lpfc_hba* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %101

47:                                               ; preds = %41
  %48 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %7, align 8
  %49 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.lpfc_bsg_set_ras_config_req*
  store %struct.lpfc_bsg_set_ras_config_req* %53, %struct.lpfc_bsg_set_ras_config_req** %6, align 8
  %54 = load %struct.lpfc_bsg_set_ras_config_req*, %struct.lpfc_bsg_set_ras_config_req** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_bsg_set_ras_config_req, %struct.lpfc_bsg_set_ras_config_req* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load %struct.lpfc_bsg_set_ras_config_req*, %struct.lpfc_bsg_set_ras_config_req** %6, align 8
  %58 = getelementptr inbounds %struct.lpfc_bsg_set_ras_config_req, %struct.lpfc_bsg_set_ras_config_req* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @LPFC_RASACTION_STOP_LOGGING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %47
  %64 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %8, align 8
  %65 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @ESRCH, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %101

71:                                               ; preds = %63
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %73 = call i32 @lpfc_ras_stop_fwlog(%struct.lpfc_hba* %72)
  br label %100

74:                                               ; preds = %47
  %75 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %8, align 8
  %76 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EINPROGRESS, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* @LPFC_RAS_ENABLE_LOGGING, align 4
  %86 = call i32 @lpfc_sli4_ras_fwlog_init(%struct.lpfc_hba* %83, i64 %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %101

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @EINPROGRESS, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %97, %92
  br label %100

100:                                              ; preds = %99, %71
  br label %101

101:                                              ; preds = %100, %89, %68, %46, %34
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %104 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %101
  %108 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %109 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %110 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %113 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @bsg_job_done(%struct.bsg_job* %108, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %107, %101
  %117 = load i32, i32* %12, align 4
  ret i32 %117
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_check_fwlog_support(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_ras_stop_fwlog(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_ras_fwlog_init(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
