; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfio_pci_device = type { %struct.vfio_pci_device*, i32, %struct.vfio_pci_device*, i32 }

@disable_idle_d3 = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_IO = common dso_local global i32 0, align 4
@VGA_RSRC_NORMAL_MEM = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_IO = common dso_local global i32 0, align 4
@VGA_RSRC_LEGACY_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vfio_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.vfio_pci_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = call %struct.vfio_pci_device* @vfio_del_group_dev(%struct.TYPE_3__* %5)
  store %struct.vfio_pci_device* %6, %struct.vfio_pci_device** %3, align 8
  %7 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %8 = icmp ne %struct.vfio_pci_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %12 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vfio_pci_reflck_put(i32 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @vfio_iommu_group_put(i32 %18, %struct.TYPE_3__* %20)
  %22 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %23 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %22, i32 0, i32 2
  %24 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %23, align 8
  %25 = call i32 @kfree(%struct.vfio_pci_device* %24)
  %26 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %27 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %26, i32 0, i32 1
  %28 = call i32 @mutex_destroy(i32* %27)
  %29 = load i32, i32* @disable_idle_d3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %10
  %32 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %33 = load i32, i32* @PCI_D0, align 4
  %34 = call i32 @vfio_pci_set_power_state(%struct.vfio_pci_device* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %10
  %36 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %37 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %36, i32 0, i32 0
  %38 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %37, align 8
  %39 = call i32 @kfree(%struct.vfio_pci_device* %38)
  %40 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %41 = call i32 @kfree(%struct.vfio_pci_device* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = call i64 @vfio_pci_is_vga(%struct.pci_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %35
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 @vga_client_register(%struct.pci_dev* %46, i32* null, i32* null, i32* null)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = load i32, i32* @VGA_RSRC_NORMAL_IO, align 4
  %50 = load i32, i32* @VGA_RSRC_NORMAL_MEM, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @VGA_RSRC_LEGACY_IO, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @VGA_RSRC_LEGACY_MEM, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @vga_set_legacy_decoding(%struct.pci_dev* %48, i32 %55)
  br label %57

57:                                               ; preds = %9, %45, %35
  ret void
}

declare dso_local %struct.vfio_pci_device* @vfio_del_group_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @vfio_pci_reflck_put(i32) #1

declare dso_local i32 @vfio_iommu_group_put(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.vfio_pci_device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @vfio_pci_set_power_state(%struct.vfio_pci_device*, i32) #1

declare dso_local i64 @vfio_pci_is_vga(%struct.pci_dev*) #1

declare dso_local i32 @vga_client_register(%struct.pci_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @vga_set_legacy_decoding(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
