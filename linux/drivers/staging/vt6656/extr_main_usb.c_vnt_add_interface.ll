; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }

@MAC_REG_RCR = common dso_local global i32 0, align 4
@RCR_UNICAST = common dso_local global i32 0, align 4
@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_ADHOC = common dso_local global i32 0, align 4
@HOSTCR_AP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LEDSTS_STS = common dso_local global i32 0, align 4
@LEDSTS_INTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @vnt_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.vnt_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  store %struct.vnt_private* %9, %struct.vnt_private** %6, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %11 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %12 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %11, i32 0, i32 1
  store %struct.ieee80211_vif* %10, %struct.ieee80211_vif** %12, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %35 [
    i32 128, label %16
    i32 130, label %17
    i32 129, label %26
  ]

16:                                               ; preds = %2
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %19 = load i32, i32* @MAC_REG_RCR, align 4
  %20 = load i32, i32* @RCR_UNICAST, align 4
  %21 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %18, i32 %19, i32 %20)
  %22 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %23 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %24 = load i32, i32* @HOSTCR_ADHOC, align 4
  %25 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %22, i32 %23, i32 %24)
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %28 = load i32, i32* @MAC_REG_RCR, align 4
  %29 = load i32, i32* @RCR_UNICAST, align 4
  %30 = call i32 @vnt_mac_reg_bits_off(%struct.vnt_private* %27, i32 %28, i32 %29)
  %31 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %32 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %33 = load i32, i32* @HOSTCR_AP, align 4
  %34 = call i32 @vnt_mac_reg_bits_on(%struct.vnt_private* %31, i32 %32, i32 %33)
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %26, %17, %16
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %43 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %45 = call i32 @vnt_set_bss_mode(%struct.vnt_private* %44)
  %46 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %47 = load i32, i32* @LEDSTS_STS, align 4
  %48 = load i32, i32* @LEDSTS_INTER, align 4
  %49 = call i32 @vnt_mac_set_led(%struct.vnt_private* %46, i32 %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %38, %35
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @vnt_mac_reg_bits_off(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_mac_reg_bits_on(%struct.vnt_private*, i32, i32) #1

declare dso_local i32 @vnt_set_bss_mode(%struct.vnt_private*) #1

declare dso_local i32 @vnt_mac_set_led(%struct.vnt_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
