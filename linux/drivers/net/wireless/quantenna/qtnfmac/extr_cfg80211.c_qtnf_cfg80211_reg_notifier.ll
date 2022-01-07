; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_cfg80211_reg_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_cfg80211_reg_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32* }
%struct.regulatory_request = type { i32*, i32 }
%struct.qtnf_wmac = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"MAC%u: initiator=%d alpha=%c%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"MAC%u: failed to update region to %c%c: %d\0A\00", align 1
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"MAC%u: failed to update band %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @qtnf_cfg80211_reg_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_cfg80211_reg_notifier(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.qtnf_wmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %9 = call %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy* %8)
  store %struct.qtnf_wmac* %9, %struct.qtnf_wmac** %5, align 8
  %10 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %11 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %14 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %17 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %22 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %20, i32 %25)
  %27 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %28 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %29 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %30 = call i32 @qtnf_mac_slave_radar_get(%struct.wiphy* %29)
  %31 = call i32 @qtnf_cmd_reg_notify(%struct.qtnf_wmac* %27, %struct.regulatory_request* %28, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %2
  %35 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %36 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %39 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %44 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %42, i32 %47, i32 %48)
  br label %87

50:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %84, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %57 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %84

65:                                               ; preds = %55
  %66 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %67 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %68 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @qtnf_cmd_band_info_get(%struct.qtnf_wmac* %66, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %65
  %78 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %5, align 8
  %79 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %65
  br label %84

84:                                               ; preds = %83, %64
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %51

87:                                               ; preds = %34, %51
  ret void
}

declare dso_local %struct.qtnf_wmac* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_cmd_reg_notify(%struct.qtnf_wmac*, %struct.regulatory_request*, i32) #1

declare dso_local i32 @qtnf_mac_slave_radar_get(%struct.wiphy*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @qtnf_cmd_band_info_get(%struct.qtnf_wmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
