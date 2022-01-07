; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_iommu.h_parisc_walk_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_iommu.h_parisc_walk_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_hba_data = type { i32 }
%struct.device = type { %struct.pci_hba_data*, %struct.device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_hba_data* (%struct.device*)* @parisc_walk_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_hba_data* @parisc_walk_tree(%struct.device* %0) #0 {
  %2 = alloca %struct.pci_hba_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.pci_hba_data*, %struct.pci_hba_data** %6, align 8
  %8 = call i64 @likely(%struct.pci_hba_data* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.pci_hba_data*, %struct.pci_hba_data** %12, align 8
  store %struct.pci_hba_data* %13, %struct.pci_hba_data** %2, align 8
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %4, align 8
  br label %18

18:                                               ; preds = %33, %14
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.pci_hba_data*, %struct.pci_hba_data** %23, align 8
  %25 = icmp ne %struct.pci_hba_data* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load %struct.pci_hba_data*, %struct.pci_hba_data** %28, align 8
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  store %struct.pci_hba_data* %29, %struct.pci_hba_data** %31, align 8
  br label %37

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 1
  %36 = load %struct.device*, %struct.device** %35, align 8
  store %struct.device* %36, %struct.device** %4, align 8
  br label %18

37:                                               ; preds = %26, %18
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load %struct.pci_hba_data*, %struct.pci_hba_data** %39, align 8
  store %struct.pci_hba_data* %40, %struct.pci_hba_data** %2, align 8
  br label %41

41:                                               ; preds = %37, %10
  %42 = load %struct.pci_hba_data*, %struct.pci_hba_data** %2, align 8
  ret %struct.pci_hba_data* %42
}

declare dso_local i64 @likely(%struct.pci_hba_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
