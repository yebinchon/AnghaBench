; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.AdapterControlBlock = type { i32, i32, i32, i32 }

@ACB_F_ADAPTER_REMOVED = common dso_local global i32 0, align 4
@set_date_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @arcmsr_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %10, %struct.AdapterControlBlock** %4, align 8
  %11 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %12 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ACB_F_ADAPTER_REMOVED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %20 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %19, i32 0, i32 3
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load i64, i64* @set_date_time, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 2
  %27 = call i32 @del_timer_sync(i32* %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %30 = call i32 @arcmsr_disable_outbound_ints(%struct.AdapterControlBlock* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %33 = call i32 @arcmsr_free_irq(%struct.pci_dev* %31, %struct.AdapterControlBlock* %32)
  %34 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %35 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %34, i32 0, i32 1
  %36 = call i32 @flush_work(i32* %35)
  %37 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %38 = call i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock* %37)
  %39 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %40 = call i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock* %39)
  br label %41

41:                                               ; preds = %28, %17
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @arcmsr_disable_outbound_ints(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_irq(%struct.pci_dev*, %struct.AdapterControlBlock*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
