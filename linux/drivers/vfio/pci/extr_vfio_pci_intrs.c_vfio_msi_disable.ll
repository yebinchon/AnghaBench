; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_msi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_msi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, %struct.TYPE_2__*, i32, i64, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@VFIO_PCI_NUM_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_pci_device*, i32)* @vfio_msi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_msi_disable(%struct.vfio_pci_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vfio_pci_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %8 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %7, i32 0, i32 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %33, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %13 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %18 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @vfio_virqfd_disable(i32* %23)
  %25 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %26 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @vfio_virqfd_disable(i32* %31)
  br label %33

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %38 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %39 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @vfio_msi_set_block(%struct.vfio_pci_device* %37, i32 0, i32 %40, i32* null, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %43)
  %45 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %46 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = call i32 @pci_intx(%struct.pci_dev* %50, i32 0)
  br label %52

52:                                               ; preds = %49, %36
  %53 = load i32, i32* @VFIO_PCI_NUM_IRQS, align 4
  %54 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %55 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %57 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %59 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = call i32 @kfree(%struct.TYPE_2__* %60)
  ret void
}

declare dso_local i32 @vfio_virqfd_disable(i32*) #1

declare dso_local i32 @vfio_msi_set_block(%struct.vfio_pci_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @pci_intx(%struct.pci_dev*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
