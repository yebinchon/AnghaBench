; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_gpio_radio_on_off_checking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_gpio_radio_on_off_checking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.rtl_phy }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.rtl_phy = type { i64 }
%struct.rtl_ps_ctl = type { i32, i32, i32, i64 }

@REG_GPIO_IO_SEL_2 = common dso_local global i32 0, align 4
@REG_GPIO_PIN_CTRL_2 = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i32 0, align 4
@ERFON = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"GPIOChangeRF  - HW Radio OFF, RF OFF\0A\00", align 1
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8821ae_gpio_radio_on_off_checking(%struct.ieee80211_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca %struct.rtl_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %15)
  store %struct.rtl_ps_ctl* %16, %struct.rtl_ps_ctl** %7, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 2
  store %struct.rtl_phy* %18, %struct.rtl_phy** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %170

25:                                               ; preds = %2
  %26 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %27 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %170

31:                                               ; preds = %25
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %37 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  store i32 0, i32* %3, align 4
  br label %170

45:                                               ; preds = %31
  %46 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %47 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %45
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %54 = load i32, i32* @REG_GPIO_IO_SEL_2, align 4
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %56 = load i32, i32* @REG_GPIO_IO_SEL_2, align 4
  %57 = call i32 @rtl_read_byte(%struct.rtl_priv* %55, i32 %56)
  %58 = call i32 @BIT(i32 1)
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 @rtl_write_byte(%struct.rtl_priv* %53, i32 %54, i32 %60)
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %63 = load i32, i32* @REG_GPIO_PIN_CTRL_2, align 4
  %64 = call i32 @rtl_read_byte(%struct.rtl_priv* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.rtl_phy*, %struct.rtl_phy** %8, align 8
  %66 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %52
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @BIT(i32 1)
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @ERFOFF, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @ERFON, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %9, align 4
  br label %91

80:                                               ; preds = %52
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @BIT(i32 1)
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @ERFON, align 4
  br label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @ERFOFF, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %89, %78
  %92 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %93 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @ERFON, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %102 = load i32, i32* @COMP_RF, align 4
  %103 = load i32, i32* @DBG_DMESG, align 4
  %104 = call i32 @RT_TRACE(%struct.rtl_priv* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @ERFON, align 4
  store i32 %105, i32* %9, align 4
  %106 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %107 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  store i32 1, i32* %11, align 4
  br label %126

108:                                              ; preds = %96, %91
  %109 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %110 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @ERFOFF, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %119 = load i32, i32* @COMP_RF, align 4
  %120 = load i32, i32* @DBG_DMESG, align 4
  %121 = call i32 @RT_TRACE(%struct.rtl_priv* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @ERFOFF, align 4
  store i32 %122, i32* %9, align 4
  %123 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %124 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  store i32 1, i32* %11, align 4
  br label %125

125:                                              ; preds = %117, %113, %108
  br label %126

126:                                              ; preds = %125, %100
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %131 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @spin_lock(i32* %132)
  %134 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %135 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %137 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = call i32 @spin_unlock(i32* %138)
  br label %162

140:                                              ; preds = %126
  %141 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %142 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %149 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %150 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %140
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %153 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = call i32 @spin_lock(i32* %154)
  %156 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %157 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  %158 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %159 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i32 @spin_unlock(i32* %160)
  br label %162

162:                                              ; preds = %151, %129
  %163 = load i32*, i32** %5, align 8
  store i32 1, i32* %163, align 4
  %164 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %165 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %162, %40, %30, %24
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
