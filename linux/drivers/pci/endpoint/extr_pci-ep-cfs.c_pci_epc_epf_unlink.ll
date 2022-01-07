; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-ep-cfs.c_pci_epc_epf_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-ep-cfs.c_pci_epc_epf_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.pci_epc = type { i32 }
%struct.pci_epf = type { i32 }
%struct.pci_epf_group = type { %struct.pci_epf* }
%struct.pci_epc_group = type { i32, %struct.pci_epc*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_item*, %struct.config_item*)* @pci_epc_epf_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_epc_epf_unlink(%struct.config_item* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.pci_epc*, align 8
  %6 = alloca %struct.pci_epf*, align 8
  %7 = alloca %struct.pci_epf_group*, align 8
  %8 = alloca %struct.pci_epc_group*, align 8
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %9 = load %struct.config_item*, %struct.config_item** %4, align 8
  %10 = call %struct.pci_epf_group* @to_pci_epf_group(%struct.config_item* %9)
  store %struct.pci_epf_group* %10, %struct.pci_epf_group** %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %3, align 8
  %12 = call %struct.pci_epc_group* @to_pci_epc_group(%struct.config_item* %11)
  store %struct.pci_epc_group* %12, %struct.pci_epc_group** %8, align 8
  %13 = load %struct.pci_epc_group*, %struct.pci_epc_group** %8, align 8
  %14 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = load %struct.pci_epc_group*, %struct.pci_epc_group** %8, align 8
  %18 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %17, i32 0, i32 1
  %19 = load %struct.pci_epc*, %struct.pci_epc** %18, align 8
  store %struct.pci_epc* %19, %struct.pci_epc** %5, align 8
  %20 = load %struct.pci_epf_group*, %struct.pci_epf_group** %7, align 8
  %21 = getelementptr inbounds %struct.pci_epf_group, %struct.pci_epf_group* %20, i32 0, i32 0
  %22 = load %struct.pci_epf*, %struct.pci_epf** %21, align 8
  store %struct.pci_epf* %22, %struct.pci_epf** %6, align 8
  %23 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %24 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pci_epc_group*, %struct.pci_epc_group** %8, align 8
  %27 = getelementptr inbounds %struct.pci_epc_group, %struct.pci_epc_group* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %30 = call i32 @pci_epf_unbind(%struct.pci_epf* %29)
  %31 = load %struct.pci_epc*, %struct.pci_epc** %5, align 8
  %32 = load %struct.pci_epf*, %struct.pci_epf** %6, align 8
  %33 = call i32 @pci_epc_remove_epf(%struct.pci_epc* %31, %struct.pci_epf* %32)
  ret void
}

declare dso_local %struct.pci_epf_group* @to_pci_epf_group(%struct.config_item*) #1

declare dso_local %struct.pci_epc_group* @to_pci_epc_group(%struct.config_item*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pci_epf_unbind(%struct.pci_epf*) #1

declare dso_local i32 @pci_epc_remove_epf(%struct.pci_epc*, %struct.pci_epf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
