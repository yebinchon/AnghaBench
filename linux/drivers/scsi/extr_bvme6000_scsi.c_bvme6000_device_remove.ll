; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_bvme6000_scsi.c_bvme6000_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_bvme6000_scsi.c_bvme6000_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.NCR_700_Host_Parameters = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bvme6000_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bvme6000_device_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.NCR_700_Host_Parameters*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.Scsi_Host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = call %struct.NCR_700_Host_Parameters* @shost_priv(%struct.Scsi_Host* %7)
  store %struct.NCR_700_Host_Parameters* %8, %struct.NCR_700_Host_Parameters** %4, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %10 = call i32 @scsi_remove_host(%struct.Scsi_Host* %9)
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call i32 @NCR_700_release(%struct.Scsi_Host* %11)
  %13 = load %struct.NCR_700_Host_Parameters*, %struct.NCR_700_Host_Parameters** %4, align 8
  %14 = call i32 @kfree(%struct.NCR_700_Host_Parameters* %13)
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.Scsi_Host* %18)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.NCR_700_Host_Parameters* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @NCR_700_release(%struct.Scsi_Host*) #1

declare dso_local i32 @kfree(%struct.NCR_700_Host_Parameters*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
