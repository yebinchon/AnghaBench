; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_a100u2w.c_inia100_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_a100u2w.c_inia100_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.Scsi_Host = type { i32, i32, i64 }
%struct.orc_host = type { i32, i32, i32, i32 }

@ORC_MAXQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @inia100_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inia100_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.orc_host*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.orc_host*
  store %struct.orc_host* %10, %struct.orc_host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call i32 @scsi_remove_host(%struct.Scsi_Host* %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.Scsi_Host* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @ORC_MAXQUEUE, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %25 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %28 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dma_free_coherent(i32* %19, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* @ORC_MAXQUEUE, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %38 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %41 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dma_free_coherent(i32* %32, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @release_region(i32 %46, i32 256)
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %49 = call i32 @scsi_host_put(%struct.Scsi_Host* %48)
  ret void
}

declare dso_local %struct.Scsi_Host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
