; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_del_virtual_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_del_virtual_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i64, i32 }
%struct.wilc = type { i32, i32, %struct.wilc_vif** }
%struct.wilc_vif = type { i32, i32, i64, i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_GO = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*)* @del_virtual_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_virtual_intf(%struct.wiphy* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca %struct.wilc_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %4, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = call %struct.wilc* @wiphy_priv(%struct.wiphy* %8)
  store %struct.wilc* %9, %struct.wilc** %5, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %11 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_IFTYPE_P2P_GO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %2
  %22 = load %struct.wilc*, %struct.wilc** %5, align 8
  %23 = call i32 @wilc_wfi_deinit_mon_interface(%struct.wilc* %22, i32 1)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.wilc_vif* @netdev_priv(i32 %27)
  store %struct.wilc_vif* %28, %struct.wilc_vif** %6, align 8
  %29 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @cfg80211_stop_iface(%struct.wiphy* %29, %struct.wireless_dev* %30, i32 %31)
  %33 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %34 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @unregister_netdevice(i32 %35)
  %37 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %38 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.wilc*, %struct.wilc** %5, align 8
  %40 = getelementptr inbounds %struct.wilc, %struct.wilc* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %43 = call i32 @wilc_set_operation_mode(%struct.wilc_vif* %42, i32 0, i32 0, i32 0)
  %44 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %45 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %97, %24
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.wilc*, %struct.wilc** %5, align 8
  %50 = getelementptr inbounds %struct.wilc, %struct.wilc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.wilc*, %struct.wilc** %5, align 8
  %57 = getelementptr inbounds %struct.wilc, %struct.wilc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.wilc*, %struct.wilc** %5, align 8
  %62 = getelementptr inbounds %struct.wilc, %struct.wilc* %61, i32 0, i32 2
  %63 = load %struct.wilc_vif**, %struct.wilc_vif*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.wilc_vif*, %struct.wilc_vif** %63, i64 %65
  store %struct.wilc_vif* null, %struct.wilc_vif** %66, align 8
  br label %96

67:                                               ; preds = %53
  %68 = load %struct.wilc*, %struct.wilc** %5, align 8
  %69 = getelementptr inbounds %struct.wilc, %struct.wilc* %68, i32 0, i32 2
  %70 = load %struct.wilc_vif**, %struct.wilc_vif*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.wilc_vif*, %struct.wilc_vif** %70, i64 %73
  %75 = load %struct.wilc_vif*, %struct.wilc_vif** %74, align 8
  store %struct.wilc_vif* %75, %struct.wilc_vif** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %78 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %80 = load %struct.wilc*, %struct.wilc** %5, align 8
  %81 = getelementptr inbounds %struct.wilc, %struct.wilc* %80, i32 0, i32 2
  %82 = load %struct.wilc_vif**, %struct.wilc_vif*** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.wilc_vif*, %struct.wilc_vif** %82, i64 %84
  store %struct.wilc_vif* %79, %struct.wilc_vif** %85, align 8
  %86 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %87 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %88 = call i32 @wilc_get_vif_idx(%struct.wilc_vif* %87)
  %89 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %90 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wilc_vif*, %struct.wilc_vif** %6, align 8
  %93 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @wilc_set_operation_mode(%struct.wilc_vif* %86, i32 %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %67, %60
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %47

100:                                              ; preds = %47
  %101 = load %struct.wilc*, %struct.wilc** %5, align 8
  %102 = getelementptr inbounds %struct.wilc, %struct.wilc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.wilc*, %struct.wilc** %5, align 8
  %106 = getelementptr inbounds %struct.wilc, %struct.wilc* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  ret i32 0
}

declare dso_local %struct.wilc* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @wilc_wfi_deinit_mon_interface(%struct.wilc*, i32) #1

declare dso_local %struct.wilc_vif* @netdev_priv(i32) #1

declare dso_local i32 @cfg80211_stop_iface(%struct.wiphy*, %struct.wireless_dev*, i32) #1

declare dso_local i32 @unregister_netdevice(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wilc_set_operation_mode(%struct.wilc_vif*, i32, i32, i32) #1

declare dso_local i32 @wilc_get_vif_idx(%struct.wilc_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
