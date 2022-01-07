; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_fix_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_fix_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xenvif = type { i32, i32, i32, i32 }

@NETIF_F_SG = common dso_local global i32 0, align 4
@TCPV4 = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@TCPV6 = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xenvif_fix_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_fix_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenvif*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.xenvif* @netdev_priv(%struct.net_device* %6)
  store %struct.xenvif* %7, %struct.xenvif** %5, align 8
  %8 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %9 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @NETIF_F_SG, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %19 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @TCPV4, align 4
  %23 = call i32 @GSO_BIT(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load i32, i32* @NETIF_F_TSO, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %17
  %32 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %33 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @TCPV6, align 4
  %37 = call i32 @GSO_BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @NETIF_F_TSO6, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %31
  %46 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %47 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  %57 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.xenvif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @GSO_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
