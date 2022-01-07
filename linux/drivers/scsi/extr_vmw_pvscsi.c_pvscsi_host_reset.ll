; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_host_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.pvscsi_adapter = type { i32, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SCSI Host reset\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @pvscsi_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.pvscsi_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %3, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = call %struct.pvscsi_adapter* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.pvscsi_adapter* %13, %struct.pvscsi_adapter** %4, align 8
  %14 = load i32, i32* @KERN_INFO, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %16 = call i32 @scmd_printk(i32 %14, %struct.scsi_cmnd* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %29, i32 0, i32 1
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @flush_workqueue(i32 %35)
  %37 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %26, %1
  %42 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %43 = call i32 @pvscsi_process_request_ring(%struct.pvscsi_adapter* %42)
  %44 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %45 = call i32 @ll_adapter_reset(%struct.pvscsi_adapter* %44)
  %46 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %47 = call i32 @pvscsi_process_completion_ring(%struct.pvscsi_adapter* %46)
  %48 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %49 = call i32 @pvscsi_reset_all(%struct.pvscsi_adapter* %48)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %54 = call i32 @pvscsi_setup_all_rings(%struct.pvscsi_adapter* %53)
  %55 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %56 = call i32 @pvscsi_unmask_intr(%struct.pvscsi_adapter* %55)
  %57 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %57, i32 0, i32 1
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* @SUCCESS, align 4
  ret i32 %61
}

declare dso_local %struct.pvscsi_adapter* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @pvscsi_process_request_ring(%struct.pvscsi_adapter*) #1

declare dso_local i32 @ll_adapter_reset(%struct.pvscsi_adapter*) #1

declare dso_local i32 @pvscsi_process_completion_ring(%struct.pvscsi_adapter*) #1

declare dso_local i32 @pvscsi_reset_all(%struct.pvscsi_adapter*) #1

declare dso_local i32 @pvscsi_setup_all_rings(%struct.pvscsi_adapter*) #1

declare dso_local i32 @pvscsi_unmask_intr(%struct.pvscsi_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
