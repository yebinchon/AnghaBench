; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen2_prepare_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen2_prepare_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }
%struct.h2c_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@H2C_8723B_BT_WLAN_CALIBRATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8xxxu_gen2_prepare_calibrate(%struct.rtl8xxxu_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.h2c_cmd, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.h2c_cmd* %5, i32 0, i32 8)
  %7 = load i32, i32* @H2C_8723B_BT_WLAN_CALIBRATION, align 4
  %8 = getelementptr inbounds %struct.h2c_cmd, %struct.h2c_cmd* %5, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.h2c_cmd, %struct.h2c_cmd* %5, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %14 = call i32 @rtl8xxxu_gen2_h2c_cmd(%struct.rtl8xxxu_priv* %13, %struct.h2c_cmd* %5, i32 8)
  ret void
}

declare dso_local i32 @memset(%struct.h2c_cmd*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_gen2_h2c_cmd(%struct.rtl8xxxu_priv*, %struct.h2c_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
