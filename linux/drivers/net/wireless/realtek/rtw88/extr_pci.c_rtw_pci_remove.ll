; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i64 }
%struct.rtw_pci = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rtw_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_pci*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ieee80211_hw* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = icmp ne %struct.ieee80211_hw* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %13, align 8
  store %struct.rtw_dev* %14, %struct.rtw_dev** %4, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.rtw_pci*
  store %struct.rtw_pci* %18, %struct.rtw_pci** %5, align 8
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = call i32 @rtw_unregister_hw(%struct.rtw_dev* %19, %struct.ieee80211_hw* %20)
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %23 = load %struct.rtw_pci*, %struct.rtw_pci** %5, align 8
  %24 = call i32 @rtw_pci_disable_interrupt(%struct.rtw_dev* %22, %struct.rtw_pci* %23)
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = call i32 @rtw_pci_destroy(%struct.rtw_dev* %25, %struct.pci_dev* %26)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = call i32 @rtw_pci_declaim(%struct.rtw_dev* %28, %struct.pci_dev* %29)
  %31 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i32 @rtw_pci_free_irq(%struct.rtw_dev* %31, %struct.pci_dev* %32)
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %35 = call i32 @rtw_core_deinit(%struct.rtw_dev* %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %36)
  br label %38

38:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.ieee80211_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @rtw_unregister_hw(%struct.rtw_dev*, %struct.ieee80211_hw*) #1

declare dso_local i32 @rtw_pci_disable_interrupt(%struct.rtw_dev*, %struct.rtw_pci*) #1

declare dso_local i32 @rtw_pci_destroy(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @rtw_pci_declaim(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @rtw_pci_free_irq(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @rtw_core_deinit(%struct.rtw_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
