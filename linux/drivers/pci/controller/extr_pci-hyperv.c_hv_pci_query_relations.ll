; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_query_relations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_query_relations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_pcibus_device = type { i32 }
%struct.pci_message = type { i32 }
%struct.completion = type { i32 }

@ENOTEMPTY = common dso_local global i32 0, align 4
@PCI_QUERY_BUS_RELATIONS = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @hv_pci_query_relations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_pci_query_relations(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_pcibus_device*, align 8
  %5 = alloca %struct.pci_message, align 4
  %6 = alloca %struct.completion, align 4
  %7 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %8 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %9 = call %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device* %8)
  store %struct.hv_pcibus_device* %9, %struct.hv_pcibus_device** %4, align 8
  %10 = call i32 @init_completion(%struct.completion* %6)
  %11 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %4, align 8
  %12 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %11, i32 0, i32 0
  %13 = call i64 @cmpxchg(i32* %12, i32* null, %struct.completion* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOTEMPTY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = call i32 @memset(%struct.pci_message* %5, i32 0, i32 4)
  %20 = load i32, i32* @PCI_QUERY_BUS_RELATIONS, align 4
  %21 = getelementptr inbounds %struct.pci_message, %struct.pci_message* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %23 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %26 = call i32 @vmbus_sendpacket(i32 %24, %struct.pci_message* %5, i32 4, i32 0, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %31 = call i32 @wait_for_response(%struct.hv_device* %30, %struct.completion* %6)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.hv_pcibus_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i64 @cmpxchg(i32*, i32*, %struct.completion*) #1

declare dso_local i32 @memset(%struct.pci_message*, i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.pci_message*, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_response(%struct.hv_device*, %struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
