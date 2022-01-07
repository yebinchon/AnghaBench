; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_set_beacon_related_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_set_beacon_related_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i32, i64 }

@REG_ATIMWND = common dso_local global i32 0, align 4
@REG_BCN_INTERVAL = common dso_local global i32 0, align 4
@REG_SLOT = common dso_local global i32 0, align 4
@REG_TCR = common dso_local global i32 0, align 4
@TSFRST = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@COMP_BEACON = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"SetBeaconRelatedRegisters8192CUsb(): Set TCR(%x)\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@REG_RXTSF_OFFSET_CCK = common dso_local global i32 0, align 4
@REG_RXTSF_OFFSET_OFDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_set_beacon_related_registers(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %11)
  store %struct.rtl_mac* %12, %struct.rtl_mac** %4, align 8
  %13 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = load i32, i32* @REG_ATIMWND, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @rtl_write_word(%struct.rtl_priv* %16, i32 %17, i32 %18)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @REG_BCN_INTERVAL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rtl_write_word(%struct.rtl_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @_rtl92cu_init_beacon_parameters(%struct.ieee80211_hw* %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @REG_SLOT, align 4
  %28 = call i32 @rtl_write_byte(%struct.rtl_priv* %26, i32 %27, i32 9)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load i32, i32* @REG_TCR, align 4
  %31 = call i32 @rtl_read_dword(%struct.rtl_priv* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @TSFRST, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @REG_TCR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @rtl_write_dword(%struct.rtl_priv* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @TSFRST, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = load i32, i32* @REG_TCR, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rtl_write_dword(%struct.rtl_priv* %43, i32 %44, i32 %45)
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = load i32, i32* @COMP_INIT, align 4
  %49 = load i32, i32* @COMP_BEACON, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @DBG_LOUD, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RT_TRACE(%struct.rtl_priv* %47, i32 %50, i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %55 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %1
  %60 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %61 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %67 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65, %59, %1
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = load i32, i32* @REG_RXTSF_OFFSET_CCK, align 4
  %74 = call i32 @rtl_write_byte(%struct.rtl_priv* %72, i32 %73, i32 80)
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = load i32, i32* @REG_RXTSF_OFFSET_OFDM, align 4
  %77 = call i32 @rtl_write_byte(%struct.rtl_priv* %75, i32 %76, i32 80)
  br label %78

78:                                               ; preds = %71, %65
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %80 = call i32 @_beacon_function_enable(%struct.ieee80211_hw* %79)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl92cu_init_beacon_parameters(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @_beacon_function_enable(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
