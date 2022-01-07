; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_enable_anotherphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_rf.c_rtl92d_phy_enable_anotherphy.c"
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
@.str = private unnamed_addr constant [6 x i8] c"===>\0A\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"enable BB & RF\0A\00", align 1
@REG_SYS_ISO_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"<===\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92d_phy_enable_anotherphy(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %5, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  store %struct.rtl_hal* %15, %struct.rtl_hal** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 @BIT(i32 3)
  %20 = call i32 @BIT(i32 2)
  %21 = or i32 %19, %20
  br label %24

22:                                               ; preds = %2
  %23 = call i32 @BIT(i32 3)
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %21, %18 ], [ %23, %22 ]
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @REG_MAC1, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @REG_MAC0, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @MAC1_ON, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @MAC0_ON, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %42 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %43 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %45 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %47 = load i32, i32* @COMP_RF, align 4
  %48 = load i32, i32* @DBG_LOUD, align 4
  %49 = call i32 @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rtl_read_byte(%struct.rtl_priv* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %40
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %59 = load i32, i32* @COMP_INIT, align 4
  %60 = load i32, i32* @DBG_LOUD, align 4
  %61 = call i32 @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %63 = load i32, i32* @REG_SYS_ISO_CTRL, align 4
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %65 = load i32, i32* @REG_SYS_ISO_CTRL, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @rtl92de_read_dword_dbi(%struct.ieee80211_hw* %64, i32 %65, i32 %66)
  %68 = call i32 @BIT(i32 29)
  %69 = or i32 %67, %68
  %70 = call i32 @BIT(i32 16)
  %71 = or i32 %69, %70
  %72 = call i32 @BIT(i32 17)
  %73 = or i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @rtl92de_write_dword_dbi(%struct.ieee80211_hw* %62, i32 %63, i32 %73, i32 %74)
  br label %77

76:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %57
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %79 = load i32, i32* @COMP_RF, align 4
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = call i32 @RT_TRACE(%struct.rtl_priv* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl92de_write_dword_dbi(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92de_read_dword_dbi(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
