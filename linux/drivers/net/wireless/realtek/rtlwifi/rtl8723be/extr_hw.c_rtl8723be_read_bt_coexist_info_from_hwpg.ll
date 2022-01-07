; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_read_bt_coexist_info_from_hwpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_read_bt_coexist_info_from_hwpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i8* }
%struct.TYPE_4__ = type { %struct.rtl_mod_params* }
%struct.rtl_mod_params = type { i32 }

@REG_MULTI_FUNC_CTRL = common dso_local global i32 0, align 4
@EEPROM_RF_BT_SETTING_8723B = common dso_local global i64 0, align 8
@BT_RTL8723B = common dso_local global i8* null, align 8
@ANT_AUX = common dso_local global i8* null, align 8
@ANT_MAIN = common dso_local global i8* null, align 8
@ANT_X2 = common dso_local global i8* null, align 8
@ANT_X1 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_read_bt_coexist_info_from_hwpg(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_mod_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.rtl_mod_params*, %struct.rtl_mod_params** %16, align 8
  store %struct.rtl_mod_params* %17, %struct.rtl_mod_params** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %3
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %22 = load i32, i32* @REG_MULTI_FUNC_CTRL, align 4
  %23 = call i32 @rtl_read_dword(%struct.rtl_priv* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @BIT(i32 18)
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %38

33:                                               ; preds = %20
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* @EEPROM_RF_BT_SETTING_8723B, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** @BT_RTL8723B, align 8
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 1
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load i8*, i8** @ANT_AUX, align 8
  br label %61

59:                                               ; preds = %38
  %60 = load i8*, i8** @ANT_MAIN, align 8
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i8* [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %64 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i8* %62, i8** %66, align 8
  br label %88

67:                                               ; preds = %3
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i8*, i8** @BT_RTL8723B, align 8
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i8* %72, i8** %76, align 8
  %77 = load i8*, i8** @ANT_X2, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load i8*, i8** @ANT_MAIN, align 8
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i8* %83, i8** %87, align 8
  br label %88

88:                                               ; preds = %67, %61
  %89 = load %struct.rtl_mod_params*, %struct.rtl_mod_params** %8, align 8
  %90 = getelementptr inbounds %struct.rtl_mod_params, %struct.rtl_mod_params* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %88
  %94 = load %struct.rtl_mod_params*, %struct.rtl_mod_params** %8, align 8
  %95 = getelementptr inbounds %struct.rtl_mod_params, %struct.rtl_mod_params* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i8*, i8** @ANT_X1, align 8
  br label %102

100:                                              ; preds = %93
  %101 = load i8*, i8** @ANT_X2, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ]
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %106 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.rtl_mod_params*, %struct.rtl_mod_params** %8, align 8
  %110 = getelementptr inbounds %struct.rtl_mod_params, %struct.rtl_mod_params* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i8*, i8** @ANT_AUX, align 8
  br label %117

115:                                              ; preds = %102
  %116 = load i8*, i8** @ANT_MAIN, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i8* [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %120 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i8* %118, i8** %122, align 8
  br label %123

123:                                              ; preds = %117, %88
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
