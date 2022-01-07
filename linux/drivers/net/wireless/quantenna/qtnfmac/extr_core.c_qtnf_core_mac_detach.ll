; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_mac_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_core_mac_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { %struct.qtnf_wmac** }
%struct.qtnf_wmac = type { %struct.TYPE_6__*, %struct.TYPE_4__, i64, %struct.qtnf_vif* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.qtnf_vif = type { i32, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.wiphy = type { %struct.TYPE_6__** }

@QTNF_MAX_INTF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_bus*, i32)* @qtnf_core_mac_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_core_mac_detach(%struct.qtnf_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.qtnf_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qtnf_wmac*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %11 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %10, i32 0, i32 0
  %12 = load %struct.qtnf_wmac**, %struct.qtnf_wmac*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, i64 %14
  %16 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %15, align 8
  store %struct.qtnf_wmac* %16, %struct.qtnf_wmac** %5, align 8
  %17 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %18 = icmp ne %struct.qtnf_wmac* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %151

20:                                               ; preds = %2
  %21 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %22 = call %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac* %21)
  store %struct.wiphy* %22, %struct.wiphy** %6, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %64, %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @QTNF_MAX_INTF, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %29 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %28, i32 0, i32 3
  %30 = load %struct.qtnf_vif*, %struct.qtnf_vif** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %30, i64 %32
  store %struct.qtnf_vif* %33, %struct.qtnf_vif** %7, align 8
  %34 = call i32 (...) @rtnl_lock()
  %35 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %36 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %27
  %40 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %41 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %48 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @qtnf_virtual_intf_cleanup(i64 %49)
  %51 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %52 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %53 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %52, i32 0, i32 2
  %54 = call i32 @qtnf_del_virtual_intf(%struct.wiphy* %51, %struct.TYPE_5__* %53)
  br label %55

55:                                               ; preds = %46, %39, %27
  %56 = call i32 (...) @rtnl_unlock()
  %57 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %58 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %57, i32 0, i32 1
  %59 = call i32 @qtnf_sta_list_free(i32* %58)
  %60 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %61 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @free_percpu(i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %23

67:                                               ; preds = %23
  %68 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %69 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %74 = call i32 @wiphy_unregister(%struct.wiphy* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %124, %75
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %127

81:                                               ; preds = %77
  %82 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %83 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i64 %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = icmp ne %struct.TYPE_6__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %124

91:                                               ; preds = %81
  %92 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %93 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %94, i64 %96
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @kfree(%struct.TYPE_6__* %100)
  %102 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %103 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %104, i64 %106
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %111 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = call i32 @kfree(%struct.TYPE_6__* %116)
  %118 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %119 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %120, i64 %122
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %123, align 8
  br label %124

124:                                              ; preds = %91, %90
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %77

127:                                              ; preds = %77
  %128 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %129 = call i32 @qtnf_mac_iface_comb_free(%struct.qtnf_wmac* %128)
  %130 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %131 = call i32 @qtnf_mac_ext_caps_free(%struct.qtnf_wmac* %130)
  %132 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %133 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = call i32 @kfree(%struct.TYPE_6__* %135)
  %137 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %138 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = call i32 @kfree(%struct.TYPE_6__* %139)
  %141 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %142 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %141, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %142, align 8
  %143 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %144 = call i32 @wiphy_free(%struct.wiphy* %143)
  %145 = load %struct.qtnf_bus*, %struct.qtnf_bus** %3, align 8
  %146 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %145, i32 0, i32 0
  %147 = load %struct.qtnf_wmac**, %struct.qtnf_wmac*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.qtnf_wmac*, %struct.qtnf_wmac** %147, i64 %149
  store %struct.qtnf_wmac* null, %struct.qtnf_wmac** %150, align 8
  br label %151

151:                                              ; preds = %127, %19
  ret void
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @qtnf_virtual_intf_cleanup(i64) #1

declare dso_local i32 @qtnf_del_virtual_intf(%struct.wiphy*, %struct.TYPE_5__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @qtnf_sta_list_free(i32*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @wiphy_unregister(%struct.wiphy*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @qtnf_mac_iface_comb_free(%struct.qtnf_wmac*) #1

declare dso_local i32 @qtnf_mac_ext_caps_free(%struct.qtnf_wmac*) #1

declare dso_local i32 @wiphy_free(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
