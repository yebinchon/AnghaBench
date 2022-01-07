; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_bus.h_qtnf_bus_data_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_bus.h_qtnf_bus_data_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_bus*, %struct.net_device*)* @qtnf_bus_data_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_bus_data_tx_timeout(%struct.qtnf_bus* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.qtnf_bus*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %6 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to void (%struct.qtnf_bus*, %struct.net_device*)**
  %10 = load void (%struct.qtnf_bus*, %struct.net_device*)*, void (%struct.qtnf_bus*, %struct.net_device*)** %9, align 8
  %11 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  call void %10(%struct.qtnf_bus* %11, %struct.net_device* %12)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
