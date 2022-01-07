; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_enter_d0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_enter_d0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, i32 }
%struct.hv_pcibus_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_bus_d0_entry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hv_pci_compl = type { i64, i32 }
%struct.pci_packet = type { i32, %struct.hv_pci_compl*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hv_pci_generic_compl = common dso_local global i32 0, align 4
@PCI_BUS_D0ENTRY = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"PCI Pass-through VSP failed D0 Entry with status %x\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @hv_pci_enter_d0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_pci_enter_d0(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_pcibus_device*, align 8
  %5 = alloca %struct.pci_bus_d0_entry*, align 8
  %6 = alloca %struct.hv_pci_compl, align 8
  %7 = alloca %struct.pci_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %9 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %10 = call %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device* %9)
  store %struct.hv_pcibus_device* %10, %struct.hv_pcibus_device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pci_packet* @kzalloc(i32 32, i32 %11)
  store %struct.pci_packet* %12, %struct.pci_packet** %7, align 8
  %13 = load %struct.pci_packet*, %struct.pci_packet** %7, align 8
  %14 = icmp ne %struct.pci_packet* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %6, i32 0, i32 1
  %20 = call i32 @init_completion(i32* %19)
  %21 = load i32, i32* @hv_pci_generic_compl, align 4
  %22 = load %struct.pci_packet*, %struct.pci_packet** %7, align 8
  %23 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pci_packet*, %struct.pci_packet** %7, align 8
  %25 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %24, i32 0, i32 1
  store %struct.hv_pci_compl* %6, %struct.hv_pci_compl** %25, align 8
  %26 = load %struct.pci_packet*, %struct.pci_packet** %7, align 8
  %27 = getelementptr inbounds %struct.pci_packet, %struct.pci_packet* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.pci_bus_d0_entry*
  store %struct.pci_bus_d0_entry* %28, %struct.pci_bus_d0_entry** %5, align 8
  %29 = load i32, i32* @PCI_BUS_D0ENTRY, align 4
  %30 = load %struct.pci_bus_d0_entry*, %struct.pci_bus_d0_entry** %5, align 8
  %31 = getelementptr inbounds %struct.pci_bus_d0_entry, %struct.pci_bus_d0_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %4, align 8
  %34 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pci_bus_d0_entry*, %struct.pci_bus_d0_entry** %5, align 8
  %39 = getelementptr inbounds %struct.pci_bus_d0_entry, %struct.pci_bus_d0_entry* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %41 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pci_bus_d0_entry*, %struct.pci_bus_d0_entry** %5, align 8
  %44 = load %struct.pci_packet*, %struct.pci_packet** %7, align 8
  %45 = ptrtoint %struct.pci_packet* %44 to i64
  %46 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %47 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %48 = call i32 @vmbus_sendpacket(i32 %42, %struct.pci_bus_d0_entry* %43, i32 8, i64 %45, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %18
  %52 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %53 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %6, i32 0, i32 1
  %54 = call i32 @wait_for_response(%struct.hv_device* %52, i32* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %18
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %72

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %65 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.hv_pci_compl, %struct.hv_pci_compl* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @EPROTO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %72

71:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %63, %58
  %73 = load %struct.pci_packet*, %struct.pci_packet** %7, align 8
  %74 = call i32 @kfree(%struct.pci_packet* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local %struct.pci_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.pci_bus_d0_entry*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_response(%struct.hv_device*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.pci_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
