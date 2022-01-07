; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_init_wiphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_init_wiphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_regulatory = type { i32 }
%struct.wiphy = type { void (%struct.wiphy*, %struct.regulatory_request*)*, i32 }
%struct.regulatory_request = type opaque
%struct.regulatory_request.0 = type opaque

@REGULATORY_CUSTOM_REG = common dso_local global i32 0, align 4
@REGULATORY_STRICT_REG = common dso_local global i32 0, align 4
@REGULATORY_DISABLE_BEACON_HINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_regulatory*, %struct.wiphy*, void (%struct.wiphy*, %struct.regulatory_request.0*)*)* @rtw_regd_init_wiphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_regd_init_wiphy(%struct.rtw_regulatory* %0, %struct.wiphy* %1, void (%struct.wiphy*, %struct.regulatory_request.0*)* %2) #0 {
  %4 = alloca %struct.rtw_regulatory*, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca void (%struct.wiphy*, %struct.regulatory_request.0*)*, align 8
  store %struct.rtw_regulatory* %0, %struct.rtw_regulatory** %4, align 8
  store %struct.wiphy* %1, %struct.wiphy** %5, align 8
  store void (%struct.wiphy*, %struct.regulatory_request.0*)* %2, void (%struct.wiphy*, %struct.regulatory_request.0*)** %6, align 8
  %7 = load void (%struct.wiphy*, %struct.regulatory_request.0*)*, void (%struct.wiphy*, %struct.regulatory_request.0*)** %6, align 8
  %8 = bitcast void (%struct.wiphy*, %struct.regulatory_request.0*)* %7 to void (%struct.wiphy*, %struct.regulatory_request*)*
  %9 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %10 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %9, i32 0, i32 0
  store void (%struct.wiphy*, %struct.regulatory_request*)* %8, void (%struct.wiphy*, %struct.regulatory_request*)** %10, align 8
  %11 = load i32, i32* @REGULATORY_CUSTOM_REG, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %14 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @REGULATORY_STRICT_REG, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %20 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @REGULATORY_DISABLE_BEACON_HINTS, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %26 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %30 = call i32 @rtw_regd_apply_hw_cap_flags(%struct.wiphy* %29)
  ret i32 0
}

declare dso_local i32 @rtw_regd_apply_hw_cap_flags(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
