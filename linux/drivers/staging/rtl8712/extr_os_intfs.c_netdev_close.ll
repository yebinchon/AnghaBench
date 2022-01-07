; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct._adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct._adapter.0*, i32)* }
%struct._adapter.0 = type opaque

@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct._adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct._adapter* @netdev_priv(%struct.net_device* %4)
  store %struct._adapter* %5, %struct._adapter** %3, align 8
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %8, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = bitcast %struct._adapter* %10 to %struct._adapter.0*
  %12 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %13 = call i32 %9(%struct._adapter.0* %11, i32 %12)
  %14 = call i32 @msleep(i32 200)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_queue_stopped(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @netif_stop_queue(%struct.net_device* %22)
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct._adapter*, %struct._adapter** %3, align 8
  %27 = call i32 @r8712_disassoc_cmd(%struct._adapter* %26)
  %28 = load %struct._adapter*, %struct._adapter** %3, align 8
  %29 = call i32 @r8712_ind_disconnect(%struct._adapter* %28)
  %30 = load %struct._adapter*, %struct._adapter** %3, align 8
  %31 = call i32 @r8712_free_assoc_resources(%struct._adapter* %30)
  %32 = load %struct._adapter*, %struct._adapter** %3, align 8
  %33 = call i32 @r8712_free_network_queue(%struct._adapter* %32)
  ret i32 0
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @r8712_disassoc_cmd(%struct._adapter*) #1

declare dso_local i32 @r8712_ind_disconnect(%struct._adapter*) #1

declare dso_local i32 @r8712_free_assoc_resources(%struct._adapter*) #1

declare dso_local i32 @r8712_free_network_queue(%struct._adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
