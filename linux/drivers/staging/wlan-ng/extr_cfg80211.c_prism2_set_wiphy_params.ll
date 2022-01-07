; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_set_wiphy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_set_wiphy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32, i32 }
%struct.prism2_wiphy_private = type { %struct.wlandevice* }
%struct.wlandevice = type { i32 }

@WIPHY_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@DIDMIB_DOT11MAC_OPERATIONTABLE_RTSTHRESHOLD = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@WIPHY_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@DIDMIB_DOT11MAC_OPERATIONTABLE_FRAGMENTATIONTHRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, i32)* @prism2_set_wiphy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_set_wiphy_params(%struct.wiphy* %0, i32 %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.prism2_wiphy_private*, align 8
  %6 = alloca %struct.wlandevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %11 = call %struct.prism2_wiphy_private* @wiphy_priv(%struct.wiphy* %10)
  store %struct.prism2_wiphy_private* %11, %struct.prism2_wiphy_private** %5, align 8
  %12 = load %struct.prism2_wiphy_private*, %struct.prism2_wiphy_private** %5, align 8
  %13 = getelementptr inbounds %struct.prism2_wiphy_private, %struct.prism2_wiphy_private* %12, i32 0, i32 0
  %14 = load %struct.wlandevice*, %struct.wlandevice** %13, align 8
  store %struct.wlandevice* %14, %struct.wlandevice** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @WIPHY_PARAM_RTS_THRESHOLD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %21 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 2347, i32* %7, align 4
  br label %29

25:                                               ; preds = %19
  %26 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %27 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %31 = load i32, i32* @DIDMIB_DOT11MAC_OPERATIONTABLE_RTSTHRESHOLD, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %67

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @WIPHY_PARAM_FRAG_THRESHOLD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %47 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 2346, i32* %7, align 4
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %53 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.wlandevice*, %struct.wlandevice** %6, align 8
  %57 = load i32, i32* @DIDMIB_DOT11MAC_OPERATIONTABLE_FRAGMENTATIONTHRESHOLD, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @prism2_domibset_uint32(%struct.wlandevice* %56, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EFAULT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %67

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %62, %36
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local %struct.prism2_wiphy_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @prism2_domibset_uint32(%struct.wlandevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
