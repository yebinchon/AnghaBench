; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_get_ras_lwpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_get_ras_lwpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.lpfc_ras_fwlog }
%struct.lpfc_ras_fwlog = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_bsg_get_ras_lwpd = type { i8*, i8* }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"6183 Received RAS_LOG request below minimum size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"6193 Restart FW Logging\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_get_ras_lwpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_get_ras_lwpd(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_bsg_get_ras_lwpd*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_ras_fwlog*, align 8
  %8 = alloca %struct.fc_bsg_reply*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %12 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %3, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = call %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host* %13)
  store %struct.lpfc_vport* %14, %struct.lpfc_vport** %4, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 0
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  store %struct.lpfc_hba* %17, %struct.lpfc_hba** %6, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  store %struct.lpfc_ras_fwlog* %19, %struct.lpfc_ras_fwlog** %7, align 8
  %20 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %21 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %20, i32 0, i32 1
  %22 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %21, align 8
  store %struct.fc_bsg_reply* %22, %struct.fc_bsg_reply** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %24 = call i32 @lpfc_check_fwlog_support(%struct.lpfc_hba* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %77

28:                                               ; preds = %1
  %29 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %30 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @LOG_LIBDFC, align 4
  %38 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %77

41:                                               ; preds = %28
  %42 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %43 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.lpfc_bsg_get_ras_lwpd*
  store %struct.lpfc_bsg_get_ras_lwpd* %47, %struct.lpfc_bsg_get_ras_lwpd** %5, align 8
  %48 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %7, align 8
  %49 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %41
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load i32, i32* @LOG_LIBDFC, align 4
  %57 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %77

60:                                               ; preds = %41
  %61 = load %struct.lpfc_ras_fwlog*, %struct.lpfc_ras_fwlog** %7, align 8
  %62 = getelementptr inbounds %struct.lpfc_ras_fwlog, %struct.lpfc_ras_fwlog* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @be32_to_cpu(i32 %67)
  %69 = load %struct.lpfc_bsg_get_ras_lwpd*, %struct.lpfc_bsg_get_ras_lwpd** %5, align 8
  %70 = getelementptr inbounds %struct.lpfc_bsg_get_ras_lwpd, %struct.lpfc_bsg_get_ras_lwpd* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @be32_to_cpu(i32 %73)
  %75 = load %struct.lpfc_bsg_get_ras_lwpd*, %struct.lpfc_bsg_get_ras_lwpd** %5, align 8
  %76 = getelementptr inbounds %struct.lpfc_bsg_get_ras_lwpd, %struct.lpfc_bsg_get_ras_lwpd* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %60, %53, %34, %27
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %77
  %84 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %85 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %86 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %89 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bsg_job_done(%struct.bsg_job* %84, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %83, %77
  %93 = load i32, i32* %10, align 4
  ret i32 %93
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_check_fwlog_support(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
