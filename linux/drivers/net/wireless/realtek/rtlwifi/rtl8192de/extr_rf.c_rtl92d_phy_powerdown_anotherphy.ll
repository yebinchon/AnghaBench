; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_powerdown_anotherphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_powerdown_anotherphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_hal }
%struct.rtl_hal = type { i32, i32 }

@REG_MAC1 = common dso_local global i32 0, align 4
@REG_MAC0 = common dso_local global i32 0, align 4
@MAC1_ON = common dso_local global i32 0, align 4
@MAC0_ON = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"====>\0A\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"power down\0A\00", align 1
@RFPGA0_XA_LSSIPARAMETER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"<====\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_powerdown_anotherphy(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  store %struct.rtl_hal* %14, %struct.rtl_hal** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @BIT(i32 3)
  %19 = call i32 @BIT(i32 2)
  %20 = or i32 %18, %19
  br label %23

21:                                               ; preds = %2
  %22 = call i32 @BIT(i32 3)
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %20, %17 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @REG_MAC1, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @REG_MAC0, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @MAC1_ON, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @MAC0_ON, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %10, align 4
  %41 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %42 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %46 = load i32, i32* @COMP_RF, align 4
  %47 = load i32, i32* @DBG_LOUD, align 4
  %48 = call i32 @RT_TRACE(%struct.rtl_priv* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @rtl_read_byte(%struct.rtl_priv* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %39
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %58 = load i32, i32* @COMP_INIT, align 4
  %59 = load i32, i32* @DBG_LOUD, align 4
  %60 = call i32 @RT_TRACE(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %62 = load i32, i32* @RFPGA0_XA_LSSIPARAMETER, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @rtl92de_write_dword_dbi(%struct.ieee80211_hw* %61, i32 %62, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %56, %39
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %67 = load i32, i32* @COMP_RF, align 4
  %68 = load i32, i32* @DBG_LOUD, align 4
  %69 = call i32 @RT_TRACE(%struct.rtl_priv* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl92de_write_dword_dbi(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
