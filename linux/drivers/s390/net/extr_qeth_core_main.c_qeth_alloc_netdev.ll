; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32*, i64, i64, i32, %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"hsi%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ether_setup = common dso_local global i32 0, align 4
@QETH_MAX_QUEUES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"osn%d\00", align 1
@QETH_TX_TIMEOUT = common dso_local global i32 0, align 4
@qeth_osn_ethtool_ops = common dso_local global i32 0, align 4
@qeth_ethtool_ops = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@QETH_IQD_MIN_TXQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.qeth_card*)* @qeth_alloc_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @qeth_alloc_netdev(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  %5 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %6 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %20 [
    i32 130, label %9
    i32 129, label %14
    i32 128, label %16
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %11 = load i32, i32* @ether_setup, align 4
  %12 = load i32, i32* @QETH_MAX_QUEUES, align 4
  %13 = call %struct.net_device* @alloc_netdev_mqs(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 1)
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  br label %23

14:                                               ; preds = %1
  %15 = call %struct.net_device* @alloc_etherdev(i32 0)
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %18 = load i32, i32* @ether_setup, align 4
  %19 = call %struct.net_device* @alloc_netdev(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  store %struct.net_device* %19, %struct.net_device** %4, align 8
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @QETH_MAX_QUEUES, align 4
  %22 = call %struct.net_device* @alloc_etherdev_mqs(i32 0, i32 %21, i32 1)
  store %struct.net_device* %22, %struct.net_device** %4, align 8
  br label %23

23:                                               ; preds = %20, %16, %14, %9
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %98

27:                                               ; preds = %23
  %28 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 9
  store %struct.qeth_card* %28, %struct.qeth_card** %30, align 8
  %31 = load i32, i32* @QETH_TX_TIMEOUT, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %35 = call i64 @IS_OSN(%struct.qeth_card* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 64, i32 576
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 7
  store i64 0, i64* %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %47 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @SET_NETDEV_DEV(%struct.net_device* %45, i32* %49)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netif_carrier_off(%struct.net_device* %51)
  %53 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %54 = call i64 @IS_OSN(%struct.qeth_card* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %27
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 5
  store i32* @qeth_osn_ethtool_ops, i32** %58, align 8
  br label %96

59:                                               ; preds = %27
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 5
  store i32* @qeth_ethtool_ops, i32** %61, align 8
  %62 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @NETIF_F_SG, align 4
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @NETIF_F_SG, align 4
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %79 = call i64 @IS_IQD(%struct.qeth_card* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %59
  %82 = load i32, i32* @NETIF_F_SG, align 4
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = load i32, i32* @QETH_IQD_MIN_TXQ, align 4
  %89 = call i64 @netif_set_real_num_tx_queues(%struct.net_device* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 @free_netdev(%struct.net_device* %92)
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %98

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %59
  br label %96

96:                                               ; preds = %95, %56
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %97, %struct.net_device** %2, align 8
  br label %98

98:                                               ; preds = %96, %91, %26
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %99
}

declare dso_local %struct.net_device* @alloc_netdev_mqs(i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local i64 @IS_OSN(%struct.qeth_card*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i64 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
