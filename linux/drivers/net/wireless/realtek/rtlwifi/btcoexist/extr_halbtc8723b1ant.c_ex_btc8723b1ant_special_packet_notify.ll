; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_special_packet_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8723b1ant.c_ex_btc8723b1ant_special_packet_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@BTC_GET_BL_WIFI_4_WAY_PROGRESS = common dso_local global i32 0, align 4
@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_PACKET_DHCP = common dso_local global i64 0, align 8
@BTC_PACKET_EAPOL = common dso_local global i64 0, align 8
@BTC_PACKET_ARP = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[BTCoex], special Packet ARP notify\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"[BTCoex], ARP Packet Count = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"[BTCoex], special Packet DHCP or EAPOL notify\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"[BTCoex], special Packet [Type = %d] notify\0A\00", align 1
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"[BTCoex], special Packet(%d) notify\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8723b1ant_special_packet_notify(%struct.btc_coexist* %0, i64 %1) #0 {
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
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 0
  %17 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %16, align 8
  %18 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %19 = load i32, i32* @BTC_GET_BL_WIFI_4_WAY_PROGRESS, align 4
  %20 = call i32 %17(%struct.btc_coexist* %18, i32 %19, i32* %10)
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %2
  %26 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %27 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25, %2
  br label %159

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @BTC_PACKET_DHCP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @BTC_PACKET_EAPOL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @BTC_PACKET_ARP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %44, %40, %36
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @BTC_PACKET_ARP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %48
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %54 = load i32, i32* @COMP_BT_COEXIST, align 4
  %55 = load i32, i32* @DBG_LOUD, align 4
  %56 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %62 = load i32, i32* @COMP_BT_COEXIST, align 4
  %63 = load i32, i32* @DBG_LOUD, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %70, 10
  br i1 %71, label %72, label %78

72:                                               ; preds = %52
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %81

78:                                               ; preds = %72, %52
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  br label %89

82:                                               ; preds = %48
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %86 = load i32, i32* @COMP_BT_COEXIST, align 4
  %87 = load i32, i32* @DBG_LOUD, align 4
  %88 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %82, %81
  br label %98

90:                                               ; preds = %44
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %94 = load i32, i32* @COMP_BT_COEXIST, align 4
  %95 = load i32, i32* @DBG_LOUD, align 4
  %96 = load i64, i64* %4, align 8
  %97 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %90, %89
  %99 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %100 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %99, i32 0, i32 0
  %101 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %100, align 8
  %102 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %103 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %104 = call i32 %101(%struct.btc_coexist* %102, i32 %103, i32* %7)
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 16
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sge i32 %107, 2
  br i1 %108, label %109, label %120

109:                                              ; preds = %98
  %110 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %111 = load i32, i32* @NORMAL_EXEC, align 4
  %112 = call i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist* %110, i32 %111, i32 0, i32 0, i32 0, i32 0)
  %113 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %114 = load i32, i32* @NORMAL_EXEC, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist* %113, i32 %114, i32 0, i32 %115, i64 %116)
  %118 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %119 = call i32 @halbtc8723b1ant_action_wifi_multiport(%struct.btc_coexist* %118)
  br label %159

120:                                              ; preds = %98
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %124 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %123, i32 0, i32 0
  %125 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %124, align 8
  %126 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %127 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %128 = call i32 %125(%struct.btc_coexist* %126, i32 %127, i32* %6)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %120
  %134 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %135 = call i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist* %134)
  br label %159

136:                                              ; preds = %120
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %141 = call i32 @halbtc8723b1ant_action_hs(%struct.btc_coexist* %140)
  br label %159

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* @BTC_PACKET_DHCP, align 8
  %145 = load i64, i64* %4, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i64, i64* @BTC_PACKET_EAPOL, align 8
  %149 = load i64, i64* %4, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147, %143
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %153 = load i32, i32* @COMP_BT_COEXIST, align 4
  %154 = load i32, i32* @DBG_LOUD, align 4
  %155 = load i64, i64* %4, align 8
  %156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %152, i32 %153, i32 %154, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %155)
  %157 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %158 = call i32 @halbtc8723b1ant_action_wifi_connected_special_packet(%struct.btc_coexist* %157)
  br label %159

159:                                              ; preds = %35, %109, %133, %139, %151, %147
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @halbtc8723b1ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @halbtc8723b1ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i64) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_multiport(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_hs(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc8723b1ant_action_wifi_connected_special_packet(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
