; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_init_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_mac_init_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_wmac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wiphy = type { i32 }

@QLINK_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@QLINK_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@QLINK_BAND_60GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_60GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_wmac*)* @qtnf_mac_init_bands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_mac_init_bands(%struct.qtnf_wmac* %0) #0 {
  %2 = alloca %struct.qtnf_wmac*, align 8
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  store %struct.qtnf_wmac* %0, %struct.qtnf_wmac** %2, align 8
  %5 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %6 = call %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac* %5)
  store %struct.wiphy* %6, %struct.wiphy** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %8 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @QLINK_BAND_2GHZ, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %16 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %17 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %18 = call i32 @qtnf_mac_init_single_band(%struct.wiphy* %15, %struct.qtnf_wmac* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %54

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %25 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @QLINK_BAND_5GHZ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %33 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %34 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %35 = call i32 @qtnf_mac_init_single_band(%struct.wiphy* %32, %struct.qtnf_wmac* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %54

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %23
  %41 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %42 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @QLINK_BAND_60GHZ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %50 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %2, align 8
  %51 = load i32, i32* @NL80211_BAND_60GHZ, align 4
  %52 = call i32 @qtnf_mac_init_single_band(%struct.wiphy* %49, %struct.qtnf_wmac* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %40
  br label %54

54:                                               ; preds = %53, %38, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.wiphy* @priv_to_wiphy(%struct.qtnf_wmac*) #1

declare dso_local i32 @qtnf_mac_init_single_band(%struct.wiphy*, %struct.qtnf_wmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
