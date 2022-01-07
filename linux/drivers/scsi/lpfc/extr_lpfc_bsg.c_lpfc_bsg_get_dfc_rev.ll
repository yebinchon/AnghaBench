; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_get_dfc_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_get_dfc_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, i32, %struct.fc_bsg_reply* }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.get_mgmt_rev_reply = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"2740 Received GET_DFC_REV request below minimum size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"2741 Received GET_DFC_REV reply below minimum size\0A\00", align 1
@MANAGEMENT_MAJOR_REV = common dso_local global i32 0, align 4
@MANAGEMENT_MINOR_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_get_dfc_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_get_dfc_rev(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.get_mgmt_rev_reply*, align 8
  %7 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %8 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %9 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %8)
  %10 = call %struct.lpfc_vport* @shost_priv(i32 %9)
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %3, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %12 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %11, i32 0, i32 2
  %13 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %12, align 8
  store %struct.fc_bsg_reply* %13, %struct.fc_bsg_reply** %4, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 0
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %15, align 8
  store %struct.lpfc_hba* %16, %struct.lpfc_hba** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %24 = load i32, i32* @KERN_WARNING, align 4
  %25 = load i32, i32* @LOG_LIBDFC, align 4
  %26 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %57

29:                                               ; preds = %1
  %30 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.get_mgmt_rev_reply*
  store %struct.get_mgmt_rev_reply* %35, %struct.get_mgmt_rev_reply** %6, align 8
  %36 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %37 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 12
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load i32, i32* @LOG_LIBDFC, align 4
  %45 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %57

48:                                               ; preds = %29
  %49 = load i32, i32* @MANAGEMENT_MAJOR_REV, align 4
  %50 = load %struct.get_mgmt_rev_reply*, %struct.get_mgmt_rev_reply** %6, align 8
  %51 = getelementptr inbounds %struct.get_mgmt_rev_reply, %struct.get_mgmt_rev_reply* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @MANAGEMENT_MINOR_REV, align 4
  %54 = load %struct.get_mgmt_rev_reply*, %struct.get_mgmt_rev_reply** %6, align 8
  %55 = getelementptr inbounds %struct.get_mgmt_rev_reply, %struct.get_mgmt_rev_reply* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %41, %22
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %60 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %65 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %66 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %69 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bsg_job_done(%struct.bsg_job* %64, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %63, %57
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local %struct.lpfc_vport* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
