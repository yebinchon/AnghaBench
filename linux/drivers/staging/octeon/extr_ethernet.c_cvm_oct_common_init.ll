; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { {}*, {}* }
%struct.octeon_ethernet = type { i32, i64 }

@pow_send_group = common dso_local global i32 0, align 4
@always_use_pow = common dso_local global i64 0, align 8
@pow_send_list = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@cvm_oct_ethtool_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_common_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %5)
  store %struct.octeon_ethernet* %6, %struct.octeon_ethernet** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32* @of_get_mac_address(i64 %14)
  store i32* %15, i32** %4, align 8
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @IS_ERR_OR_NULL(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ether_addr_copy(i32 %23, i32* %24)
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @eth_hw_addr_random(%struct.net_device* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* @pow_send_group, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i64, i64* @always_use_pow, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @pow_send_list, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @strstr(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35, %32
  %43 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %44 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %35, %29
  %46 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %47 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @NETIF_F_SG, align 4
  %52 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* @NETIF_F_LLTX, align 4
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 3
  store i32* @cvm_oct_ethtool_ops, i32** %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = call i32 @cvm_oct_set_mac_filter(%struct.net_device* %66)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_set_mtu(%struct.net_device* %68, i32 %71)
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = bitcast {}** %76 to i32 (%struct.net_device*)**
  %78 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %77, align 8
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = call i32 %78(%struct.net_device* %79)
  %81 = call i32 @memset(i32 %80, i32 0, i32 4)
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = bitcast {}** %85 to i32 (%struct.net_device*)**
  %87 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %86, align 8
  %88 = icmp ne i32 (%struct.net_device*)* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %58
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = bitcast {}** %93 to i32 (%struct.net_device*)**
  %95 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %94, align 8
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = call i32 %95(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %89, %58
  ret i32 0
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @of_get_mac_address(i64) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i64 @strstr(i32, i32) #1

declare dso_local i32 @cvm_oct_set_mac_filter(%struct.net_device*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
