; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_twooutepmapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_twooutepmapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_ep_map = type { i32* }
%struct.rtl_priv = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"USB Chip-B & WMM Setting.....\0A\00", align 1
@RTL_TXQ_BE = common dso_local global i64 0, align 8
@RTL_TXQ_BK = common dso_local global i64 0, align 8
@RTL_TXQ_VI = common dso_local global i64 0, align 8
@RTL_TXQ_VO = common dso_local global i64 0, align 8
@RTL_TXQ_MGT = common dso_local global i64 0, align 8
@RTL_TXQ_BCN = common dso_local global i64 0, align 8
@RTL_TXQ_HI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"USB typical Setting.....\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, %struct.rtl_ep_map*)* @twooutepmapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twooutepmapping(%struct.ieee80211_hw* %0, i32 %1, i32 %2, %struct.rtl_ep_map* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_ep_map*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.rtl_ep_map* %3, %struct.rtl_ep_map** %8, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %16 = load i32, i32* @COMP_INIT, align 4
  %17 = load i32, i32* @DBG_DMESG, align 4
  %18 = call i32 @RT_TRACE(%struct.rtl_priv* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %20 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @RTL_TXQ_BE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 2, i32* %23, align 4
  %24 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %25 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @RTL_TXQ_BK, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 3, i32* %28, align 4
  %29 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %30 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @RTL_TXQ_VI, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 3, i32* %33, align 4
  %34 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %35 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @RTL_TXQ_VO, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 2, i32* %38, align 4
  %39 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %40 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @RTL_TXQ_MGT, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 2, i32* %43, align 4
  %44 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %45 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @RTL_TXQ_BCN, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 2, i32* %48, align 4
  %49 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %50 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @RTL_TXQ_HI, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 2, i32* %53, align 4
  br label %94

54:                                               ; preds = %4
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %56 = load i32, i32* @COMP_INIT, align 4
  %57 = load i32, i32* @DBG_DMESG, align 4
  %58 = call i32 @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %60 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @RTL_TXQ_BE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 3, i32* %63, align 4
  %64 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %65 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @RTL_TXQ_BK, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 3, i32* %68, align 4
  %69 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %70 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @RTL_TXQ_VI, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 2, i32* %73, align 4
  %74 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %75 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @RTL_TXQ_VO, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 2, i32* %78, align 4
  %79 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %80 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @RTL_TXQ_MGT, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 2, i32* %83, align 4
  %84 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %85 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @RTL_TXQ_BCN, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 2, i32* %88, align 4
  %89 = load %struct.rtl_ep_map*, %struct.rtl_ep_map** %8, align 8
  %90 = getelementptr inbounds %struct.rtl_ep_map, %struct.rtl_ep_map* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @RTL_TXQ_HI, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 2, i32* %93, align 4
  br label %94

94:                                               ; preds = %54, %14
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
