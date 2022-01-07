; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_forced_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_forced_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, i32, %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.forced_link_speed_support_reply = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"0048 Received FORCED_LINK_SPEED request below minimum size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"0049 Received FORCED_LINK_SPEED reply below minimum size\0A\00", align 1
@HBA_FORCED_LINK_SPEED = common dso_local global i32 0, align 4
@LPFC_FORCED_LINK_SPEED_SUPPORTED = common dso_local global i32 0, align 4
@LPFC_FORCED_LINK_SPEED_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_forced_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_forced_link_speed(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.fc_bsg_reply*, align 8
  %7 = alloca %struct.forced_link_speed_support_reply*, align 8
  %8 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %9 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %10 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %4, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %5, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 2
  %18 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  store %struct.fc_bsg_reply* %18, %struct.fc_bsg_reply** %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %20 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %26 = load i32, i32* @KERN_WARNING, align 4
  %27 = load i32, i32* @LOG_LIBDFC, align 4
  %28 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %25, i32 %26, i32 %27, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %65

31:                                               ; preds = %1
  %32 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %33 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.forced_link_speed_support_reply*
  store %struct.forced_link_speed_support_reply* %37, %struct.forced_link_speed_support_reply** %7, align 8
  %38 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %39 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 8
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %45 = load i32, i32* @KERN_WARNING, align 4
  %46 = load i32, i32* @LOG_LIBDFC, align 4
  %47 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %65

50:                                               ; preds = %31
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HBA_FORCED_LINK_SPEED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @LPFC_FORCED_LINK_SPEED_SUPPORTED, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @LPFC_FORCED_LINK_SPEED_NOT_SUPPORTED, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.forced_link_speed_support_reply*, %struct.forced_link_speed_support_reply** %7, align 8
  %64 = getelementptr inbounds %struct.forced_link_speed_support_reply, %struct.forced_link_speed_support_reply* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %43, %24
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %68 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %73 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %74 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %77 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bsg_job_done(%struct.bsg_job* %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %71, %65
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
