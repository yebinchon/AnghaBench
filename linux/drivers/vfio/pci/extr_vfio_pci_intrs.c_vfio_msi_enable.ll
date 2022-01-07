; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_msi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_msi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, i64, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFIO_PCI_MSIX_IRQ_INDEX = common dso_local global i32 0, align 4
@VFIO_PCI_MSI_IRQ_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32, i32)* @vfio_msi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_msi_enable(%struct.vfio_pci_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_pci_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %12 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %11, i32 0, i32 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @PCI_IRQ_MSIX, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @PCI_IRQ_MSI, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  %22 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %23 = call i32 @is_irq_none(%struct.vfio_pci_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kcalloc(i32 %29, i32 4, i32 %30)
  %32 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %33 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %35 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %86

41:                                               ; preds = %28
  %42 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %42, i32 1, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %54 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %57 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kfree(i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %86

61:                                               ; preds = %41
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %64 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @VFIO_PCI_MSIX_IRQ_INDEX, align 4
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @VFIO_PCI_MSI_IRQ_INDEX, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %74 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %78, 2
  %80 = sub nsw i32 %79, 1
  %81 = call i64 @fls(i32 %80)
  %82 = sub nsw i64 %81, 1
  %83 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %5, align 8
  %84 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %77, %71
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %55, %38, %25
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @is_irq_none(%struct.vfio_pci_device*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
