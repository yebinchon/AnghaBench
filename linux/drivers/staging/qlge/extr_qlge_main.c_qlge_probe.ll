; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.ql_adapter = type { i32, i32, i32, i32 }

@qlge_probe.cards_found = internal global i32 0, align 4
@MAX_CPUS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@QL_DMA64 = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@qlge_netdev_ops = common dso_local global i32 0, align 4
@qlge_ethtool_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"net device registration failed.\0A\00", align 1
@ql_timer = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @qlge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlge_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ql_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  store %struct.ql_adapter* null, %struct.ql_adapter** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @MAX_CPUS, align 4
  %10 = call i32 (...) @netif_get_num_default_rss_queues()
  %11 = call i32 @min(i32 %9, i32 %10)
  %12 = call %struct.net_device* @alloc_etherdev_mq(i32 16, i32 %11)
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %146

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = load i32, i32* @qlge_probe.cards_found, align 4
  %22 = call i32 @ql_init_device(%struct.pci_dev* %19, %struct.net_device* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call i32 @free_netdev(%struct.net_device* %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %146

29:                                               ; preds = %18
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %30)
  store %struct.ql_adapter* %31, %struct.ql_adapter** %7, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @SET_NETDEV_DEV(%struct.net_device* %32, i32* %34)
  %36 = load i32, i32* @NETIF_F_SG, align 4
  %37 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @NETIF_F_TSO, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %64 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @QL_DMA64, align 4
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %75 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %74, i32 0, i32 3
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %29
  %79 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %29
  %85 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %86 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 7
  store i32* @qlge_netdev_ops, i32** %96, align 8
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 6
  store i32* @qlge_ethtool_ops, i32** %98, align 8
  %99 = load i32, i32* @HZ, align 4
  %100 = mul nsw i32 10, %99
  %101 = load %struct.net_device*, %struct.net_device** %6, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @ETH_DATA_LEN, align 4
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 4
  store i32 9000, i32* %107, align 8
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = call i32 @register_netdev(%struct.net_device* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %84
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %113, i32 0, i32 0
  %115 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = call i32 @ql_release_all(%struct.pci_dev* %116)
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = call i32 @pci_disable_device(%struct.pci_dev* %118)
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = call i32 @free_netdev(%struct.net_device* %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %146

123:                                              ; preds = %84
  %124 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %125 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %124, i32 0, i32 1
  %126 = load i32, i32* @ql_timer, align 4
  %127 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %128 = call i32 @timer_setup(i32* %125, i32 %126, i32 %127)
  %129 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %130 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %129, i32 0, i32 1
  %131 = load i64, i64* @jiffies, align 8
  %132 = load i32, i32* @HZ, align 4
  %133 = mul nsw i32 5, %132
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %131, %134
  %136 = call i32 @mod_timer(i32* %130, i64 %135)
  %137 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %138 = call i32 @ql_link_off(%struct.ql_adapter* %137)
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = call i32 @ql_display_dev_info(%struct.net_device* %139)
  %141 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %142 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %141, i32 0, i32 0
  %143 = call i32 @atomic_set(i32* %142, i32 0)
  %144 = load i32, i32* @qlge_probe.cards_found, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @qlge_probe.cards_found, align 4
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %123, %112, %25, %15
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @netif_get_num_default_rss_queues(...) #1

declare dso_local i32 @ql_init_device(%struct.pci_dev*, %struct.net_device*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ql_release_all(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ql_link_off(%struct.ql_adapter*) #1

declare dso_local i32 @ql_display_dev_info(%struct.net_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
