; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_remove.c_pci_remove_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_remove.c_pci_remove_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pci_bus*)* }

@pci_bus_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_remove_bus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %3 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %4 = call i32 @pci_proc_detach_bus(%struct.pci_bus* %3)
  %5 = call i32 @down_write(i32* @pci_bus_sem)
  %6 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 2
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %10 = call i32 @pci_bus_release_busn_res(%struct.pci_bus* %9)
  %11 = call i32 @up_write(i32* @pci_bus_sem)
  %12 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %13 = call i32 @pci_remove_legacy_files(%struct.pci_bus* %12)
  %14 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.pci_bus*)*, i32 (%struct.pci_bus*)** %17, align 8
  %19 = icmp ne i32 (%struct.pci_bus*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.pci_bus*)*, i32 (%struct.pci_bus*)** %24, align 8
  %26 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %27 = call i32 %25(%struct.pci_bus* %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %30 = call i32 @pcibios_remove_bus(%struct.pci_bus* %29)
  %31 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 0
  %33 = call i32 @device_unregister(i32* %32)
  ret void
}

declare dso_local i32 @pci_proc_detach_bus(%struct.pci_bus*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pci_bus_release_busn_res(%struct.pci_bus*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @pci_remove_legacy_files(%struct.pci_bus*) #1

declare dso_local i32 @pcibios_remove_bus(%struct.pci_bus*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
