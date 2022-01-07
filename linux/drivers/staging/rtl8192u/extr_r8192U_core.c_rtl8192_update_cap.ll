; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_update_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_update_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.ieee80211_network }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_network = type { i32 }

@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@BRSR_AckShortPmb = common dso_local global i32 0, align 4
@RRSR = common dso_local global i32 0, align 4
@IEEE_G = common dso_local global i32 0, align 4
@IEEE_N_24G = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_SLOT = common dso_local global i32 0, align 4
@SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@NON_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@SLOT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @rtl8192_update_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_update_cap(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca %struct.ieee80211_network*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %6, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.ieee80211_network* %14, %struct.ieee80211_network** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @BRSR_AckShortPmb, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* @RRSR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @write_nic_dword(%struct.net_device* %32, i32 %33, i32 %34)
  %36 = load %struct.ieee80211_network*, %struct.ieee80211_network** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IEEE_G, align 4
  %40 = load i32, i32* @IEEE_N_24G, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @WLAN_CAPABILITY_SHORT_SLOT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = load i32, i32* @SHORT_SLOT_TIME, align 4
  store i32 %59, i32* %8, align 4
  br label %62

60:                                               ; preds = %49, %44
  %61 = load i32, i32* @NON_SHORT_SLOT_TIME, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load i32, i32* @SLOT_TIME, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @write_nic_byte(%struct.net_device* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %31
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
