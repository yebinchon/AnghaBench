; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_send_resources_released.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_send_resources_released.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_pcibus_device = type { i32 }
%struct.pci_child_message = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hv_pci_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@PCI_RESOURCES_RELEASED = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @hv_send_resources_released to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_send_resources_released(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_pcibus_device*, align 8
  %5 = alloca %struct.pci_child_message, align 4
  %6 = alloca %struct.hv_pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %9 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %10 = call %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device* %9)
  store %struct.hv_pcibus_device* %10, %struct.hv_pcibus_device** %4, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %45, %1
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.hv_pci_dev* @get_pcichild_wslot(%struct.hv_pcibus_device* %15, i32 %16)
  store %struct.hv_pci_dev* %17, %struct.hv_pci_dev** %6, align 8
  %18 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %6, align 8
  %19 = icmp ne %struct.hv_pci_dev* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %45

21:                                               ; preds = %14
  %22 = call i32 @memset(%struct.pci_child_message* %5, i32 0, i32 8)
  %23 = load i32, i32* @PCI_RESOURCES_RELEASED, align 4
  %24 = getelementptr inbounds %struct.pci_child_message, %struct.pci_child_message* %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %6, align 8
  %27 = getelementptr inbounds %struct.hv_pci_dev, %struct.hv_pci_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.pci_child_message, %struct.pci_child_message* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hv_pci_dev*, %struct.hv_pci_dev** %6, align 8
  %34 = call i32 @put_pcichild(%struct.hv_pci_dev* %33)
  %35 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %36 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %39 = call i32 @vmbus_sendpacket(i32 %37, %struct.pci_child_message* %5, i32 8, i32 0, i32 %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %21
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %11

48:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local %struct.hv_pci_dev* @get_pcichild_wslot(%struct.hv_pcibus_device*, i32) #1

declare dso_local i32 @memset(%struct.pci_child_message*, i32, i32) #1

declare dso_local i32 @put_pcichild(%struct.hv_pci_dev*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.pci_child_message*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
