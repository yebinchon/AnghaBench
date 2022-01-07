; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_release_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_release_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (%struct.xen_pcibk_device*)* }
%struct.xen_pcibk_device = type { i32 }

@xen_pcibk_backend = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_pcibk_device*)* @xen_pcibk_release_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_pcibk_release_devices(%struct.xen_pcibk_device* %0) #0 {
  %2 = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %2, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load void (%struct.xen_pcibk_device*)*, void (%struct.xen_pcibk_device*)** %7, align 8
  %9 = icmp ne void (%struct.xen_pcibk_device*)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load void (%struct.xen_pcibk_device*)*, void (%struct.xen_pcibk_device*)** %12, align 8
  %14 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  call void %13(%struct.xen_pcibk_device* %14)
  br label %15

15:                                               ; preds = %10, %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
