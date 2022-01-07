; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__initpabias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__initpabias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@RF90_PATH_A = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_initpabias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_initpabias(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %9)
  store %struct.rtl_hal* %10, %struct.rtl_hal** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @efuse_read_1byte(%struct.ieee80211_hw* %11, i32 506)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @BIT(i32 0)
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = load i32, i32* @RF90_PATH_A, align 4
  %20 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %18, i32 %19, i32 21, i32 1048575, i32 62470)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = load i32, i32* @RF90_PATH_A, align 4
  %23 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %21, i32 %22, i32 21, i32 1048575, i32 324614)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = load i32, i32* @RF90_PATH_A, align 4
  %26 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %24, i32 %25, i32 21, i32 1048575, i32 586758)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = load i32, i32* @RF90_PATH_A, align 4
  %29 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %27, i32 %28, i32 21, i32 1048575, i32 848902)
  br label %30

30:                                               ; preds = %17, %1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BIT(i32 1)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %30
  %36 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %37 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_NORMAL_CHIP(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %43 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_92C_SERIAL(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = load i32, i32* @RF90_PATH_B, align 4
  %50 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %48, i32 %49, i32 21, i32 1048575, i32 62470)
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = load i32, i32* @RF90_PATH_B, align 4
  %53 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %51, i32 %52, i32 21, i32 1048575, i32 324614)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = load i32, i32* @RF90_PATH_B, align 4
  %56 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %54, i32 %55, i32 21, i32 1048575, i32 586758)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = load i32, i32* @RF90_PATH_B, align 4
  %59 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %57, i32 %58, i32 21, i32 1048575, i32 848902)
  br label %60

60:                                               ; preds = %47, %41, %35, %30
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @BIT(i32 4)
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = call i32 @rtl_read_byte(%struct.rtl_priv* %66, i32 22)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 15
  store i32 %69, i32* %5, align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, 144
  %73 = call i32 @rtl_write_byte(%struct.rtl_priv* %70, i32 22, i32 %72)
  br label %74

74:                                               ; preds = %65, %60
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @efuse_read_1byte(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_NORMAL_CHIP(i32) #1

declare dso_local i64 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
