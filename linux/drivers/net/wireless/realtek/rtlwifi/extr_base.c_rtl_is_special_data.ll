; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_is_special_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_is_special_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.rtl_ps_ctl = type { i8* }
%struct.iphdr = type { i64, i32 }
%struct.udphdr = type { i32 }

@ETH_P_IP = common dso_local global i64 0, align 8
@PROTOC_TYPE_SIZE = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@COMP_RECV = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dhcp %s !!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@PACKET_DHCP = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i64 0, align 8
@PACKET_ARP = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"802.1X %s EAPOL pkt!!\0A\00", align 1
@PACKET_EAPOL = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_is_special_data(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.rtl_ps_ctl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.udphdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %10, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %20)
  store %struct.rtl_ps_ctl* %21, %struct.rtl_ps_ctl** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i32 @rtl_get_fc(%struct.sk_buff* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @ieee80211_is_data(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %165

28:                                               ; preds = %4
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32* @rtl_skb_ether_type_ptr(%struct.ieee80211_hw* %29, %struct.sk_buff* %30, i32 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i64 @be16_to_cpup(i32* %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* @ETH_P_IP, align 8
  %36 = load i64, i64* %13, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %103

38:                                               ; preds = %28
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* @PROTOC_TYPE_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = bitcast i32* %42 to %struct.iphdr*
  store %struct.iphdr* %43, %struct.iphdr** %15, align 8
  %44 = load i64, i64* @IPPROTO_UDP, align 8
  %45 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %102

49:                                               ; preds = %38
  %50 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %51 = bitcast %struct.iphdr* %50 to i32*
  %52 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = bitcast i32* %57 to %struct.udphdr*
  store %struct.udphdr* %58, %struct.udphdr** %16, align 8
  %59 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %60 = bitcast %struct.udphdr* %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 68
  br i1 %63, label %64, label %70

64:                                               ; preds = %49
  %65 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %66 = bitcast %struct.udphdr* %65 to i32*
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 67
  br i1 %69, label %82, label %70

70:                                               ; preds = %64, %49
  %71 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %72 = bitcast %struct.udphdr* %71 to i32*
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 67
  br i1 %75, label %76, label %101

76:                                               ; preds = %70
  %77 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %78 = bitcast %struct.udphdr* %77 to i32*
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 68
  br i1 %81, label %82, label %101

82:                                               ; preds = %76, %64
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %84 = load i32, i32* @COMP_SEND, align 4
  %85 = load i32, i32* @COMP_RECV, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DBG_DMESG, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %92 = call i32 @RT_TRACE(%struct.rtl_priv* %83, i32 %86, i32 %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %82
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %97 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %11, align 8
  %98 = load i32, i32* @PACKET_DHCP, align 4
  %99 = call i32 @setup_special_tx(%struct.rtl_priv* %96, %struct.rtl_ps_ctl* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %82
  store i32 1, i32* %5, align 4
  br label %169

101:                                              ; preds = %76, %70
  br label %102

102:                                              ; preds = %101, %38
  br label %164

103:                                              ; preds = %28
  %104 = load i64, i64* @ETH_P_ARP, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %112 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %11, align 8
  %113 = load i32, i32* @PACKET_ARP, align 4
  %114 = call i32 @setup_special_tx(%struct.rtl_priv* %111, %struct.rtl_ps_ctl* %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %107
  store i32 1, i32* %5, align 4
  br label %169

116:                                              ; preds = %103
  %117 = load i64, i64* @ETH_P_PAE, align 8
  %118 = load i64, i64* %13, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %156

120:                                              ; preds = %116
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %122 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i8*, i8** @jiffies, align 8
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %127 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i8* %125, i8** %129, align 8
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %131 = load i32, i32* @COMP_SEND, align 4
  %132 = load i32, i32* @COMP_RECV, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @DBG_DMESG, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %139 = call i32 @RT_TRACE(%struct.rtl_priv* %130, i32 %133, i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %138)
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %120
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %147 = call i32 @rtl_lps_leave(%struct.ieee80211_hw* %146)
  %148 = load i8*, i8** @jiffies, align 8
  %149 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %11, align 8
  %150 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %152 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %11, align 8
  %153 = load i32, i32* @PACKET_EAPOL, align 4
  %154 = call i32 @setup_special_tx(%struct.rtl_priv* %151, %struct.rtl_ps_ctl* %152, i32 %153)
  br label %155

155:                                              ; preds = %142, %120
  store i32 1, i32* %5, align 4
  br label %169

156:                                              ; preds = %116
  %157 = load i64, i64* @ETH_P_IPV6, align 8
  %158 = load i64, i64* %13, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %165

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %102
  br label %165

165:                                              ; preds = %164, %160, %27
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %167 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 8
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %165, %155, %115, %100
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32* @rtl_skb_ether_type_ptr(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i64 @be16_to_cpup(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i8*) #1

declare dso_local i32 @setup_special_tx(%struct.rtl_priv*, %struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @rtl_lps_leave(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
