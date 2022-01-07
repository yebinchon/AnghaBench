; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_r871x_net_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_r871x_net_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct._adapter = type { %struct.net_device_stats, %struct.recv_priv, %struct.xmit_priv }
%struct.recv_priv = type { i32, i32, i32 }
%struct.xmit_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @r871x_net_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @r871x_net_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.xmit_priv*, align 8
  %5 = alloca %struct.recv_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct._adapter* @netdev_priv(%struct.net_device* %6)
  store %struct._adapter* %7, %struct._adapter** %3, align 8
  %8 = load %struct._adapter*, %struct._adapter** %3, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 2
  store %struct.xmit_priv* %9, %struct.xmit_priv** %4, align 8
  %10 = load %struct._adapter*, %struct._adapter** %3, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 1
  store %struct.recv_priv* %11, %struct.recv_priv** %5, align 8
  %12 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %13 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct._adapter*, %struct._adapter** %3, align 8
  %16 = getelementptr inbounds %struct._adapter, %struct._adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %16, i32 0, i32 5
  store i32 %14, i32* %17, align 4
  %18 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %19 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = getelementptr inbounds %struct._adapter, %struct._adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 4
  %24 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %25 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct._adapter*, %struct._adapter** %3, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %31 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct._adapter*, %struct._adapter** %3, align 8
  %34 = getelementptr inbounds %struct._adapter, %struct._adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.xmit_priv*, %struct.xmit_priv** %4, align 8
  %37 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct._adapter*, %struct._adapter** %3, align 8
  %40 = getelementptr inbounds %struct._adapter, %struct._adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %43 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct._adapter*, %struct._adapter** %3, align 8
  %46 = getelementptr inbounds %struct._adapter, %struct._adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct._adapter*, %struct._adapter** %3, align 8
  %49 = getelementptr inbounds %struct._adapter, %struct._adapter* %48, i32 0, i32 0
  ret %struct.net_device_stats* %49
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
