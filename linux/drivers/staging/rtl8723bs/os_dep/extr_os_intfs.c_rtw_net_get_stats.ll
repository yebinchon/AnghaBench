; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_net_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_net_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.adapter = type { %struct.net_device_stats, %struct.recv_priv, %struct.xmit_priv }
%struct.recv_priv = type { i32, i32, i32 }
%struct.xmit_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @rtw_net_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @rtw_net_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.xmit_priv*, align 8
  %5 = alloca %struct.recv_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i64 @rtw_netdev_priv(%struct.net_device* %6)
  %8 = inttoptr i64 %7 to %struct.adapter*
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 2
  store %struct.xmit_priv* %10, %struct.xmit_priv** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  store %struct.recv_priv* %12, %struct.recv_priv** %5, align 8
  %13 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %14 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %17, i32 0, i32 5
  store i32 %15, i32* %18, align 4
  %19 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %20 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %26 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %32 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %38 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %44 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  ret %struct.net_device_stats* %50
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
