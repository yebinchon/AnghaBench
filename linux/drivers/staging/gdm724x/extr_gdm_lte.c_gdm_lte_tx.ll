; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.net_device = type { i32 }
%struct.nic = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i8*, i32, i32, i32, i32, %struct.nic*, i32, i32)*, i32 }
%struct.vlan_ethhdr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"tx - invalid nic_type\0A\00", align 1
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@NIC_TYPE_ARP = common dso_local global i32 0, align 4
@NIC_TYPE_ICMPV6 = common dso_local global i32 0, align 4
@NIC_TYPE_F_VLAN = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NIC_TYPE_F_DHCP = common dso_local global i32 0, align 4
@NIC_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lte%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tx_complete = common dso_local global i32 0, align 4
@TX_NO_BUFFER = common dso_local global i32 0, align 4
@TX_NO_SPC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@TX_NO_DEV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @gdm_lte_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_lte_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.nic* @netdev_priv(%struct.net_device* %13)
  store %struct.nic* %14, %struct.nic** %6, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @gdm_lte_tx_nic_type(%struct.net_device* %15, %struct.sk_buff* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EMEDIUMTYPE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %195

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NIC_TYPE_ARP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @gdm_lte_emulate_arp(%struct.sk_buff* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @dev_kfree_skb(%struct.sk_buff* %36)
  store i32 0, i32* %3, align 4
  br label %195

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NIC_TYPE_ICMPV6, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @gdm_lte_emulate_ndp(%struct.sk_buff* %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @dev_kfree_skb(%struct.sk_buff* %50)
  store i32 0, i32* %3, align 4
  br label %195

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @NIC_TYPE_F_VLAN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %62, %struct.vlan_ethhdr** %12, align 8
  %63 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %12, align 8
  %64 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ntohs(i32 %65)
  %67 = load i32, i32* @VLAN_VID_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.nic*, %struct.nic** %6, align 8
  %70 = getelementptr inbounds %struct.nic, %struct.nic* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %75 = load i32, i32* @ETH_HLEN, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr i8, i8* %73, i64 %77
  store i8* %78, i8** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %83 = load i32, i32* @ETH_HLEN, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %9, align 4
  br label %95

86:                                               ; preds = %53
  %87 = load %struct.nic*, %struct.nic** %6, align 8
  %88 = getelementptr inbounds %struct.nic, %struct.nic* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %8, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %86, %58
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @NIC_TYPE_ICMPV6, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @NIC_TYPE_ICMPV6, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %95
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @NIC_TYPE_F_DHCP, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @NIC_TYPE_MASK, align 4
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @sscanf(i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call i32 @dev_kfree_skb(%struct.sk_buff* %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %195

123:                                              ; preds = %111
  %124 = load %struct.nic*, %struct.nic** %6, align 8
  %125 = getelementptr inbounds %struct.nic, %struct.nic* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32 (i32, i8*, i32, i32, i32, i32, %struct.nic*, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32, %struct.nic*, i32, i32)** %127, align 8
  %129 = load %struct.nic*, %struct.nic** %6, align 8
  %130 = getelementptr inbounds %struct.nic, %struct.nic* %129, i32 0, i32 3
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.nic*, %struct.nic** %6, align 8
  %137 = getelementptr inbounds %struct.nic, %struct.nic* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @tx_complete, align 4
  %141 = load %struct.nic*, %struct.nic** %6, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 %128(i32 %133, i8* %134, i32 %135, i32 %139, i32 0, i32 %140, %struct.nic* %141, i32 %142, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @TX_NO_BUFFER, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %123
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @TX_NO_SPC, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %148, %123
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = call i32 @netif_stop_queue(%struct.net_device* %153)
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @TX_NO_BUFFER, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store i32 0, i32* %11, align 4
  br label %162

159:                                              ; preds = %152
  %160 = load i32, i32* @ENOSPC, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %159, %158
  br label %171

163:                                              ; preds = %148
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @TX_NO_DEV, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* @ENODEV, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %167, %163
  br label %171

171:                                              ; preds = %170, %162
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.nic*, %struct.nic** %6, align 8
  %176 = getelementptr inbounds %struct.nic, %struct.nic* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  br label %192

180:                                              ; preds = %171
  %181 = load %struct.nic*, %struct.nic** %6, align 8
  %182 = getelementptr inbounds %struct.nic, %struct.nic* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.nic*, %struct.nic** %6, align 8
  %188 = getelementptr inbounds %struct.nic, %struct.nic* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %186
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %180, %174
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = call i32 @dev_kfree_skb(%struct.sk_buff* %193)
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %192, %118, %49, %35, %20
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gdm_lte_tx_nic_type(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @gdm_lte_emulate_arp(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @gdm_lte_emulate_ndp(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
