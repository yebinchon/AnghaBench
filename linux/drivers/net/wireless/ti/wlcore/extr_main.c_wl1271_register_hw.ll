; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_register_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_register_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, i32, i64, %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.wlcore_platdev_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [68 x i8] c"Detected unconfigured mac address in nvs, derive from fuse instead.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wl18xx\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"This default nvs file can be removed from the file system\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Your device performance is not optimized.\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Please use the calibrator tool to configure your device.\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Fuse mac address is zero. using random mac\00", align 1
@WLCORE_TI_OUI_ADDRESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"unable to register mac80211 hw: %d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl1271_register_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_register_hw(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.wlcore_platdev_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 6
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %7, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.wlcore_platdev_data* @dev_get_platdata(i32* %14)
  store %struct.wlcore_platdev_data* %15, %struct.wlcore_platdev_data** %8, align 8
  %16 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %136

21:                                               ; preds = %1
  %22 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 12
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 11
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 10
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = add nsw i32 %34, %38
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = add nsw i32 %47, %51
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %26, %21
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %5, align 4
  %67 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %68 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %63, %60, %57
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 14593470
  br i1 %73, label %74, label %114

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 15663104
  br i1 %76, label %77, label %114

77:                                               ; preds = %74
  %78 = call i32 @wl1271_warning(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %8, align 8
  %80 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @strcmp(i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = call i32 @wl1271_warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %91

88:                                               ; preds = %77
  %89 = call i32 @wl1271_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %90 = call i32 @wl1271_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %86
  %92 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %93 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %98 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = call i32 @wl1271_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @WLCORE_TI_OUI_ADDRESS, align 4
  store i32 %103, i32* %5, align 4
  %104 = call i32 (...) @get_random_int()
  store i32 %104, i32* %6, align 4
  br label %113

105:                                              ; preds = %96, %91
  %106 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %107 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %5, align 4
  %109 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %110 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %105, %101
  br label %114

114:                                              ; preds = %113, %74, %71
  %115 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @wl12xx_derive_mac_addresses(%struct.wl1271* %115, i32 %116, i32 %117)
  %119 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ieee80211_register_hw(i32 %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %134

128:                                              ; preds = %114
  %129 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %130 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %132 = call i32 @wl1271_debugfs_init(%struct.wl1271* %131)
  %133 = call i32 @wl1271_notice(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %20
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.wlcore_platdev_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @get_random_int(...) #1

declare dso_local i32 @wl12xx_derive_mac_addresses(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @ieee80211_register_hw(i32) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @wl1271_debugfs_init(%struct.wl1271*) #1

declare dso_local i32 @wl1271_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
