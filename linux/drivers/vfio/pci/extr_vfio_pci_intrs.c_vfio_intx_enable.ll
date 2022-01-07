; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_intx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_intrs.c_vfio_intx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFIO_PCI_INTX_IRQ_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*)* @vfio_intx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_intx_enable(%struct.vfio_pci_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_pci_device*, align 8
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %3, align 8
  %4 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %5 = call i32 @is_irq_none(%struct.vfio_pci_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %12 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %10
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %21)
  %23 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %24 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %23, i32 0, i32 2
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %24, align 8
  %25 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %26 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %20
  %33 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %34 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %36 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %39 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %44 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %32
  %48 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %49 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %52 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @pci_intx(%struct.TYPE_3__* %50, i32 %59)
  br label %61

61:                                               ; preds = %47, %32
  %62 = load i32, i32* @VFIO_PCI_INTX_IRQ_INDEX, align 4
  %63 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %64 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %29, %17, %7
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @is_irq_none(%struct.vfio_pci_device*) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_intx(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
