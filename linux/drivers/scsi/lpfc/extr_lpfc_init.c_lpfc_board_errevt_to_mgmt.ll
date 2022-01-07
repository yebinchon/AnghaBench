; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_board_errevt_to_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_board_errevt_to_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_board_event_header = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@FC_REG_BOARD_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_PORTINTERR = common dso_local global i32 0, align 4
@LPFC_NL_VENDOR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_board_errevt_to_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_board_event_header, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load i32, i32* @FC_REG_BOARD_EVENT, align 4
  %6 = getelementptr inbounds %struct.lpfc_board_event_header, %struct.lpfc_board_event_header* %3, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @LPFC_EVENT_PORTINTERR, align 4
  %8 = getelementptr inbounds %struct.lpfc_board_event_header, %struct.lpfc_board_event_header* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(i32 %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = call i32 (...) @fc_get_event_number()
  %15 = bitcast %struct.lpfc_board_event_header* %3 to i8*
  %16 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %17 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %13, i32 %14, i32 8, i8* %15, i32 %16)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(i32) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
