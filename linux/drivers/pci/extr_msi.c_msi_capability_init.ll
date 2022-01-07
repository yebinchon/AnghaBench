; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_msi_capability_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_msi_capability_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.irq_affinity = type { i32 }
%struct.msi_desc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, %struct.irq_affinity*)* @msi_capability_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_capability_init(%struct.pci_dev* %0, i32 %1, %struct.irq_affinity* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_affinity*, align 8
  %8 = alloca %struct.msi_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.irq_affinity* %2, %struct.irq_affinity** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i32 @pci_msi_set_enable(%struct.pci_dev* %11, i32 0)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.irq_affinity*, %struct.irq_affinity** %7, align 8
  %16 = call %struct.msi_desc* @msi_setup_entry(%struct.pci_dev* %13, i32 %14, %struct.irq_affinity* %15)
  store %struct.msi_desc* %16, %struct.msi_desc** %8, align 8
  %17 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %18 = icmp ne %struct.msi_desc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %95

22:                                               ; preds = %3
  %23 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %24 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @msi_mask(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @msi_mask_irq(%struct.msi_desc* %28, i32 %29, i32 %30)
  %32 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %33 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %32, i32 0, i32 1
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 2
  %36 = call i32 @dev_to_msi_list(i32* %35)
  %37 = call i32 @list_add_tail(i32* %33, i32 %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %41 = call i32 @pci_msi_setup_msi_irqs(%struct.pci_dev* %38, i32 %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %22
  %45 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @msi_mask_irq(%struct.msi_desc* %45, i32 %46, i32 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = call i32 @free_msi_irqs(%struct.pci_dev* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %95

53:                                               ; preds = %22
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = call i32 @msi_verify_entries(%struct.pci_dev* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = xor i32 %61, -1
  %63 = call i32 @msi_mask_irq(%struct.msi_desc* %59, i32 %60, i32 %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = call i32 @free_msi_irqs(%struct.pci_dev* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %95

67:                                               ; preds = %53
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = call i32 @populate_msi_sysfs(%struct.pci_dev* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @msi_mask_irq(%struct.msi_desc* %73, i32 %74, i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %79 = call i32 @free_msi_irqs(%struct.pci_dev* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %95

81:                                               ; preds = %67
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = call i32 @pci_intx_for_msi(%struct.pci_dev* %82, i32 0)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = call i32 @pci_msi_set_enable(%struct.pci_dev* %84, i32 1)
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  store i32 1, i32* %87, align 4
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = call i32 @pcibios_free_irq(%struct.pci_dev* %88)
  %90 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %91 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %81, %72, %58, %44, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @pci_msi_set_enable(%struct.pci_dev*, i32) #1

declare dso_local %struct.msi_desc* @msi_setup_entry(%struct.pci_dev*, i32, %struct.irq_affinity*) #1

declare dso_local i32 @msi_mask(i32) #1

declare dso_local i32 @msi_mask_irq(%struct.msi_desc*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @dev_to_msi_list(i32*) #1

declare dso_local i32 @pci_msi_setup_msi_irqs(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @free_msi_irqs(%struct.pci_dev*) #1

declare dso_local i32 @msi_verify_entries(%struct.pci_dev*) #1

declare dso_local i32 @populate_msi_sysfs(%struct.pci_dev*) #1

declare dso_local i32 @pci_intx_for_msi(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcibios_free_irq(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
