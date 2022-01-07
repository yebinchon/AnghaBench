; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_post_init_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_post_init_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, i32, i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.lpfc_adapter_event_header = type { i32, i32 }

@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"0428 Perform SCSI scan\0A\00", align 1
@FC_REG_ADAPTER_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_ARRIVAL = common dso_local global i32 0, align 4
@LPFC_NL_VENDOR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_post_init_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_post_init_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_adapter_event_header, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @lpfc_get_hba_model_desc(%struct.lpfc_hba* %5, i32 %8, i32 %11)
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.Scsi_Host* @pci_get_drvdata(i32 %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %3, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 10
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = call i32 @lpfc_host_attrib_init(%struct.Scsi_Host* %23)
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %1
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @spin_lock_irq(i32 %34)
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = call i32 @lpfc_poll_start_timer(%struct.lpfc_hba* %36)
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @spin_unlock_irq(i32 %40)
  br label %42

42:                                               ; preds = %31, %1
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %44 = load i32, i32* @KERN_INFO, align 4
  %45 = load i32, i32* @LOG_INIT, align 4
  %46 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @FC_REG_ADAPTER_EVENT, align 4
  %48 = getelementptr inbounds %struct.lpfc_adapter_event_header, %struct.lpfc_adapter_event_header* %4, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @LPFC_EVENT_ARRIVAL, align 4
  %50 = getelementptr inbounds %struct.lpfc_adapter_event_header, %struct.lpfc_adapter_event_header* %4, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %52 = call i32 (...) @fc_get_event_number()
  %53 = bitcast %struct.lpfc_adapter_event_header* %4 to i8*
  %54 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %55 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %51, i32 %52, i32 8, i8* %53, i32 %54)
  ret void
}

declare dso_local i32 @lpfc_get_hba_model_desc(%struct.lpfc_hba*, i32, i32) #1

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(i32) #1

declare dso_local i32 @lpfc_host_attrib_init(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @lpfc_poll_start_timer(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
