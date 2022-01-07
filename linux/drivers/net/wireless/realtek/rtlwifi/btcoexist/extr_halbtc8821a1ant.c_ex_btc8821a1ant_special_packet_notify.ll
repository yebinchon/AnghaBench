; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_special_packet_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_special_packet_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[BTCoex], RunCoexistMechanism(), return for 5G <===\0A\00", align 1
@BTC_PACKET_DHCP = common dso_local global i64 0, align 8
@BTC_PACKET_EAPOL = common dso_local global i64 0, align 8
@BTC_PACKET_ARP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"[BTCoex], specific Packet ARP notify\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"[BTCoex], specific Packet DHCP or EAPOL notify\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"[BTCoex], specific Packet [Type = %d] notify\0A\00", align 1
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"[BTCoex], ARP Packet Count = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"[BTCoex], special Packet(%d) notify\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a1ant_special_packet_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 3
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %13, align 8
  store %struct.rtl_priv* %14, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 5, i64* %11, align 8
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %21 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %19, %2
  br label %170

30:                                               ; preds = %24
  %31 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %32 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %31, i32 0, i32 0
  %33 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %32, align 8
  %34 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %35 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %36 = call i32 %33(%struct.btc_coexist* %34, i32 %35, i32* %8)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %41 = load i32, i32* @COMP_BT_COEXIST, align 4
  %42 = load i32, i32* @DBG_LOUD, align 4
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %45 = call i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist* %44)
  br label %170

46:                                               ; preds = %30
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @BTC_PACKET_DHCP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @BTC_PACKET_EAPOL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @BTC_PACKET_ARP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54, %50, %46
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @BTC_PACKET_ARP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %66 = load i32, i32* @COMP_BT_COEXIST, align 4
  %67 = load i32, i32* @DBG_LOUD, align 4
  %68 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %74

69:                                               ; preds = %58
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %71 = load i32, i32* @COMP_BT_COEXIST, align 4
  %72 = load i32, i32* @DBG_LOUD, align 4
  %73 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %64
  br label %83

75:                                               ; preds = %54
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %79 = load i32, i32* @COMP_BT_COEXIST, align 4
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = load i64, i64* %4, align 8
  %82 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %75, %74
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %87 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %86, i32 0, i32 0
  %88 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %87, align 8
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %90 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %91 = call i32 %88(%struct.btc_coexist* %89, i32 %90, i32* %9)
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 16
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sge i32 %94, 2
  br i1 %95, label %96, label %107

96:                                               ; preds = %83
  %97 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %98 = load i32, i32* @NORMAL_EXEC, align 4
  %99 = call i32 @btc8821a1ant_limited_tx(%struct.btc_coexist* %97, i32 %98, i32 0, i32 0, i32 0, i32 0)
  %100 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %101 = load i32, i32* @NORMAL_EXEC, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @btc8821a1ant_limited_rx(%struct.btc_coexist* %100, i32 %101, i32 0, i32 %102, i64 %103)
  %105 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %106 = call i32 @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist* %105)
  br label %170

107:                                              ; preds = %83
  %108 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %109 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %108, i32 0, i32 0
  %110 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %109, align 8
  %111 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %112 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %113 = call i32 %110(%struct.btc_coexist* %111, i32 %112, i32* %6)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %120 = call i32 @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist* %119)
  br label %170

121:                                              ; preds = %107
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %126 = call i32 @btc8821a1ant_action_hs(%struct.btc_coexist* %125)
  br label %170

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* @BTC_PACKET_DHCP, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @BTC_PACKET_EAPOL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %4, align 8
  %138 = load i64, i64* @BTC_PACKET_ARP, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %170

140:                                              ; preds = %136, %132, %128
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* @BTC_PACKET_ARP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %140
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %150 = load i32, i32* @COMP_BT_COEXIST, align 4
  %151 = load i32, i32* @DBG_LOUD, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %154)
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sge i64 %158, 10
  br i1 %159, label %160, label %161

160:                                              ; preds = %144
  br label %170

161:                                              ; preds = %144
  br label %162

162:                                              ; preds = %161, %140
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %164 = load i32, i32* @COMP_BT_COEXIST, align 4
  %165 = load i32, i32* @DBG_LOUD, align 4
  %166 = load i64, i64* %4, align 8
  %167 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %166)
  %168 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %169 = call i32 @btc8821a1ant_act_wifi_conn_sp_pkt(%struct.btc_coexist* %168)
  br label %170

170:                                              ; preds = %29, %39, %96, %118, %124, %160, %162, %136
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i64) #1

declare dso_local i32 @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_act_wifi_conn_sp_pkt(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
