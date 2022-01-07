; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_php_slot = type { i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"pciehp-%s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot alloc workqueue\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ibm,slot-broken-pdc\00", align 1
@PNV_PHP_FLAG_BROKEN_PDC = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_DLLSC = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_PDC = common dso_local global i32 0, align 4
@pnv_php_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Error %d enabling IRQ %d\0A\00", align 1
@PCI_EXP_SLTCTL = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_PDCE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_HPIE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_DLLSCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_php_slot*, i32)* @pnv_php_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_php_init_irq(%struct.pnv_php_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.pnv_php_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pnv_php_slot* %0, %struct.pnv_php_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %11 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %10, i32 0, i32 5
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %14 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %15)
  %17 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %18 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %20 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = call i32 (%struct.pci_dev*, i8*, ...) @pci_warn(%struct.pci_dev* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %27 = call i32 @pnv_php_disable_irq(%struct.pnv_php_slot* %26, i32 1)
  br label %122

28:                                               ; preds = %2
  %29 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %30 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @of_property_read_u32(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64* %6)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @PNV_PHP_FLAG_BROKEN_PDC, align 4
  %40 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %41 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %35, %28
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %47 = call i32 @pcie_capability_read_word(%struct.pci_dev* %45, i32 %46, i32* %7)
  %48 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %49 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PNV_PHP_FLAG_BROKEN_PDC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32, i32* @PCI_EXP_SLTSTA_DLLSC, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %64

58:                                               ; preds = %44
  %59 = load i32, i32* @PCI_EXP_SLTSTA_PDC, align 4
  %60 = load i32, i32* @PCI_EXP_SLTSTA_DLLSC, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %58, %54
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @pcie_capability_write_word(%struct.pci_dev* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @pnv_php_interrupt, align 4
  %71 = load i32, i32* @IRQF_SHARED, align 4
  %72 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %73 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %76 = call i32 @request_irq(i32 %69, i32 %70, i32 %71, i32 %74, %struct.pnv_php_slot* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %64
  %80 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %81 = call i32 @pnv_php_disable_irq(%struct.pnv_php_slot* %80, i32 1)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (%struct.pci_dev*, i8*, ...) @pci_warn(%struct.pci_dev* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  br label %122

86:                                               ; preds = %64
  %87 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %88 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %89 = call i32 @pcie_capability_read_word(%struct.pci_dev* %87, i32 %88, i32* %8)
  %90 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %91 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PNV_PHP_FLAG_BROKEN_PDC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %86
  %97 = load i32, i32* @PCI_EXP_SLTCTL_PDCE, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @PCI_EXP_SLTCTL_HPIE, align 4
  %102 = load i32, i32* @PCI_EXP_SLTCTL_DLLSCE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %114

106:                                              ; preds = %86
  %107 = load i32, i32* @PCI_EXP_SLTCTL_HPIE, align 4
  %108 = load i32, i32* @PCI_EXP_SLTCTL_PDCE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @PCI_EXP_SLTCTL_DLLSCE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %106, %96
  %115 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %116 = load i32, i32* @PCI_EXP_SLTCTL, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @pcie_capability_write_word(%struct.pci_dev* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %3, align 8
  %121 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %114, %79, %23
  ret void
}

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, ...) #1

declare dso_local i32 @pnv_php_disable_irq(%struct.pnv_php_slot*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_write_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pnv_php_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
