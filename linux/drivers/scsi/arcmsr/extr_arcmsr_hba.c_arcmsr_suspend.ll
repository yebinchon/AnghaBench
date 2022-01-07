; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.AdapterControlBlock = type { i32, i32, i32 }

@set_date_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @arcmsr_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %6, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %13, %struct.AdapterControlBlock** %7, align 8
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %15 = call i32 @arcmsr_disable_outbound_ints(%struct.AdapterControlBlock* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %18 = call i32 @arcmsr_free_irq(%struct.pci_dev* %16, %struct.AdapterControlBlock* %17)
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %20 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %19, i32 0, i32 2
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load i64, i64* @set_date_time, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 1
  %27 = call i32 @del_timer_sync(i32* %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %30 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %29, i32 0, i32 0
  %31 = call i32 @flush_work(i32* %30)
  %32 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %33 = call i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock* %32)
  %34 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %35 = call i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %38 = call i32 @pci_set_drvdata(%struct.pci_dev* %36, %struct.Scsi_Host* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_save_state(%struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = call i32 @pci_disable_device(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pci_choose_state(%struct.pci_dev* %44, i32 %45)
  %47 = call i32 @pci_set_power_state(%struct.pci_dev* %43, i32 %46)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @arcmsr_disable_outbound_ints(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_irq(%struct.pci_dev*, %struct.AdapterControlBlock*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_choose_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
