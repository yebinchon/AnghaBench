; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sgiwd93.c_sgiwd93_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sgiwd93.c_sgiwd93_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sgiwd93_platform_data* }
%struct.sgiwd93_platform_data = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.ip22_hostdata = type { i32, i32 }

@HPC_DMA_SIZE = common dso_local global i32 0, align 4
@DMA_ATTR_NON_CONSISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sgiwd93_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgiwd93_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.ip22_hostdata*, align 8
  %5 = alloca %struct.sgiwd93_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.Scsi_Host* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.Scsi_Host* %7, %struct.Scsi_Host** %3, align 8
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ip22_hostdata*
  store %struct.ip22_hostdata* %11, %struct.ip22_hostdata** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.sgiwd93_platform_data*, %struct.sgiwd93_platform_data** %14, align 8
  store %struct.sgiwd93_platform_data* %15, %struct.sgiwd93_platform_data** %5, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = call i32 @scsi_remove_host(%struct.Scsi_Host* %16)
  %18 = load %struct.sgiwd93_platform_data*, %struct.sgiwd93_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.sgiwd93_platform_data, %struct.sgiwd93_platform_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.Scsi_Host* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @HPC_DMA_SIZE, align 4
  %26 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %4, align 8
  %27 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip22_hostdata*, %struct.ip22_hostdata** %4, align 8
  %30 = getelementptr inbounds %struct.ip22_hostdata, %struct.ip22_hostdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_ATTR_NON_CONSISTENT, align 4
  %33 = call i32 @dma_free_attrs(%struct.TYPE_2__* %24, i32 %25, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %35 = call i32 @scsi_host_put(%struct.Scsi_Host* %34)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @dma_free_attrs(%struct.TYPE_2__*, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
