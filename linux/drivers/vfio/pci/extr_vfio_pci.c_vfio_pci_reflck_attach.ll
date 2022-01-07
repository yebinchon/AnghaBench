; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_reflck_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_reflck_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@reflck_lock = common dso_local global i32 0, align 4
@vfio_pci_reflck_find = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*)* @vfio_pci_reflck_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_reflck_attach(%struct.vfio_pci_device* %0) #0 {
  %2 = alloca %struct.vfio_pci_device*, align 8
  %3 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %2, align 8
  %4 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %5 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pci_probe_reset_slot(i32 %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = call i32 @mutex_lock(i32* @reflck_lock)
  %14 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %15 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pci_is_root_bus(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %1
  %22 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %23 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* @vfio_pci_reflck_find, align 4
  %26 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %27 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %26, i32 0, i32 0
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @vfio_pci_for_each_slot_or_bus(%struct.TYPE_2__* %24, i32 %25, i32* %27, i32 %28)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21, %1
  %32 = call i32 (...) @vfio_pci_reflck_alloc()
  %33 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %34 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %21
  %36 = call i32 @mutex_unlock(i32* @reflck_lock)
  %37 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %38 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR_OR_ZERO(i32 %39)
  ret i32 %40
}

declare dso_local i32 @pci_probe_reset_slot(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @pci_is_root_bus(i32) #1

declare dso_local i64 @vfio_pci_for_each_slot_or_bus(%struct.TYPE_2__*, i32, i32*, i32) #1

declare dso_local i32 @vfio_pci_reflck_alloc(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
