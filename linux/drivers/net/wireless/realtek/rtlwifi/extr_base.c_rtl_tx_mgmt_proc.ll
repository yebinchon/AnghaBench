; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_tx_mgmt_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_tx_mgmt_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_mac = type { i64 }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_5__ = type { i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MAC80211_LINKING\0A\00", align 1
@MAC80211_LINKING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_tx_mgmt_proc(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %9)
  store %struct.rtl_mac* %10, %struct.rtl_mac** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @rtl_get_fc(%struct.sk_buff* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %2
  %21 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAC80211_LINKED, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @ieee80211_is_auth(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @ieee80211_is_probe_req(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %30, %26
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %40, align 8
  %42 = icmp ne i32 (%struct.ieee80211_hw*)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %49, align 8
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %52 = call i32 %50(%struct.ieee80211_hw* %51)
  br label %53

53:                                               ; preds = %43, %34
  br label %54

54:                                               ; preds = %53, %30, %20, %2
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @ieee80211_is_auth(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %60 = load i32, i32* @COMP_SEND, align 4
  %61 = load i32, i32* @DBG_DMESG, align 4
  %62 = call i32 @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %63 = load i64, i64* @MAC80211_LINKING, align 8
  %64 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %65 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %58, %54
  ret i32 1
}

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i64 @ieee80211_is_probe_req(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
