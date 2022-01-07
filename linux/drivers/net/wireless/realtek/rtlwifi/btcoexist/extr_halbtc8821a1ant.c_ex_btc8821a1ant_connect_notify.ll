; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_connect_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtc8821a1ant.c_ex_btc8821a1ant_connect_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.btc_coexist = type { i32 (%struct.btc_coexist*, i32, i32*)*, i64, i64, %struct.rtl_priv* }
%struct.rtl_priv = type { i32 }

@coex_sta = common dso_local global %struct.TYPE_3__* null, align 8
@BTC_GET_BL_WIFI_UNDER_5G = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[BTCoex], RunCoexistMechanism(), return for 5G <===\0A\00", align 1
@BTC_ASSOCIATE_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"[BTCoex], CONNECT START notify\0A\00", align 1
@coex_dm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"[BTCoex], CONNECT FINISH notify\0A\00", align 1
@BTC_GET_U4_WIFI_LINK_STATUS = common dso_local global i32 0, align 4
@NORMAL_EXEC = common dso_local global i32 0, align 4
@BTC_GET_BL_HS_OPERATION = common dso_local global i32 0, align 4
@BTC_ASSOCIATE_FINISH = common dso_local global i64 0, align 8
@BTC_GET_BL_WIFI_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ex_btc8821a1ant_connect_notify(%struct.btc_coexist* %0, i64 %1) #0 {
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %14 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %13, i32 0, i32 3
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %14, align 8
  store %struct.rtl_priv* %15, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 5, i64* %12, align 8
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %17 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %2
  br label %148

31:                                               ; preds = %25
  %32 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %33 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %32, i32 0, i32 0
  %34 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %33, align 8
  %35 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %36 = load i32, i32* @BTC_GET_BL_WIFI_UNDER_5G, align 4
  %37 = call i32 %34(%struct.btc_coexist* %35, i32 %36, i32* %11)
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %42 = load i32, i32* @COMP_BT_COEXIST, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %46 = call i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist* %45)
  br label %148

47:                                               ; preds = %31
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @BTC_ASSOCIATE_START, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %55 = load i32, i32* @COMP_BT_COEXIST, align 4
  %56 = load i32, i32* @DBG_LOUD, align 4
  %57 = call i32 @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %69

60:                                               ; preds = %47
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %64 = load i32, i32* @COMP_BT_COEXIST, align 4
  %65 = load i32, i32* @DBG_LOUD, align 4
  %66 = call i32 @RT_TRACE(%struct.rtl_priv* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coex_dm, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %60, %51
  %70 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %71 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %70, i32 0, i32 0
  %72 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %71, align 8
  %73 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %74 = load i32, i32* @BTC_GET_U4_WIFI_LINK_STATUS, align 4
  %75 = call i32 %72(%struct.btc_coexist* %73, i32 %74, i32* %8)
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 16
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sge i32 %78, 2
  br i1 %79, label %80, label %91

80:                                               ; preds = %69
  %81 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %82 = load i32, i32* @NORMAL_EXEC, align 4
  %83 = call i32 @btc8821a1ant_limited_tx(%struct.btc_coexist* %81, i32 %82, i32 0, i32 0, i32 0, i32 0)
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %85 = load i32, i32* @NORMAL_EXEC, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @btc8821a1ant_limited_rx(%struct.btc_coexist* %84, i32 %85, i32 0, i32 %86, i64 %87)
  %89 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %90 = call i32 @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist* %89)
  br label %148

91:                                               ; preds = %69
  %92 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %93 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %92, i32 0, i32 0
  %94 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %93, align 8
  %95 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %96 = load i32, i32* @BTC_GET_BL_HS_OPERATION, align 4
  %97 = call i32 %94(%struct.btc_coexist* %95, i32 %96, i32* %7)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @coex_sta, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %104 = call i32 @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist* %103)
  br label %148

105:                                              ; preds = %91
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %110 = call i32 @btc8821a1ant_action_hs(%struct.btc_coexist* %109)
  br label %148

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* @BTC_ASSOCIATE_START, align 8
  %114 = load i64, i64* %4, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %118 = load i32, i32* @COMP_BT_COEXIST, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = call i32 @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %121 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %122 = call i32 @btc8821a1ant_act_wifi_not_conn_scan(%struct.btc_coexist* %121)
  br label %148

123:                                              ; preds = %112
  %124 = load i64, i64* @BTC_ASSOCIATE_FINISH, align 8
  %125 = load i64, i64* %4, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %147

127:                                              ; preds = %123
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %129 = load i32, i32* @COMP_BT_COEXIST, align 4
  %130 = load i32, i32* @DBG_LOUD, align 4
  %131 = call i32 @RT_TRACE(%struct.rtl_priv* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %133 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %132, i32 0, i32 0
  %134 = load i32 (%struct.btc_coexist*, i32, i32*)*, i32 (%struct.btc_coexist*, i32, i32*)** %133, align 8
  %135 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %136 = load i32, i32* @BTC_GET_BL_WIFI_CONNECTED, align 4
  %137 = call i32 %134(%struct.btc_coexist* %135, i32 %136, i32* %6)
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %127
  %141 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %142 = call i32 @btc8821a1ant_action_wifi_not_connected(%struct.btc_coexist* %141)
  br label %146

143:                                              ; preds = %127
  %144 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %145 = call i32 @btc8821a1ant_action_wifi_connected(%struct.btc_coexist* %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %123
  br label %148

148:                                              ; preds = %30, %40, %80, %102, %108, %147, %116
  ret void
}

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @btc8821a1ant_coex_under_5g(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_limited_tx(%struct.btc_coexist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btc8821a1ant_limited_rx(%struct.btc_coexist*, i32, i32, i32, i64) #1

declare dso_local i32 @btc8821a1ant_action_wifi_multi_port(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_bt_inquiry(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_hs(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_act_wifi_not_conn_scan(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_not_connected(%struct.btc_coexist*) #1

declare dso_local i32 @btc8821a1ant_action_wifi_connected(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
