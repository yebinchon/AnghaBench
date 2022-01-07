; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_ps_set_rf_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_ps_set_rf_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32)* }
%struct.rtl_ps_ctl = type { i32, i32, i32, i32 }

@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"RF Change in progress! Wait to set..state_toset(%d).\0A\00", align 1
@RF_CHANGE_BY_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @rtl_ps_set_rf_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_ps_set_rf_state(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rtl_ps_ctl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %8, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %16)
  store %struct.rtl_ps_ctl* %17, %struct.rtl_ps_ctl** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %3, %58
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %24 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %18
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %33 = load i32, i32* @COMP_ERR, align 4
  %34 = load i32, i32* @DBG_WARNING, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %49, %27
  %38 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %39 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = call i32 @mdelay(i32 1)
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 100
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %144

49:                                               ; preds = %42
  br label %37

50:                                               ; preds = %37
  br label %58

51:                                               ; preds = %18
  %52 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %53 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  br label %59

58:                                               ; preds = %50
  br label %18

59:                                               ; preds = %51
  %60 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %61 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %115 [
    i32 129, label %64
    i32 130, label %91
    i32 128, label %109
  ]

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %68 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @RF_CHANGE_BY_HW, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %76 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %81 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %80, i32 0, i32 2
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %74, %64
  %83 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %84 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %89 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %88, i32 0, i32 3
  store i32 0, i32* %89, align 4
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %87, %82
  br label %118

91:                                               ; preds = %59
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @RF_CHANGE_BY_HW, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %97 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %102 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %101, i32 0, i32 2
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %95, %91
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %106 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  store i32 1, i32* %11, align 4
  br label %118

109:                                              ; preds = %59
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %112 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  store i32 1, i32* %11, align 4
  br label %118

115:                                              ; preds = %59
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %109, %103, %90
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %123 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %127, align 8
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 %128(%struct.ieee80211_hw* %129, i32 %130)
  br label %132

132:                                              ; preds = %121, %118
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %134 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = call i32 @spin_lock(i32* %135)
  %137 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %138 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %137, i32 0, i32 0
  store i32 0, i32* %138, align 4
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %140 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %132, %48
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
