; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_net_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_net_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.ieee80211_network }
%struct.ieee80211_network = type { i32, i64 }

@BSSIDR = common dso_local global i64 0, align 8
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@ATIMWND = common dso_local global i64 0, align 8
@BCN_DMATIME = common dso_local global i64 0, align 8
@BCN_INTERVAL = common dso_local global i64 0, align 8
@BCN_DRV_EARLY_INT = common dso_local global i64 0, align 8
@BCN_ERR_THRESH = common dso_local global i32 0, align 4
@BCN_TCFG_CW_SHIFT = common dso_local global i32 0, align 4
@BCN_TCFG_IFS = common dso_local global i32 0, align 4
@BCN_TCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_net_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_net_update(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 6, i32* %6, align 4
  store i32 15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.ieee80211_network* %14, %struct.ieee80211_network** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @rtl8192_config_rate(%struct.net_device* %15, i32* %8)
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 351
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i64, i64* @BSSIDR, align 8
  %23 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_nic_dword(%struct.net_device* %21, i64 %22, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i64, i64* @BSSIDR, align 8
  %32 = add nsw i64 %31, 4
  %33 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_nic_word(%struct.net_device* %30, i64 %32, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @rtl8192_update_msr(%struct.net_device* %40)
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IW_MODE_ADHOC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %1
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i64, i64* @ATIMWND, align 8
  %52 = call i32 @write_nic_word(%struct.net_device* %50, i64 %51, i32 2)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i64, i64* @BCN_DMATIME, align 8
  %55 = call i32 @write_nic_word(%struct.net_device* %53, i64 %54, i32 1023)
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i64, i64* @BCN_INTERVAL, align 8
  %58 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @write_nic_word(%struct.net_device* %56, i64 %57, i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i64, i64* @BCN_DRV_EARLY_INT, align 8
  %64 = call i32 @write_nic_word(%struct.net_device* %62, i64 %63, i32 1)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i32, i32* @BCN_ERR_THRESH, align 4
  %67 = call i32 @write_nic_byte(%struct.net_device* %65, i32 %66, i32 100)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @BCN_TCFG_CW_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BCN_TCFG_IFS, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = load i64, i64* @BCN_TCFG, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @write_nic_word(%struct.net_device* %78, i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %49, %1
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_config_rate(%struct.net_device*, i32*) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i64, i32) #1

declare dso_local i32 @rtl8192_update_msr(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
