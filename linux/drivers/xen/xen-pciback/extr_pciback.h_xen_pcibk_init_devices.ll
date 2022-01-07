; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_init_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_pciback.h_xen_pcibk_init_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xen_pcibk_device*)* }
%struct.xen_pcibk_device = type { i32 }

@xen_pcibk_backend = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_pcibk_device*)* @xen_pcibk_init_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_init_devices(%struct.xen_pcibk_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.xen_pcibk_device*)*, i32 (%struct.xen_pcibk_device*)** %8, align 8
  %10 = icmp ne i32 (%struct.xen_pcibk_device*)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xen_pcibk_backend, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.xen_pcibk_device*)*, i32 (%struct.xen_pcibk_device*)** %13, align 8
  %15 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %16 = call i32 %14(%struct.xen_pcibk_device* %15)
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %6, %1
  store i32 -1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
