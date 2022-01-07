; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c___pci_enable_msix_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c___pci_enable_msix_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.msix_entry = type { i32 }
%struct.irq_affinity = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.msix_entry*, i32, i32, %struct.irq_affinity*, i32)* @__pci_enable_msix_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_enable_msix_range(%struct.pci_dev* %0, %struct.msix_entry* %1, i32 %2, i32 %3, %struct.irq_affinity* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.msix_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_affinity*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store %struct.msix_entry* %1, %struct.msix_entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.irq_affinity* %4, %struct.irq_affinity** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @ERANGE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %73

23:                                               ; preds = %6
  %24 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %73

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %71, %32
  %34 = load %struct.irq_affinity*, %struct.irq_affinity** %12, align 8
  %35 = icmp ne %struct.irq_affinity* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.irq_affinity*, %struct.irq_affinity** %12, align 8
  %40 = call i32 @irq_calc_affinity_vectors(i32 %37, i32 %38, %struct.irq_affinity* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %73

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %33
  %49 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %50 = load %struct.msix_entry*, %struct.msix_entry** %9, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.irq_affinity*, %struct.irq_affinity** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @__pci_enable_msix(%struct.pci_dev* %49, %struct.msix_entry* %50, i32 %51, %struct.irq_affinity* %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %7, align 4
  br label %73

59:                                               ; preds = %48
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %7, align 4
  br label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @ENOSPC, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %15, align 4
  br label %33

73:                                               ; preds = %68, %62, %57, %44, %29, %20
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irq_calc_affinity_vectors(i32, i32, %struct.irq_affinity*) #1

declare dso_local i32 @__pci_enable_msix(%struct.pci_dev*, %struct.msix_entry*, i32, %struct.irq_affinity*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
