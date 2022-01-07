; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-host.c_cdns_pcie_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-cadence-host.c_cdns_pcie_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.list_head = type { i32 }
%struct.cdns_pcie_rc = type { %struct.TYPE_2__, %struct.resource* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.list_head*, %struct.cdns_pcie_rc*)* @cdns_pcie_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_pcie_host_init(%struct.device* %0, %struct.list_head* %1, %struct.cdns_pcie_rc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.cdns_pcie_rc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.cdns_pcie_rc* %2, %struct.cdns_pcie_rc** %7, align 8
  store %struct.resource* null, %struct.resource** %8, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.list_head*, %struct.list_head** %6, align 8
  %12 = call i32 @pci_parse_request_of_pci_ranges(%struct.device* %10, %struct.list_head* %11, %struct.resource** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load %struct.resource*, %struct.resource** %8, align 8
  %19 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %7, align 8
  %20 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %19, i32 0, i32 1
  store %struct.resource* %18, %struct.resource** %20, align 8
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %7, align 8
  %25 = getelementptr inbounds %struct.cdns_pcie_rc, %struct.cdns_pcie_rc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %7, align 8
  %28 = call i32 @cdns_pcie_host_init_root_port(%struct.cdns_pcie_rc* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %39

32:                                               ; preds = %17
  %33 = load %struct.cdns_pcie_rc*, %struct.cdns_pcie_rc** %7, align 8
  %34 = call i32 @cdns_pcie_host_init_address_translation(%struct.cdns_pcie_rc* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %43

39:                                               ; preds = %37, %31
  %40 = load %struct.list_head*, %struct.list_head** %6, align 8
  %41 = call i32 @pci_free_resource_list(%struct.list_head* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %38, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @pci_parse_request_of_pci_ranges(%struct.device*, %struct.list_head*, %struct.resource**) #1

declare dso_local i32 @cdns_pcie_host_init_root_port(%struct.cdns_pcie_rc*) #1

declare dso_local i32 @cdns_pcie_host_init_address_translation(%struct.cdns_pcie_rc*) #1

declare dso_local i32 @pci_free_resource_list(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
