; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.pvscsi_adapter = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SCSI device reset on scsi%u:%u\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @pvscsi_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_device_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.pvscsi_adapter*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call %struct.pvscsi_adapter* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.pvscsi_adapter* %12, %struct.pvscsi_adapter** %4, align 8
  %13 = load i32, i32* @KERN_INFO, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @scmd_printk(i32 %13, %struct.scsi_cmnd* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22)
  %24 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %29 = call i32 @pvscsi_process_request_ring(%struct.pvscsi_adapter* %28)
  %30 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ll_device_reset(%struct.pvscsi_adapter* %30, i32 %35)
  %37 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %38 = call i32 @pvscsi_process_completion_ring(%struct.pvscsi_adapter* %37)
  %39 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i32, i32* @SUCCESS, align 4
  ret i32 %43
}

declare dso_local %struct.pvscsi_adapter* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pvscsi_process_request_ring(%struct.pvscsi_adapter*) #1

declare dso_local i32 @ll_device_reset(%struct.pvscsi_adapter*, i32) #1

declare dso_local i32 @pvscsi_process_completion_ring(%struct.pvscsi_adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
