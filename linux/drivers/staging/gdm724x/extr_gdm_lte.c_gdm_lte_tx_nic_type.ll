; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_tx_nic_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_lte.c_gdm_lte_tx_nic_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i8* }
%struct.nic = type { i32 }
%struct.ethhdr = type { i32 }
%struct.vlan_ethhdr = type { i32 }
%struct.iphdr = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.udphdr = type { i32 }
%struct.icmp6hdr = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@NIC_TYPE_F_VLAN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NIC_TYPE_ARP = common dso_local global i32 0, align 4
@NIC_TYPE_F_IPV4 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@NIC_TYPE_F_DHCP = common dso_local global i32 0, align 4
@NIC_TYPE_F_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@NDISC_NEIGHBOUR_SOLICITATION = common dso_local global i32 0, align 4
@NIC_TYPE_ICMPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*)* @gdm_lte_tx_nic_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_lte_tx_nic_type(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nic*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.vlan_ethhdr*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.ipv6hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.udphdr*, align 8
  %14 = alloca %struct.icmp6hdr*, align 8
  %15 = alloca %struct.udphdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.nic* @netdev_priv(%struct.net_device* %16)
  store %struct.nic* %17, %struct.nic** %5, align 8
  %18 = load %struct.nic*, %struct.nic** %5, align 8
  %19 = getelementptr inbounds %struct.nic, %struct.nic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 16, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.ethhdr*
  store %struct.ethhdr* %25, %struct.ethhdr** %6, align 8
  %26 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %27 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  %30 = load i32, i32* @ETH_P_8021Q, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %36, %struct.vlan_ethhdr** %7, align 8
  %37 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %7, align 8
  %38 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  store i8* %46, i8** %11, align 8
  %47 = load i32, i32* @NIC_TYPE_F_VLAN, align 4
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %61

50:                                               ; preds = %2
  %51 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %52 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohs(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @ETH_HLEN, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  store i8* %60, i8** %11, align 8
  br label %61

61:                                               ; preds = %50, %32
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %152 [
    i32 130, label %63
    i32 129, label %67
    i32 128, label %99
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* @NIC_TYPE_ARP, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %153

67:                                               ; preds = %61
  %68 = load i32, i32* @NIC_TYPE_F_IPV4, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = bitcast i8* %71 to %struct.iphdr*
  store %struct.iphdr* %72, %struct.iphdr** %8, align 8
  %73 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IPPROTO_UDP, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %67
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr i8, i8* %79, i64 4
  %81 = bitcast i8* %80 to %struct.udphdr*
  store %struct.udphdr* %81, %struct.udphdr** %13, align 8
  %82 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %83 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  %86 = icmp eq i32 %85, 67
  br i1 %86, label %93, label %87

87:                                               ; preds = %78
  %88 = load %struct.udphdr*, %struct.udphdr** %13, align 8
  %89 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohs(i32 %90)
  %92 = icmp eq i32 %91, 68
  br i1 %92, label %93, label %97

93:                                               ; preds = %87, %78
  %94 = load i32, i32* @NIC_TYPE_F_DHCP, align 4
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %93, %87
  br label %98

98:                                               ; preds = %97, %67
  br label %153

99:                                               ; preds = %61
  %100 = load i32, i32* @NIC_TYPE_F_IPV6, align 4
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = bitcast i8* %103 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %104, %struct.ipv6hdr** %9, align 8
  %105 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %106 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %99
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr i8, i8* %111, i64 4
  %113 = bitcast i8* %112 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %113, %struct.icmp6hdr** %14, align 8
  %114 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %115 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NDISC_NEIGHBOUR_SOLICITATION, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %110
  %120 = load i32, i32* @NIC_TYPE_ICMPV6, align 4
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %119, %110
  br label %151

124:                                              ; preds = %99
  %125 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %126 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IPPROTO_UDP, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %124
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr i8, i8* %131, i64 4
  %133 = bitcast i8* %132 to %struct.udphdr*
  store %struct.udphdr* %133, %struct.udphdr** %15, align 8
  %134 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %135 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ntohs(i32 %136)
  %138 = icmp eq i32 %137, 546
  br i1 %138, label %145, label %139

139:                                              ; preds = %130
  %140 = load %struct.udphdr*, %struct.udphdr** %15, align 8
  %141 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ntohs(i32 %142)
  %144 = icmp eq i32 %143, 547
  br i1 %144, label %145, label %149

145:                                              ; preds = %139, %130
  %146 = load i32, i32* @NIC_TYPE_F_DHCP, align 4
  %147 = load i32, i32* %12, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %145, %139
  br label %150

150:                                              ; preds = %149, %124
  br label %151

151:                                              ; preds = %150, %123
  br label %153

152:                                              ; preds = %61
  br label %153

153:                                              ; preds = %152, %151, %98, %63
  %154 = load i32, i32* %12, align 4
  ret i32 %154
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
