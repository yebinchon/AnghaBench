; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_queue_dr_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_queue_dr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32 }
%struct.snic_req_info = type { i32 }
%struct.scsi_cmnd = type { i32 }

@SNIC_TAG_DEV_RST = common dso_local global i32 0, align 4
@SNIC_ITMF_LUN_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*, %struct.snic_req_info*, %struct.scsi_cmnd*)* @snic_queue_dr_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_queue_dr_req(%struct.snic* %0, %struct.snic_req_info* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.snic*, align 8
  %5 = alloca %struct.snic_req_info*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  store %struct.snic* %0, %struct.snic** %4, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %5, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %7 = load i32, i32* @SNIC_TAG_DEV_RST, align 4
  %8 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %9 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.snic*, %struct.snic** %4, align 8
  %13 = load %struct.snic_req_info*, %struct.snic_req_info** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %15 = load i32, i32* @SNIC_ITMF_LUN_RESET, align 4
  %16 = call i32 @snic_issue_tm_req(%struct.snic* %12, %struct.snic_req_info* %13, %struct.scsi_cmnd* %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @snic_issue_tm_req(%struct.snic*, %struct.snic_req_info*, %struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
