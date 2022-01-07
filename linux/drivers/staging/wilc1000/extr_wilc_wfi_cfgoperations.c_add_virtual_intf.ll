; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_add_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_add_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.wiphy = type { i32 }
%struct.vif_params = type { i32 }
%struct.wilc = type { i64, i32, %struct.wilc_vif** }
%struct.wilc_vif = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.wireless_dev }
%struct.net_device = type { i32 }

@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@WILC_AP_MODE = common dso_local global i32 0, align 4
@WILC_GO_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WILC_NUM_CONCURRENT_IFC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Reached maximum number of interface\0A\00", align 1
@WILC_STATION_MODE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wireless_dev* (%struct.wiphy*, i8*, i8, i32, %struct.vif_params*)* @add_virtual_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wireless_dev* @add_virtual_intf(%struct.wiphy* %0, i8* %1, i8 zeroext %2, i32 %3, %struct.vif_params* %4) #0 {
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.wilc*, align 8
  %13 = alloca %struct.wilc_vif*, align 8
  %14 = alloca %struct.wireless_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %20 = call %struct.wilc* @wiphy_priv(%struct.wiphy* %19)
  store %struct.wilc* %20, %struct.wilc** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %5
  %25 = load %struct.wilc*, %struct.wilc** %12, align 8
  %26 = load i32, i32* @WILC_AP_MODE, align 4
  %27 = call i32 @wilc_get_vif_from_type(%struct.wilc* %25, i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.wilc*, %struct.wilc** %12, align 8
  %32 = load i32, i32* @WILC_GO_MODE, align 4
  %33 = call i32 @wilc_get_vif_from_type(%struct.wilc* %31, i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %73

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.wilc*, %struct.wilc** %12, align 8
  %40 = getelementptr inbounds %struct.wilc, %struct.wilc* %39, i32 0, i32 2
  %41 = load %struct.wilc_vif**, %struct.wilc_vif*** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.wilc_vif*, %struct.wilc_vif** %41, i64 %43
  %45 = load %struct.wilc_vif*, %struct.wilc_vif** %44, align 8
  store %struct.wilc_vif* %45, %struct.wilc_vif** %13, align 8
  %46 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %47 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %73

51:                                               ; preds = %38
  %52 = load %struct.wilc*, %struct.wilc** %12, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %55 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.net_device* @wilc_wfi_init_mon_interface(%struct.wilc* %52, i8* %53, i32 %56)
  store %struct.net_device* %57, %struct.net_device** %17, align 8
  %58 = load %struct.net_device*, %struct.net_device** %17, align 8
  %59 = icmp ne %struct.net_device* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %62 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %67

63:                                               ; preds = %51
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.wireless_dev* @ERR_PTR(i32 %65)
  store %struct.wireless_dev* %66, %struct.wireless_dev** %6, align 8
  br label %120

67:                                               ; preds = %60
  %68 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %69 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store %struct.wireless_dev* %70, %struct.wireless_dev** %14, align 8
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  store %struct.wireless_dev* %71, %struct.wireless_dev** %6, align 8
  br label %120

72:                                               ; preds = %5
  br label %73

73:                                               ; preds = %72, %50, %36
  %74 = load %struct.wilc*, %struct.wilc** %12, align 8
  %75 = getelementptr inbounds %struct.wilc, %struct.wilc* %74, i32 0, i32 1
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.wilc*, %struct.wilc** %12, align 8
  %78 = getelementptr inbounds %struct.wilc, %struct.wilc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @WILC_NUM_CONCURRENT_IFC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %16, align 4
  br label %114

86:                                               ; preds = %73
  %87 = load i32, i32* %10, align 4
  switch i32 %87, label %92 [
    i32 128, label %88
    i32 129, label %90
  ]

88:                                               ; preds = %86
  %89 = load i32, i32* @WILC_STATION_MODE, align 4
  store i32 %89, i32* %15, align 4
  br label %95

90:                                               ; preds = %86
  %91 = load i32, i32* @WILC_AP_MODE, align 4
  store i32 %91, i32* %15, align 4
  br label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  br label %114

95:                                               ; preds = %90, %88
  %96 = load %struct.wilc*, %struct.wilc** %12, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call %struct.wilc_vif* @wilc_netdev_ifc_init(%struct.wilc* %96, i8* %97, i32 %98, i32 %99, i32 1)
  store %struct.wilc_vif* %100, %struct.wilc_vif** %13, align 8
  %101 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %102 = call i64 @IS_ERR(%struct.wilc_vif* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %106 = call i32 @PTR_ERR(%struct.wilc_vif* %105)
  store i32 %106, i32* %16, align 4
  br label %114

107:                                              ; preds = %95
  %108 = load %struct.wilc*, %struct.wilc** %12, align 8
  %109 = getelementptr inbounds %struct.wilc, %struct.wilc* %108, i32 0, i32 1
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %112 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store %struct.wireless_dev* %113, %struct.wireless_dev** %6, align 8
  br label %120

114:                                              ; preds = %104, %92, %82
  %115 = load %struct.wilc*, %struct.wilc** %12, align 8
  %116 = getelementptr inbounds %struct.wilc, %struct.wilc* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %16, align 4
  %119 = call %struct.wireless_dev* @ERR_PTR(i32 %118)
  store %struct.wireless_dev* %119, %struct.wireless_dev** %6, align 8
  br label %120

120:                                              ; preds = %114, %107, %67, %63
  %121 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  ret %struct.wireless_dev* %121
}

declare dso_local %struct.wilc* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @wilc_get_vif_from_type(%struct.wilc*, i32) #1

declare dso_local %struct.net_device* @wilc_wfi_init_mon_interface(%struct.wilc*, i8*, i32) #1

declare dso_local %struct.wireless_dev* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.wilc_vif* @wilc_netdev_ifc_init(%struct.wilc*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.wilc_vif*) #1

declare dso_local i32 @PTR_ERR(%struct.wilc_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
