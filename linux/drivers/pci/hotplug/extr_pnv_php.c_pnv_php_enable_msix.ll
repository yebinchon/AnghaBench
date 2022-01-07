; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_php_slot = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.msix_entry = type { i32, i32 }

@PCI_EXP_FLAGS = common dso_local global i32 0, align 4
@PCI_EXP_FLAGS_IRQ = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error %d enabling MSIx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnv_php_slot*)* @pnv_php_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_php_enable_msix(%struct.pnv_php_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnv_php_slot*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.msix_entry, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pnv_php_slot* %0, %struct.pnv_php_slot** %3, align 8
  %9 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %10 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pci_msix_vec_count(%struct.pci_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load i32, i32* @PCI_EXP_FLAGS, align 4
  %21 = call i32 @pcie_capability_read_word(%struct.pci_dev* %19, i32 %20, i32* %8)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PCI_EXP_FLAGS_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 9
  %26 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %18
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %35, %struct.msix_entry* %5, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pci_warn(%struct.pci_dev* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %39, %31, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @pci_msix_vec_count(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.msix_entry*, i32) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
