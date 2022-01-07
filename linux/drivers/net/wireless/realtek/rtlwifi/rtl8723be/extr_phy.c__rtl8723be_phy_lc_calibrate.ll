; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_lc_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_lc_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_TXPAUSE = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@MASK12BITS = common dso_local global i32 0, align 4
@RF90_PATH_B = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl8723be_phy_lc_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_phy_lc_calibrate(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %9, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %13 = call i32 @rtl_read_byte(%struct.rtl_priv* %12, i32 3331)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 112
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 143
  %21 = call i32 @rtl_write_byte(%struct.rtl_priv* %18, i32 3331, i32 %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %24 = load i32, i32* @REG_TXPAUSE, align 4
  %25 = call i32 @rtl_write_byte(%struct.rtl_priv* %23, i32 %24, i32 255)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 112
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load i32, i32* @RF90_PATH_A, align 4
  %33 = load i32, i32* @MASK12BITS, align 4
  %34 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %31, i32 %32, i32 0, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load i32, i32* @RF90_PATH_B, align 4
  %40 = load i32, i32* @MASK12BITS, align 4
  %41 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %38, i32 %39, i32 0, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %44 = load i32, i32* @RF90_PATH_A, align 4
  %45 = load i32, i32* @MASK12BITS, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 589823
  %48 = or i32 %47, 65536
  %49 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %43, i32 %44, i32 0, i32 %45, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %54 = load i32, i32* @RF90_PATH_B, align 4
  %55 = load i32, i32* @MASK12BITS, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 589823
  %58 = or i32 %57, 65536
  %59 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %53, i32 %54, i32 0, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %52, %42
  br label %61

61:                                               ; preds = %60, %26
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = load i32, i32* @RF90_PATH_A, align 4
  %64 = load i32, i32* @MASK12BITS, align 4
  %65 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %62, i32 %63, i32 24, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %67 = load i32, i32* @RF90_PATH_A, align 4
  %68 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %69 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %66, i32 %67, i32 176, i32 %68, i32 916448)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %71 = load i32, i32* @RF90_PATH_A, align 4
  %72 = load i32, i32* @MASK12BITS, align 4
  %73 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %70, i32 %71, i32 24, i32 %72, i32 35850)
  %74 = call i32 @mdelay(i32 50)
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = load i32, i32* @RF90_PATH_A, align 4
  %77 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %78 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %75, i32 %76, i32 176, i32 %77, i32 917472)
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 112
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %61
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @rtl_write_byte(%struct.rtl_priv* %83, i32 3331, i32 %84)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %87 = load i32, i32* @RF90_PATH_A, align 4
  %88 = load i32, i32* @MASK12BITS, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %86, i32 %87, i32 0, i32 %88, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %82
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %95 = load i32, i32* @RF90_PATH_B, align 4
  %96 = load i32, i32* @MASK12BITS, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %94, i32 %95, i32 0, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %82
  br label %104

100:                                              ; preds = %61
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %102 = load i32, i32* @REG_TXPAUSE, align 4
  %103 = call i32 @rtl_write_byte(%struct.rtl_priv* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %100, %99
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %106 = load i32, i32* @COMP_INIT, align 4
  %107 = load i32, i32* @DBG_LOUD, align 4
  %108 = call i32 @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
