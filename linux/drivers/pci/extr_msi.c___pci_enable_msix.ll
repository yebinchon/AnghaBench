; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c___pci_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c___pci_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.msix_entry = type { i32 }
%struct.irq_affinity = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_IRQ_VIRTUAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"can't enable MSI-X (MSI IRQ already assigned)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.msix_entry*, i32, %struct.irq_affinity*, i32)* @__pci_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_enable_msix(%struct.pci_dev* %0, %struct.msix_entry* %1, i32 %2, %struct.irq_affinity* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.msix_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_affinity*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store %struct.msix_entry* %1, %struct.msix_entry** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.irq_affinity* %3, %struct.irq_affinity** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @pci_msi_supported(%struct.pci_dev* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %109

22:                                               ; preds = %5
  %23 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %24 = call i32 @pci_msix_vec_count(%struct.pci_dev* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %6, align 4
  br label %109

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @PCI_IRQ_VIRTUAL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %109

40:                                               ; preds = %33, %29
  %41 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %42 = icmp ne %struct.msix_entry* %41, null
  br i1 %42, label %43, label %93

43:                                               ; preds = %40
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %89, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %109

60:                                               ; preds = %48
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %85, %60
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %68, i64 %70
  %72 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %74, i64 %76
  %78 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %73, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %109

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %63

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %44

92:                                               ; preds = %44
  br label %93

93:                                               ; preds = %92, %40
  %94 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %100 = call i32 @pci_info(%struct.pci_dev* %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %109

103:                                              ; preds = %93
  %104 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %105 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.irq_affinity*, %struct.irq_affinity** %10, align 8
  %108 = call i32 @msix_capability_init(%struct.pci_dev* %104, %struct.msix_entry* %105, i32 %106, %struct.irq_affinity* %107)
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %103, %98, %81, %57, %38, %27, %19
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @pci_msi_supported(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_msix_vec_count(%struct.pci_dev*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i32 @msix_capability_init(%struct.pci_dev*, %struct.msix_entry*, i32, %struct.irq_affinity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
