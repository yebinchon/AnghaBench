; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_basic_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_basic_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.perm_bits = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32, %struct.perm_bits*, i32, i32*)* @vfio_basic_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_basic_config_read(%struct.vfio_pci_device* %0, i32 %1, i32 %2, %struct.perm_bits* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.vfio_pci_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perm_bits*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.perm_bits* %3, %struct.perm_bits** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call i64 @is_bar(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %7, align 8
  %20 = call i32 @vfio_bar_fixup(%struct.vfio_pci_device* %19)
  br label %21

21:                                               ; preds = %18, %6
  %22 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.perm_bits*, %struct.perm_bits** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @vfio_default_config_read(%struct.vfio_pci_device* %22, i32 %23, i32 %24, %struct.perm_bits* %25, i32 %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @PCI_COMMAND, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %21
  %33 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %7, align 8
  %34 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %32
  %40 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %7, align 8
  %41 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @PCI_COMMAND, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load i32*, i32** %12, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %39, %32, %21
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i64 @is_bar(i32) #1

declare dso_local i32 @vfio_bar_fixup(%struct.vfio_pci_device*) #1

declare dso_local i32 @vfio_default_config_read(%struct.vfio_pci_device*, i32, i32, %struct.perm_bits*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
