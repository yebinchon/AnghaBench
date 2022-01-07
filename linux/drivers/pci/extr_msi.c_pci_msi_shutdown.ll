; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_pci_msi_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_pci_msi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32 }
%struct.msi_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@pci_msi_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_msi_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_msi_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @pci_msi_enable, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %7, %1
  br label %48

16:                                               ; preds = %10
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 2
  %19 = call i32 @dev_to_msi_list(i32* %18)
  %20 = call i32 @list_empty(i32 %19)
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call %struct.msi_desc* @first_pci_msi_entry(%struct.pci_dev* %22)
  store %struct.msi_desc* %23, %struct.msi_desc** %3, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = call i32 @pci_msi_set_enable(%struct.pci_dev* %24, i32 0)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @pci_intx_for_msi(%struct.pci_dev* %26, i32 1)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %31 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @msi_mask(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @__pci_msi_desc_mask_irq(%struct.msi_desc* %35, i32 %36, i32 %38)
  %40 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %41 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = call i32 @pcibios_alloc_irq(%struct.pci_dev* %46)
  br label %48

48:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32) #1

declare dso_local i32 @dev_to_msi_list(i32*) #1

declare dso_local %struct.msi_desc* @first_pci_msi_entry(%struct.pci_dev*) #1

declare dso_local i32 @pci_msi_set_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_intx_for_msi(%struct.pci_dev*, i32) #1

declare dso_local i32 @msi_mask(i32) #1

declare dso_local i32 @__pci_msi_desc_mask_irq(%struct.msi_desc*, i32, i32) #1

declare dso_local i32 @pcibios_alloc_irq(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
