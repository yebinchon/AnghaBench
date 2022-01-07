; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_mac_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_mac_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.TYPE_3__, %struct.wilc* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wilc = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i64 }
%struct.tx_complete_data = type { i64, i32, %struct.sk_buff* }

@.str = private unnamed_addr constant [36 x i8] c"Packet not destined to this device\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@wilc_tx_complete = common dso_local global i32 0, align 4
@FLOW_CONTROL_UPPER_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_mac_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca %struct.wilc*, align 8
  %8 = alloca %struct.tx_complete_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %11)
  store %struct.wilc_vif* %12, %struct.wilc_vif** %6, align 8
  %13 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %14 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %13, i32 0, i32 1
  %15 = load %struct.wilc*, %struct.wilc** %14, align 8
  store %struct.wilc* %15, %struct.wilc** %7, align 8
  store %struct.tx_complete_data* null, %struct.tx_complete_data** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = icmp ne %struct.net_device* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netdev_err(%struct.net_device* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %118

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.tx_complete_data* @kmalloc(i32 24, i32 %25)
  store %struct.tx_complete_data* %26, %struct.tx_complete_data** %8, align 8
  %27 = load %struct.tx_complete_data*, %struct.tx_complete_data** %8, align 8
  %28 = icmp ne %struct.tx_complete_data* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @dev_kfree_skb(%struct.sk_buff* %30)
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @netif_wake_queue(%struct.net_device* %32)
  store i32 0, i32* %3, align 4
  br label %118

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tx_complete_data*, %struct.tx_complete_data** %8, align 8
  %39 = getelementptr inbounds %struct.tx_complete_data, %struct.tx_complete_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tx_complete_data*, %struct.tx_complete_data** %8, align 8
  %44 = getelementptr inbounds %struct.tx_complete_data, %struct.tx_complete_data* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load %struct.tx_complete_data*, %struct.tx_complete_data** %8, align 8
  %47 = getelementptr inbounds %struct.tx_complete_data, %struct.tx_complete_data* %46, i32 0, i32 2
  store %struct.sk_buff* %45, %struct.sk_buff** %47, align 8
  %48 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %49 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.tx_complete_data*, %struct.tx_complete_data** %8, align 8
  %54 = getelementptr inbounds %struct.tx_complete_data, %struct.tx_complete_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %57 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %55
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load %struct.tx_complete_data*, %struct.tx_complete_data** %8, align 8
  %65 = bitcast %struct.tx_complete_data* %64 to i8*
  %66 = load %struct.tx_complete_data*, %struct.tx_complete_data** %8, align 8
  %67 = getelementptr inbounds %struct.tx_complete_data, %struct.tx_complete_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tx_complete_data*, %struct.tx_complete_data** %8, align 8
  %70 = getelementptr inbounds %struct.tx_complete_data, %struct.tx_complete_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @wilc_tx_complete, align 4
  %73 = call i32 @wilc_wlan_txq_add_net_pkt(%struct.net_device* %63, i8* %65, i32 %68, i64 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @FLOW_CONTROL_UPPER_THRESHOLD, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %117

77:                                               ; preds = %34
  %78 = load %struct.wilc*, %struct.wilc** %7, align 8
  %79 = getelementptr inbounds %struct.wilc, %struct.wilc* %78, i32 0, i32 1
  %80 = call i32 @mutex_lock(i32* %79)
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %110, %77
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.wilc*, %struct.wilc** %7, align 8
  %84 = getelementptr inbounds %struct.wilc, %struct.wilc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %81
  %88 = load %struct.wilc*, %struct.wilc** %7, align 8
  %89 = getelementptr inbounds %struct.wilc, %struct.wilc* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %90, i64 %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %87
  %99 = load %struct.wilc*, %struct.wilc** %7, align 8
  %100 = getelementptr inbounds %struct.wilc, %struct.wilc* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %101, i64 %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @netif_stop_queue(i32 %107)
  br label %109

109:                                              ; preds = %98, %87
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %81

113:                                              ; preds = %81
  %114 = load %struct.wilc*, %struct.wilc** %7, align 8
  %115 = getelementptr inbounds %struct.wilc, %struct.wilc* %114, i32 0, i32 1
  %116 = call i32 @mutex_unlock(i32* %115)
  br label %117

117:                                              ; preds = %113, %34
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %29, %21
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.tx_complete_data* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @wilc_wlan_txq_add_net_pkt(%struct.net_device*, i8*, i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
