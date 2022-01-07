; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00pci.c_rt2x00pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00pci.c_rt2x00pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.rt2x00_ops = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_2__, i32, i32, %struct.ieee80211_hw*, %struct.rt2x00_ops*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Enable device failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PCI request regions failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"MWI not available\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"PCI DMA not supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to allocate hardware\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RT2X00_CHIP_INTF_PCIE = common dso_local global i32 0, align 4
@RT2X00_CHIP_INTF_PCI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00pci_probe(%struct.pci_dev* %0, %struct.rt2x00_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.rt2x00_ops*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.rt2x00_ops* %1, %struct.rt2x00_ops** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %128

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @pci_name(%struct.pci_dev* %19)
  %21 = call i32 @pci_request_regions(%struct.pci_dev* %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %124

26:                                               ; preds = %17
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_set_master(%struct.pci_dev* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i64 @pci_set_mwi(%struct.pci_dev* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = call i32 @DMA_BIT_MASK(i32 32)
  %38 = call i64 @dma_set_mask(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %119

44:                                               ; preds = %34
  %45 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %46 = getelementptr inbounds %struct.rt2x00_ops, %struct.rt2x00_ops* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 40, i32 %47)
  store %struct.ieee80211_hw* %48, %struct.ieee80211_hw** %6, align 8
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %50 = icmp ne %struct.ieee80211_hw* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %119

55:                                               ; preds = %44
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %58 = call i32 @pci_set_drvdata(%struct.pci_dev* %56, %struct.ieee80211_hw* %57)
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %59, i32 0, i32 0
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %60, align 8
  store %struct.rt2x00_dev* %61, %struct.rt2x00_dev** %7, align 8
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 1
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %65 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %64, i32 0, i32 5
  store i32* %63, i32** %65, align 8
  %66 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %68 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %67, i32 0, i32 4
  store %struct.rt2x00_ops* %66, %struct.rt2x00_ops** %68, align 8
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %71 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %70, i32 0, i32 3
  store %struct.ieee80211_hw* %69, %struct.ieee80211_hw** %71, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rt2x00_ops*, %struct.rt2x00_ops** %5, align 8
  %78 = getelementptr inbounds %struct.rt2x00_ops, %struct.rt2x00_ops* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %81 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = call i64 @pci_is_pcie(%struct.pci_dev* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %55
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %87 = load i32, i32* @RT2X00_CHIP_INTF_PCIE, align 4
  %88 = call i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev* %86, i32 %87)
  br label %93

89:                                               ; preds = %55
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %91 = load i32, i32* @RT2X00_CHIP_INTF_PCI, align 4
  %92 = call i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %95 = call i32 @rt2x00pci_alloc_reg(%struct.rt2x00_dev* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %116

99:                                               ; preds = %93
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = load i32, i32* @PCI_DEVICE_ID, align 4
  %102 = call i32 @pci_read_config_word(%struct.pci_dev* %100, i32 %101, i32* %9)
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %105 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %108 = call i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %113

112:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %128

113:                                              ; preds = %111
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %115 = call i32 @rt2x00pci_free_reg(%struct.rt2x00_dev* %114)
  br label %116

116:                                              ; preds = %113, %98
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %118 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %117)
  br label %119

119:                                              ; preds = %116, %51, %40
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = call i32 @pci_clear_mwi(%struct.pci_dev* %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = call i32 @pci_release_regions(%struct.pci_dev* %122)
  br label %124

124:                                              ; preds = %119, %24
  %125 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %126 = call i32 @pci_disable_device(%struct.pci_dev* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %112, %14
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @rt2x00_probe_err(i8*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_set_mwi(%struct.pci_dev*) #1

declare dso_local i64 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ieee80211_hw*) #1

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @rt2x00_set_chip_intf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00pci_alloc_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00pci_free_reg(%struct.rt2x00_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_clear_mwi(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
