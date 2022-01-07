; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epc-core.c_pci_epc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_epc_put(%struct.pci_epc* %0) #0 {
  %2 = alloca %struct.pci_epc*, align 8
  store %struct.pci_epc* %0, %struct.pci_epc** %2, align 8
  %3 = load %struct.pci_epc*, %struct.pci_epc** %2, align 8
  %4 = icmp ne %struct.pci_epc* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.pci_epc*, %struct.pci_epc** %2, align 8
  %7 = call i64 @IS_ERR(%struct.pci_epc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %20

10:                                               ; preds = %5
  %11 = load %struct.pci_epc*, %struct.pci_epc** %2, align 8
  %12 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @module_put(i32 %15)
  %17 = load %struct.pci_epc*, %struct.pci_epc** %2, align 8
  %18 = getelementptr inbounds %struct.pci_epc, %struct.pci_epc* %17, i32 0, i32 0
  %19 = call i32 @put_device(i32* %18)
  br label %20

20:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @IS_ERR(%struct.pci_epc*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
