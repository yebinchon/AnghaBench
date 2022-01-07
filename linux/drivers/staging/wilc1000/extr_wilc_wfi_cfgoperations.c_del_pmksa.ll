; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_del_pmksa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_del_pmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_pmksa = type { i32 }
%struct.wilc_vif = type { %struct.wilc_priv }
%struct.wilc_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_PMKID_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_pmksa*)* @del_pmksa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_pmksa(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_pmksa* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_pmksa*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wilc_vif*, align 8
  %10 = alloca %struct.wilc_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_pmksa* %2, %struct.cfg80211_pmksa** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %11)
  store %struct.wilc_vif* %12, %struct.wilc_vif** %9, align 8
  %13 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %14 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %13, i32 0, i32 0
  store %struct.wilc_priv* %14, %struct.wilc_priv** %10, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %46, %3
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %18 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = load %struct.cfg80211_pmksa*, %struct.cfg80211_pmksa** %6, align 8
  %24 = getelementptr inbounds %struct.cfg80211_pmksa, %struct.cfg80211_pmksa* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %27 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i32 @memcmp(i32 %25, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %22
  %38 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %39 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = call i32 @memset(%struct.TYPE_4__* %43, i32 0, i32 4)
  br label %49

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %15

49:                                               ; preds = %37, %15
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %52 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %49
  %57 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %58 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %119

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %110, %62
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %66 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub i64 %68, 1
  %70 = icmp ult i64 %64, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %63
  %72 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %73 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %81 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ETH_ALEN, align 4
  %90 = call i32 @memcpy(i32 %79, i32 %88, i32 %89)
  %91 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %92 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %100 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @WLAN_PMKID_LEN, align 4
  %109 = call i32 @memcpy(i32 %98, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %71
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %7, align 8
  br label %63

113:                                              ; preds = %63
  %114 = load %struct.wilc_priv*, %struct.wilc_priv** %10, align 8
  %115 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %116, align 8
  br label %122

119:                                              ; preds = %56, %49
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %119, %113
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
