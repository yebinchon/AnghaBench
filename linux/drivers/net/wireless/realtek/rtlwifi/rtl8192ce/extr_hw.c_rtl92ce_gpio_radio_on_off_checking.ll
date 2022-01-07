; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_gpio_radio_on_off_checking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_gpio_radio_on_off_checking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_ps_ctl = type { i32, i32, i32, i64 }
%struct.rtl_pci = type { i64 }

@REG_MAC_PINMUX_CFG = common dso_local global i32 0, align 4
@REG_GPIO_IO_SEL = common dso_local global i32 0, align 4
@ERFON = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"GPIOChangeRF  - HW Radio OFF, RF OFF\0A\00", align 1
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ce_gpio_radio_on_off_checking(%struct.ieee80211_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca %struct.rtl_pci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %16)
  store %struct.rtl_ps_ctl* %17, %struct.rtl_ps_ctl** %7, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_pci* @rtl_pcidev(i32 %19)
  store %struct.rtl_pci* %20, %struct.rtl_pci** %8, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %22 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %161

26:                                               ; preds = %2
  %27 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %28 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %161

32:                                               ; preds = %26
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %34 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %39 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  store i32 0, i32* %3, align 4
  br label %161

48:                                               ; preds = %32
  %49 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %50 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %48
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %58 = load i32, i32* @REG_MAC_PINMUX_CFG, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %60 = load i32, i32* @REG_MAC_PINMUX_CFG, align 4
  %61 = call i32 @rtl_read_byte(%struct.rtl_priv* %59, i32 %60)
  %62 = call i32 @BIT(i32 3)
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @rtl_write_byte(%struct.rtl_priv* %57, i32 %58, i32 %64)
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %67 = load i32, i32* @REG_GPIO_IO_SEL, align 4
  %68 = call i32 @rtl_read_byte(%struct.rtl_priv* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @BIT(i32 3)
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* @ERFON, align 4
  br label %77

75:                                               ; preds = %56
  %76 = load i32, i32* @ERFOFF, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %9, align 4
  %79 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %80 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @ERFON, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %89 = load i32, i32* @COMP_RF, align 4
  %90 = load i32, i32* @DBG_DMESG, align 4
  %91 = call i32 @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ERFON, align 4
  store i32 %92, i32* %9, align 4
  %93 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %94 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  store i32 1, i32* %11, align 4
  br label %113

95:                                               ; preds = %83, %77
  %96 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %97 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @ERFOFF, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %106 = load i32, i32* @COMP_RF, align 4
  %107 = load i32, i32* @DBG_DMESG, align 4
  %108 = call i32 @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ERFOFF, align 4
  store i32 %109, i32* %9, align 4
  %110 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %111 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  store i32 1, i32* %11, align 4
  br label %112

112:                                              ; preds = %104, %100, %95
  br label %113

113:                                              ; preds = %112, %87
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %12, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  %122 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %123 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %125 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %12, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  br label %153

129:                                              ; preds = %113
  %130 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %131 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %138 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %139 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %129
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @spin_lock_irqsave(i32* %143, i64 %144)
  %146 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %147 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %149 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  br label %153

153:                                              ; preds = %140, %116
  %154 = load i32*, i32** %5, align 8
  store i32 1, i32* %154, align 4
  %155 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %156 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %153, %42, %31, %25
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

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
