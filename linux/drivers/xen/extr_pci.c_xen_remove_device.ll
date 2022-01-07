; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pci.c_xen_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pci.c_xen_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.physdev_pci_device = type { i32, i32, i64 }
%struct.physdev_manage_pci = type { i32, i32, i64 }

@pci_seg_supported = common dso_local global i64 0, align 8
@PHYSDEVOP_pci_device_remove = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@PHYSDEVOP_manage_pci_remove = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @xen_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.physdev_pci_device, align 8
  %6 = alloca %struct.physdev_manage_pci, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.pci_dev* @to_pci_dev(%struct.device* %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load i64, i64* @pci_seg_supported, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.physdev_pci_device, %struct.physdev_pci_device* %5, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 8
  %16 = getelementptr inbounds %struct.physdev_pci_device, %struct.physdev_pci_device* %5, i32 0, i32 1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = getelementptr inbounds %struct.physdev_pci_device, %struct.physdev_pci_device* %5, i32 0, i32 2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i64 @pci_domain_nr(%struct.TYPE_2__* %25)
  store i64 %26, i64* %22, align 8
  %27 = load i32, i32* @PHYSDEVOP_pci_device_remove, align 4
  %28 = call i32 @HYPERVISOR_physdev_op(i32 %27, %struct.physdev_pci_device* %5)
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %1
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i64 @pci_domain_nr(%struct.TYPE_2__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOSYS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.physdev_manage_pci, %struct.physdev_manage_pci* %6, i32 0, i32 0
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %39, align 8
  %43 = getelementptr inbounds %struct.physdev_manage_pci, %struct.physdev_manage_pci* %6, i32 0, i32 1
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %43, align 4
  %49 = getelementptr inbounds %struct.physdev_manage_pci, %struct.physdev_manage_pci* %6, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @PHYSDEVOP_manage_pci_remove, align 4
  %51 = bitcast %struct.physdev_manage_pci* %6 to %struct.physdev_pci_device*
  %52 = call i32 @HYPERVISOR_physdev_op(i32 %50, %struct.physdev_pci_device* %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %38, %35
  br label %54

54:                                               ; preds = %53, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_pci_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
