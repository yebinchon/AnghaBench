; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }

@MAC_REG_TCR = common dso_local global i32 0, align 4
@TCR_AUTOBCNTX = common dso_local global i32 0, align 4
@MAC_REG_TFTCTL = common dso_local global i32 0, align 4
@TFTCTL_TSFCNTREN = common dso_local global i32 0, align 4
@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_ADHOC = common dso_local global i32 0, align 4
@HOSTCR_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @vnt_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.vnt_private*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  store %struct.vnt_private* %8, %struct.vnt_private** %5, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %51 [
    i32 128, label %12
    i32 130, label %13
    i32 129, label %32
  ]

12:                                               ; preds = %2
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAC_REG_TCR, align 4
  %18 = load i32, i32* @TCR_AUTOBCNTX, align 4
  %19 = call i32 @MACvRegBitsOff(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAC_REG_TFTCTL, align 4
  %24 = load i32, i32* @TFTCTL_TSFCNTREN, align 4
  %25 = call i32 @MACvRegBitsOff(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %30 = load i32, i32* @HOSTCR_ADHOC, align 4
  %31 = call i32 @MACvRegBitsOff(i32 %28, i32 %29, i32 %30)
  br label %52

32:                                               ; preds = %2
  %33 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAC_REG_TCR, align 4
  %37 = load i32, i32* @TCR_AUTOBCNTX, align 4
  %38 = call i32 @MACvRegBitsOff(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %40 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAC_REG_TFTCTL, align 4
  %43 = load i32, i32* @TFTCTL_TSFCNTREN, align 4
  %44 = call i32 @MACvRegBitsOff(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %46 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %49 = load i32, i32* @HOSTCR_AP, align 4
  %50 = call i32 @MACvRegBitsOff(i32 %47, i32 %48, i32 %49)
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %32, %13, %12
  %53 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %54 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %55 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local i32 @MACvRegBitsOff(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
