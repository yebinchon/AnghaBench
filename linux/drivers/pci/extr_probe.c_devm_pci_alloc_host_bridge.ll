; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_devm_pci_alloc_host_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_devm_pci_alloc_host_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_host_bridge = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@devm_pci_release_host_bridge_dev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_host_bridge* @devm_pci_alloc_host_bridge(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_host_bridge*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_host_bridge*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 4, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pci_host_bridge* @devm_kzalloc(%struct.device* %7, i32 %10, i32 %11)
  store %struct.pci_host_bridge* %12, %struct.pci_host_bridge** %6, align 8
  %13 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %14 = icmp ne %struct.pci_host_bridge* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.pci_host_bridge* null, %struct.pci_host_bridge** %3, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %18 = call i32 @pci_init_host_bridge(%struct.pci_host_bridge* %17)
  %19 = load i32, i32* @devm_pci_release_host_bridge_dev, align 4
  %20 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %21 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  store %struct.pci_host_bridge* %23, %struct.pci_host_bridge** %3, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %3, align 8
  ret %struct.pci_host_bridge* %25
}

declare dso_local %struct.pci_host_bridge* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pci_init_host_bridge(%struct.pci_host_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
