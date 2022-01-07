; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_chip_info*, i32*, %struct.ieee80211_hw* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.rtw_chip_info = type { i32 }

@rtw_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to allocate hw\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rtw_pci_ops = common dso_local global i32 0, align 4
@RTW_HCI_TYPE_PCIE = common dso_local global i32 0, align 4
@RTW_DBG_PCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"rtw88 pci probe: vendor=0x%4.04X device=0x%4.04X rev=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to claim pci device\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to setup pci resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to setup chip information\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to register hw\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @rtw_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 44, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 %10, i32* @rtw_ops)
  store %struct.ieee80211_hw* %11, %struct.ieee80211_hw** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %13 = icmp ne %struct.ieee80211_hw* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 3
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %121

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %22, align 8
  store %struct.rtw_dev* %23, %struct.rtw_dev** %7, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %26 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %25, i32 0, i32 3
  store %struct.ieee80211_hw* %24, %struct.ieee80211_hw** %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 3
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.rtw_chip_info*
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %36 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %35, i32 0, i32 1
  store %struct.rtw_chip_info* %34, %struct.rtw_chip_info** %36, align 8
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %38 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32* @rtw_pci_ops, i32** %39, align 8
  %40 = load i32, i32* @RTW_HCI_TYPE_PCIE, align 4
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %42 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %45 = call i32 @rtw_core_init(%struct.rtw_dev* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %20
  br label %117

49:                                               ; preds = %20
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %51 = load i32, i32* @RTW_DBG_PCI, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rtw_dbg(%struct.rtw_dev* %50, i32 %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = call i32 @rtw_pci_claim(%struct.rtw_dev* %62, %struct.pci_dev* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %69 = call i32 @rtw_err(%struct.rtw_dev* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %114

70:                                               ; preds = %49
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = call i32 @rtw_pci_setup_resource(%struct.rtw_dev* %71, %struct.pci_dev* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %78 = call i32 @rtw_err(%struct.rtw_dev* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %110

79:                                               ; preds = %70
  %80 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %81 = call i32 @rtw_chip_info_setup(%struct.rtw_dev* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %86 = call i32 @rtw_err(%struct.rtw_dev* %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %106

87:                                               ; preds = %79
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %90 = call i32 @rtw_register_hw(%struct.rtw_dev* %88, %struct.ieee80211_hw* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %95 = call i32 @rtw_err(%struct.rtw_dev* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %106

96:                                               ; preds = %87
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = call i32 @rtw_pci_request_irq(%struct.rtw_dev* %97, %struct.pci_dev* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %104 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %103)
  br label %106

105:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %121

106:                                              ; preds = %102, %93, %84
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = call i32 @rtw_pci_destroy(%struct.rtw_dev* %107, %struct.pci_dev* %108)
  br label %110

110:                                              ; preds = %106, %76
  %111 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = call i32 @rtw_pci_declaim(%struct.rtw_dev* %111, %struct.pci_dev* %112)
  br label %114

114:                                              ; preds = %110, %67
  %115 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %116 = call i32 @rtw_core_deinit(%struct.rtw_dev* %115)
  br label %117

117:                                              ; preds = %114, %48
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %119 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %105, %14
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rtw_core_init(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtw_pci_claim(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_pci_setup_resource(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @rtw_chip_info_setup(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_register_hw(%struct.rtw_dev*, %struct.ieee80211_hw*) #1

declare dso_local i32 @rtw_pci_request_irq(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtw_pci_destroy(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @rtw_pci_declaim(%struct.rtw_dev*, %struct.pci_dev*) #1

declare dso_local i32 @rtw_core_deinit(%struct.rtw_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
