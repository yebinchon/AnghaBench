; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_setup_netdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_setup_netdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32*, i32, i32, i64, i32, i32, i32, i32 }

@NETIUCV_MTU_DEFAULT = common dso_local global i32 0, align 4
@NETIUCV_MTU_MAX = common dso_local global i32 0, align 4
@netiucv_free_netdevice = common dso_local global i32 0, align 4
@NETIUCV_HDRLEN = common dso_local global i32 0, align 4
@ARPHRD_SLIP = common dso_local global i32 0, align 4
@NETIUCV_QUEUELEN_DEFAULT = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@netiucv_netdev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netiucv_setup_netdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netiucv_setup_netdevice(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i32, i32* @NETIUCV_MTU_DEFAULT, align 4
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 10
  store i32 %3, i32* %5, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  store i32 576, i32* %7, align 8
  %8 = load i32, i32* @NETIUCV_MTU_MAX, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 9
  store i32 %8, i32* %10, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @netiucv_free_netdevice, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @NETIUCV_HDRLEN, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @ARPHRD_SLIP, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @NETIUCV_QUEUELEN_DEFAULT, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @IFF_POINTOPOINT, align 4
  %28 = load i32, i32* @IFF_NOARP, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 3
  store i32* @netiucv_netdev_ops, i32** %33, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
