; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { i32, i32, %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }

@MAC_REG_RCR = common dso_local global i32 0, align 4
@RCR_UNICAST = common dso_local global i32 0, align 4
@MAC_REG_HOSTCR = common dso_local global i32 0, align 4
@HOSTCR_ADHOC = common dso_local global i32 0, align 4
@HOSTCR_AP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
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
  %12 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %11, i32 0, i32 2
  store %struct.ieee80211_vif* %10, %struct.ieee80211_vif** %12, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %43 [
    i32 128, label %16
    i32 130, label %17
    i32 129, label %30
  ]

16:                                               ; preds = %2
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %19 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAC_REG_RCR, align 4
  %22 = load i32, i32* @RCR_UNICAST, align 4
  %23 = call i32 @MACvRegBitsOff(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %25 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %28 = load i32, i32* @HOSTCR_ADHOC, align 4
  %29 = call i32 @MACvRegBitsOn(i32 %26, i32 %27, i32 %28)
  br label %46

30:                                               ; preds = %2
  %31 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %32 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAC_REG_RCR, align 4
  %35 = load i32, i32* @RCR_UNICAST, align 4
  %36 = call i32 @MACvRegBitsOff(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAC_REG_HOSTCR, align 4
  %41 = load i32, i32* @HOSTCR_AP, align 4
  %42 = call i32 @MACvRegBitsOn(i32 %39, i32 %40, i32 %41)
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %30, %17, %16
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vnt_private*, %struct.vnt_private** %6, align 8
  %51 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @MACvRegBitsOff(i32, i32, i32) #1

declare dso_local i32 @MACvRegBitsOn(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
