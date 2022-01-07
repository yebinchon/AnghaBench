; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_virtio_pci_sriov_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_pci_common.c_virtio_pci_sriov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.virtio_pci_device = type { %struct.virtio_device }
%struct.virtio_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.virtio_device*)* }

@VIRTIO_CONFIG_S_DRIVER_OK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VIRTIO_F_SR_IOV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @virtio_pci_sriov_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_pci_sriov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtio_pci_device*, align 8
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.virtio_pci_device* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.virtio_pci_device* %10, %struct.virtio_pci_device** %6, align 8
  %11 = load %struct.virtio_pci_device*, %struct.virtio_pci_device** %6, align 8
  %12 = getelementptr inbounds %struct.virtio_pci_device, %struct.virtio_pci_device* %11, i32 0, i32 0
  store %struct.virtio_device* %12, %struct.virtio_device** %7, align 8
  %13 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %14 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %16, align 8
  %18 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %19 = call i32 %17(%struct.virtio_device* %18)
  %20 = load i32, i32* @VIRTIO_CONFIG_S_DRIVER_OK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %28 = load i32, i32* @VIRTIO_F_SR_IOV, align 4
  %29 = call i32 @__virtio_test_bit(%struct.virtio_device* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %26
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i64 @pci_vfs_assigned(%struct.pci_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_disable_sriov(%struct.pci_dev* %45)
  store i32 0, i32* %3, align 4
  br label %57

47:                                               ; preds = %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @pci_enable_sriov(%struct.pci_dev* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53, %44, %38, %31, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.virtio_pci_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @__virtio_test_bit(%struct.virtio_device*, i32) #1

declare dso_local i64 @pci_vfs_assigned(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
