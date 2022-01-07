; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_threeoutepmapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_threeoutepmapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_ep_map = type { i32* }
%struct.rtl_priv = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"USB 3EP Setting for WMM.....\0A\00", align 1
@RTL_TXQ_BE = common dso_local global i64 0, align 8
@RTL_TXQ_BK = common dso_local global i64 0, align 8
@RTL_TXQ_VI = common dso_local global i64 0, align 8
@RTL_TXQ_VO = common dso_local global i64 0, align 8
@RTL_TXQ_MGT = common dso_local global i64 0, align 8
@RTL_TXQ_BCN = common dso_local global i64 0, align 8
@RTL_TXQ_HI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"USB 3EP Setting for typical.....\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, %struct.rtl_ep_map*)* @threeoutepmapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threeoutepmapping(%struct.ieee80211_hw* %0, i32 %1, %struct.rtl_ep_map* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_ep_map*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rtl_ep_map* %2, %struct.rtl_ep_map** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %3
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %14 = load i32, i32* @COMP_INIT, align 4
  %15 = load i32, i32* @DBG_DMESG, align 4
  %16 = call i32 @RT_TRACE(%struct.rtl_priv* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @RTL_TXQ_BE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 5, i32* %21, align 4
  %22 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %23 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @RTL_TXQ_BK, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 3, i32* %26, align 4
  %27 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %28 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @RTL_TXQ_VI, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 3, i32* %31, align 4
  %32 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %33 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @RTL_TXQ_VO, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 2, i32* %36, align 4
  %37 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %38 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @RTL_TXQ_MGT, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 2, i32* %41, align 4
  %42 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %43 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @RTL_TXQ_BCN, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 2, i32* %46, align 4
  %47 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @RTL_TXQ_HI, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 2, i32* %51, align 4
  br label %92

52:                                               ; preds = %3
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %54 = load i32, i32* @COMP_INIT, align 4
  %55 = load i32, i32* @DBG_DMESG, align 4
  %56 = call i32 @RT_TRACE(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %58 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @RTL_TXQ_BE, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 5, i32* %61, align 4
  %62 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %63 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @RTL_TXQ_BK, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 5, i32* %66, align 4
  %67 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %68 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @RTL_TXQ_VI, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 3, i32* %71, align 4
  %72 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %73 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @RTL_TXQ_VO, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 2, i32* %76, align 4
  %77 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %78 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @RTL_TXQ_MGT, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 2, i32* %81, align 4
  %82 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %83 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @RTL_TXQ_BCN, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 2, i32* %86, align 4
  %87 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %6, align 8
  %88 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @RTL_TXQ_HI, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 2, i32* %91, align 4
  br label %92

92:                                               ; preds = %52, %12
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
