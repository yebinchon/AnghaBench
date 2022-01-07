; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_wpa_set_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i32* }
%struct.ieee_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@MAX_WPA_IE_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, %struct.ieee_param*, i32)* @ieee80211_wpa_set_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_wpa_set_wpa_ie(%struct.ieee80211_device* %0, %struct.ieee_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_device*, align 8
  %6 = alloca %struct.ieee_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %5, align 8
  store %struct.ieee_param* %1, %struct.ieee_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %10 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_WPA_IE_LEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %77

19:                                               ; preds = %3
  %20 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %21 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %19
  %27 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %28 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %33 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kmemdup(i32 %31, i64 %36, i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %77

44:                                               ; preds = %26
  %45 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load %struct.ieee_param*, %struct.ieee_param** %6, align 8
  %53 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %68

59:                                               ; preds = %19
  %60 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @kfree(i32* %62)
  %64 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %44
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ieee80211_wpa_assoc_frame(%struct.ieee80211_device* %69, i32* %72, i64 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %68, %41, %16
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @kmemdup(i32, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ieee80211_wpa_assoc_frame(%struct.ieee80211_device*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
