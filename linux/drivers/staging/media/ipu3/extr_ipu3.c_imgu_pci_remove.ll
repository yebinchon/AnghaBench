; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3.c_imgu_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.imgu_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @imgu_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.imgu_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.imgu_device* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.imgu_device* %5, %struct.imgu_device** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_forbid(i32* %7)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_get_noresume(i32* %10)
  %12 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %13 = call i32 @imgu_video_nodes_exit(%struct.imgu_device* %12)
  %14 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %15 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %14, i32 0, i32 3
  %16 = call i32 @imgu_css_cleanup(i32* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %20 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @imgu_css_set_powerdown(i32* %18, i32 %21)
  %23 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %24 = call i32 @imgu_dmamap_exit(%struct.imgu_device* %23)
  %25 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %26 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @imgu_mmu_exit(i32 %27)
  %29 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %30 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_destroy(i32* %30)
  ret void
}

declare dso_local %struct.imgu_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_forbid(i32*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @imgu_video_nodes_exit(%struct.imgu_device*) #1

declare dso_local i32 @imgu_css_cleanup(i32*) #1

declare dso_local i32 @imgu_css_set_powerdown(i32*, i32) #1

declare dso_local i32 @imgu_dmamap_exit(%struct.imgu_device*) #1

declare dso_local i32 @imgu_mmu_exit(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
