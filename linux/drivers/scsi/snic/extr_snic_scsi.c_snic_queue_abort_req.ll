; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_queue_abort_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_queue_abort_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32 }
%struct.snic_req_info = type { i32 }
%struct.scsi_cmnd = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"q_abtreq: sc %p, rqi %p, tag %x, tmf %d\0A\00", align 1
@SNIC_TAG_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*, %struct.snic_req_info*, %struct.scsi_cmnd*, i32)* @snic_queue_abort_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_queue_abort_req(%struct.snic* %0, %struct.snic_req_info* %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca %struct.snic*, align 8
  %6 = alloca %struct.snic_req_info*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %5, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snic*, %struct.snic** %5, align 8
  %10 = getelementptr inbounds %struct.snic, %struct.snic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %13 = load %struct.snic_req_info*, %struct.snic_req_info** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %15 = call i32 @snic_cmd_tag(%struct.scsi_cmnd* %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @SNIC_SCSI_DBG(i32 %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %12, %struct.snic_req_info* %13, i32 %15, i32 %16)
  %18 = load i32, i32* @SNIC_TAG_ABORT, align 4
  %19 = load %struct.snic_req_info*, %struct.snic_req_info** %6, align 8
  %20 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.snic*, %struct.snic** %5, align 8
  %24 = load %struct.snic_req_info*, %struct.snic_req_info** %6, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @snic_issue_tm_req(%struct.snic* %23, %struct.snic_req_info* %24, %struct.scsi_cmnd* %25, i32 %26)
  ret i32 %27
}

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, %struct.scsi_cmnd*, %struct.snic_req_info*, i32, i32) #1

declare dso_local i32 @snic_cmd_tag(%struct.scsi_cmnd*) #1

declare dso_local i32 @snic_issue_tm_req(%struct.snic*, %struct.snic_req_info*, %struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
