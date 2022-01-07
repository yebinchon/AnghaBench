; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_pci_alloc_irq_vectors_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_pci_alloc_irq_vectors_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.irq_affinity = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@PCI_IRQ_AFFINITY = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_IRQ_LEGACY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_alloc_irq_vectors_affinity(%struct.pci_dev* %0, i32 %1, i32 %2, i32 %3, %struct.irq_affinity* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_affinity*, align 8
  %12 = alloca %struct.irq_affinity, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.irq_affinity* %4, %struct.irq_affinity** %11, align 8
  %15 = bitcast %struct.irq_affinity* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load i32, i32* @ENOSPC, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PCI_IRQ_AFFINITY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.irq_affinity*, %struct.irq_affinity** %11, align 8
  %26 = icmp ne %struct.irq_affinity* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store %struct.irq_affinity* %12, %struct.irq_affinity** %11, align 8
  br label %28

28:                                               ; preds = %27, %24
  br label %35

29:                                               ; preds = %5
  %30 = load %struct.irq_affinity*, %struct.irq_affinity** %11, align 8
  %31 = call i64 @WARN_ON(%struct.irq_affinity* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.irq_affinity* null, %struct.irq_affinity** %11, align 8
  br label %34

34:                                               ; preds = %33, %29
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.irq_affinity*, %struct.irq_affinity** %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @__pci_enable_msix_range(%struct.pci_dev* %41, i32* null, i32 %42, i32 %43, %struct.irq_affinity* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %101

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PCI_IRQ_MSI, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.irq_affinity*, %struct.irq_affinity** %11, align 8
  %62 = call i32 @__pci_enable_msi_range(%struct.pci_dev* %58, i32 %59, i32 %60, %struct.irq_affinity* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %6, align 4
  br label %101

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @PCI_IRQ_LEGACY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.irq_affinity*, %struct.irq_affinity** %11, align 8
  %83 = icmp ne %struct.irq_affinity* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.irq_affinity*, %struct.irq_affinity** %11, align 8
  %86 = call i32 @irq_create_affinity_masks(i32 1, %struct.irq_affinity* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %89 = call i32 @pci_intx(%struct.pci_dev* %88, i32 1)
  store i32 1, i32* %6, align 4
  br label %101

90:                                               ; preds = %76, %73
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @ENOSPC, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOSPC, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %96, %87, %65, %49
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON(%struct.irq_affinity*) #2

declare dso_local i32 @__pci_enable_msix_range(%struct.pci_dev*, i32*, i32, i32, %struct.irq_affinity*, i32) #2

declare dso_local i32 @__pci_enable_msi_range(%struct.pci_dev*, i32, i32, %struct.irq_affinity*) #2

declare dso_local i32 @irq_create_affinity_masks(i32, %struct.irq_affinity*) #2

declare dso_local i32 @pci_intx(%struct.pci_dev*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
