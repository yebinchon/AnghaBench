; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32 }
%struct.pci_bus = type { i32 }

@pci_release_dev = common dso_local global i32 0, align 4
@pci_fixup_header = common dso_local global i32 0, align 4
@pci_bus_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_device_add(%struct.pci_dev* %0, %struct.pci_bus* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i32 @pci_configure_device(%struct.pci_dev* %6)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 2
  %10 = call i32 @device_initialize(%struct.TYPE_6__* %9)
  %11 = load i32, i32* @pci_release_dev, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 2
  %17 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %18 = call i32 @pcibus_to_node(%struct.pci_bus* %17)
  %19 = call i32 @set_dev_node(%struct.TYPE_6__* %16, i32 %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 5
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32* %21, i32** %24, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32* %26, i32** %29, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 2
  %35 = call i32 @dma_set_max_seg_size(%struct.TYPE_6__* %34, i32 65536)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 2
  %38 = call i32 @dma_set_seg_boundary(%struct.TYPE_6__* %37, i32 -1)
  %39 = load i32, i32* @pci_fixup_header, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = call i32 @pci_fixup_device(i32 %39, %struct.pci_dev* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = call i32 @pci_reassigndev_resource_alignment(%struct.pci_dev* %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = call i32 @pci_init_capabilities(%struct.pci_dev* %46)
  %48 = call i32 @down_write(i32* @pci_bus_sem)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 3
  %51 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %52 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %51, i32 0, i32 0
  %53 = call i32 @list_add_tail(i32* %50, i32* %52)
  %54 = call i32 @up_write(i32* @pci_bus_sem)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = call i32 @pcibios_add_device(%struct.pci_dev* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = call i32 @pci_set_msi_domain(%struct.pci_dev* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 2
  %67 = call i32 @device_add(%struct.TYPE_6__* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @WARN_ON(i32 %70)
  ret void
}

declare dso_local i32 @pci_configure_device(%struct.pci_dev*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @set_dev_node(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pcibus_to_node(%struct.pci_bus*) #1

declare dso_local i32 @dma_set_max_seg_size(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dma_set_seg_boundary(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pci_fixup_device(i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_reassigndev_resource_alignment(%struct.pci_dev*) #1

declare dso_local i32 @pci_init_capabilities(%struct.pci_dev*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @pcibios_add_device(%struct.pci_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_set_msi_domain(%struct.pci_dev*) #1

declare dso_local i32 @device_add(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
