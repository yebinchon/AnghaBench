; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_free_bridge_windows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-hyperv.c_hv_pci_free_bridge_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_pcibus_device = type { %struct.TYPE_2__*, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@IORESOURCE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_pcibus_device*)* @hv_pci_free_bridge_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_pci_free_bridge_windows(%struct.hv_pcibus_device* %0) #0 {
  %2 = alloca %struct.hv_pcibus_device*, align 8
  store %struct.hv_pcibus_device* %0, %struct.hv_pcibus_device** %2, align 8
  %3 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %4 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %9 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load i32, i32* @IORESOURCE_BUSY, align 4
  %14 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %15 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  %20 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %21 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %26 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @resource_size(%struct.TYPE_2__* %27)
  %29 = call i32 @vmbus_free_mmio(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %12, %7, %1
  %31 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %32 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %37 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load i32, i32* @IORESOURCE_BUSY, align 4
  %42 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %43 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  %48 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %49 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hv_pcibus_device*, %struct.hv_pcibus_device** %2, align 8
  %54 = getelementptr inbounds %struct.hv_pcibus_device, %struct.hv_pcibus_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @resource_size(%struct.TYPE_2__* %55)
  %57 = call i32 @vmbus_free_mmio(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %40, %35, %30
  ret void
}

declare dso_local i32 @vmbus_free_mmio(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
