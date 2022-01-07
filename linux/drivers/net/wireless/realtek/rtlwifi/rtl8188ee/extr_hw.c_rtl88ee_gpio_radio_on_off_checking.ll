; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl88ee_gpio_radio_on_off_checking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl88ee_gpio_radio_on_off_checking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.rtl_ps_ctl = type { i32, i32, i32, i64 }

@REG_GPIO_OUTPUT = common dso_local global i32 0, align 4
@ERFON = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"GPIOChangeRF  - HW Radio OFF, RF OFF\0A\00", align 1
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88ee_gpio_radio_on_off_checking(%struct.ieee80211_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %14)
  store %struct.rtl_ps_ctl* %15, %struct.rtl_ps_ctl** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %141

22:                                               ; preds = %2
  %23 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %24 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %141

28:                                               ; preds = %22
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %34 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  store i32 0, i32* %3, align 4
  br label %141

42:                                               ; preds = %28
  %43 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %44 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %42
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %51 = load i32, i32* @REG_GPIO_OUTPUT, align 4
  %52 = call i32 @rtl_read_dword(%struct.rtl_priv* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @BIT(i32 31)
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @ERFON, align 4
  br label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @ERFOFF, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %8, align 4
  %63 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %64 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ERFON, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %73 = load i32, i32* @COMP_RF, align 4
  %74 = load i32, i32* @DBG_DMESG, align 4
  %75 = call i32 @RT_TRACE(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ERFON, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %78 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  store i32 1, i32* %10, align 4
  br label %97

79:                                               ; preds = %67, %61
  %80 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %81 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @ERFOFF, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %90 = load i32, i32* @COMP_RF, align 4
  %91 = load i32, i32* @DBG_DMESG, align 4
  %92 = call i32 @RT_TRACE(%struct.rtl_priv* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ERFOFF, align 4
  store i32 %93, i32* %8, align 4
  %94 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %95 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %88, %84, %79
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %106 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock(i32* %109)
  br label %133

111:                                              ; preds = %97
  %112 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %113 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %120 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %121 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %124 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @spin_lock(i32* %125)
  %127 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %128 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %127, i32 0, i32 0
  store i32 0, i32* %128, align 8
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %130 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = call i32 @spin_unlock(i32* %131)
  br label %133

133:                                              ; preds = %122, %100
  %134 = load i32*, i32** %5, align 8
  store i32 1, i32* %134, align 4
  %135 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %136 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %133, %37, %27, %21
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
