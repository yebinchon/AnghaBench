; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_get_amd_l1_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_get_amd_l1_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl_pci_get_amd_l1_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_pci_get_amd_l1_patch(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_pci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_pci* @rtl_pcidev(i32 %8)
  store %struct.rtl_pci* %9, %struct.rtl_pci** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_write_config_byte(i32 %12, i32 224, i32 160)
  %14 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_read_config_byte(i32 %16, i32 224, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 160
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.rtl_pci*, %struct.rtl_pci** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_read_config_dword(i32 %23, i32 228, i32* %6)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @BIT(i32 23)
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %20
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
