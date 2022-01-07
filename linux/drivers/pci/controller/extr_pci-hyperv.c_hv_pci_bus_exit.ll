; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_bus_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_bus_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.hv_pcibus_device = type { i32 }
%struct.anon = type { %struct.pci_packet, [4 x i32] }
%struct.pci_packet = type { %struct.TYPE_4__*, %struct.hv_pci_compl*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hv_pci_compl = type { i32 }
%struct.pci_bus_relations = type { %struct.TYPE_4__*, %struct.hv_pci_compl*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Couldn't send resources released packet(s)\0A\00", align 1
@hv_pci_generic_compl = common dso_local global i32 0, align 4
@PCI_BUS_D0EXIT = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*)* @hv_pci_bus_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_pci_bus_exit(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.hv_pcibus_device*, align 8
  %4 = alloca %struct.anon, align 8
  %5 = alloca %struct.pci_bus_relations, align 8
  %6 = alloca %struct.hv_pci_compl, align 4
  %7 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %8 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %9 = call %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device* %8)
  store %struct.hv_pcibus_device* %9, %struct.hv_pcibus_device** %3, align 8
  %10 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %11 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %64

17:                                               ; preds = %1
  %18 = bitcast %struct.pci_bus_relations* %5 to %struct.pci_packet*
  %19 = call i32 @memset(%struct.pci_packet* %18, i32 0, i32 24)
  %20 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %3, align 8
  %21 = bitcast %struct.pci_bus_relations* %5 to %struct.pci_packet*
  %22 = call i32 @hv_pci_devices_present(%struct.hv_pcibus_device* %20, %struct.pci_packet* %21)
  %23 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %24 = call i32 @hv_send_resources_released(%struct.hv_device* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %29 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %28, i32 0, i32 1
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %17
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %33 = call i32 @memset(%struct.pci_packet* %32, i32 0, i32 24)
  %34 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %6, i32 0, i32 0
  %35 = call i32 @init_completion(i32* %34)
  %36 = load i32, i32* @hv_pci_generic_compl, align 4
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %38 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %40 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %39, i32 0, i32 1
  store %struct.hv_pci_compl* %6, %struct.hv_pci_compl** %40, align 8
  %41 = load i32, i32* @PCI_BUS_D0EXIT, align 4
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %43 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  %47 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %48 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %51 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 0
  %53 = ptrtoint %struct.pci_packet* %52 to i64
  %54 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %55 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %56 = call i32 @vmbus_sendpacket(%struct.TYPE_3__* %49, %struct.TYPE_4__** %51, i32 4, i64 %53, i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %31
  %60 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %6, i32 0, i32 0
  %61 = load i32, i32* @HZ, align 4
  %62 = mul nsw i32 10, %61
  %63 = call i32 @wait_for_completion_timeout(i32* %60, i32 %62)
  br label %64

64:                                               ; preds = %16, %59, %31
  ret void
}

declare dso_local %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @memset(%struct.pci_packet*, i32, i32) #1

declare dso_local i32 @hv_pci_devices_present(%struct.hv_pcibus_device*, %struct.pci_packet*) #1

declare dso_local i32 @hv_send_resources_released(%struct.hv_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vmbus_sendpacket(%struct.TYPE_3__*, %struct.TYPE_4__**, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
