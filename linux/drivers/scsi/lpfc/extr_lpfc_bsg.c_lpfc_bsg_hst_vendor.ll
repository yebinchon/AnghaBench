; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_hst_vendor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_hst_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_hst_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_hst_vendor(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_request*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %7 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %8 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %7, i32 0, i32 1
  %9 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %8, align 8
  store %struct.fc_bsg_request* %9, %struct.fc_bsg_request** %3, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %11 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %10, i32 0, i32 0
  %12 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %11, align 8
  store %struct.fc_bsg_reply* %12, %struct.fc_bsg_reply** %4, align 8
  %13 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %3, align 8
  %14 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %69 [
    i32 128, label %21
    i32 140, label %24
    i32 129, label %27
    i32 144, label %30
    i32 143, label %33
    i32 142, label %36
    i32 137, label %39
    i32 139, label %42
    i32 136, label %45
    i32 135, label %48
    i32 134, label %48
    i32 141, label %51
    i32 131, label %54
    i32 132, label %57
    i32 133, label %60
    i32 130, label %63
    i32 138, label %66
  ]

21:                                               ; preds = %1
  %22 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %23 = call i32 @lpfc_bsg_hba_set_event(%struct.bsg_job* %22)
  store i32 %23, i32* %6, align 4
  br label %77

24:                                               ; preds = %1
  %25 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %26 = call i32 @lpfc_bsg_hba_get_event(%struct.bsg_job* %25)
  store i32 %26, i32* %6, align 4
  br label %77

27:                                               ; preds = %1
  %28 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %29 = call i32 @lpfc_bsg_send_mgmt_rsp(%struct.bsg_job* %28)
  store i32 %29, i32* %6, align 4
  br label %77

30:                                               ; preds = %1
  %31 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %32 = call i32 @lpfc_bsg_diag_loopback_mode(%struct.bsg_job* %31)
  store i32 %32, i32* %6, align 4
  br label %77

33:                                               ; preds = %1
  %34 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %35 = call i32 @lpfc_sli4_bsg_diag_mode_end(%struct.bsg_job* %34)
  store i32 %35, i32* %6, align 4
  br label %77

36:                                               ; preds = %1
  %37 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %38 = call i32 @lpfc_bsg_diag_loopback_run(%struct.bsg_job* %37)
  store i32 %38, i32* %6, align 4
  br label %77

39:                                               ; preds = %1
  %40 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %41 = call i32 @lpfc_sli4_bsg_link_diag_test(%struct.bsg_job* %40)
  store i32 %41, i32* %6, align 4
  br label %77

42:                                               ; preds = %1
  %43 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %44 = call i32 @lpfc_bsg_get_dfc_rev(%struct.bsg_job* %43)
  store i32 %44, i32* %6, align 4
  br label %77

45:                                               ; preds = %1
  %46 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %47 = call i32 @lpfc_bsg_mbox_cmd(%struct.bsg_job* %46)
  store i32 %47, i32* %6, align 4
  br label %77

48:                                               ; preds = %1, %1
  %49 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %50 = call i32 @lpfc_menlo_cmd(%struct.bsg_job* %49)
  store i32 %50, i32* %6, align 4
  br label %77

51:                                               ; preds = %1
  %52 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %53 = call i32 @lpfc_forced_link_speed(%struct.bsg_job* %52)
  store i32 %53, i32* %6, align 4
  br label %77

54:                                               ; preds = %1
  %55 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %56 = call i32 @lpfc_bsg_get_ras_lwpd(%struct.bsg_job* %55)
  store i32 %56, i32* %6, align 4
  br label %77

57:                                               ; preds = %1
  %58 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %59 = call i32 @lpfc_bsg_get_ras_fwlog(%struct.bsg_job* %58)
  store i32 %59, i32* %6, align 4
  br label %77

60:                                               ; preds = %1
  %61 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %62 = call i32 @lpfc_bsg_get_ras_config(%struct.bsg_job* %61)
  store i32 %62, i32* %6, align 4
  br label %77

63:                                               ; preds = %1
  %64 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %65 = call i32 @lpfc_bsg_set_ras_config(%struct.bsg_job* %64)
  store i32 %65, i32* %6, align 4
  br label %77

66:                                               ; preds = %1
  %67 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %68 = call i32 @lpfc_get_trunk_info(%struct.bsg_job* %67)
  store i32 %68, i32* %6, align 4
  br label %77

69:                                               ; preds = %1
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  %72 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %73 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %76 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @lpfc_bsg_hba_set_event(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_hba_get_event(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_send_mgmt_rsp(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_diag_loopback_mode(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_sli4_bsg_diag_mode_end(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_diag_loopback_run(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_sli4_bsg_link_diag_test(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_get_dfc_rev(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_mbox_cmd(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_menlo_cmd(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_forced_link_speed(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_get_ras_lwpd(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_get_ras_fwlog(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_get_ras_config(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_bsg_set_ras_config(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_get_trunk_info(%struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
