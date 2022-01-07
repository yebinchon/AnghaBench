; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_notifier_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_notifier_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i64, i32 }

@NL80211_REGDOM_SET_BY_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, %struct.wiphy*, %struct.regulatory_request*)* @rtw_regd_notifier_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_regd_notifier_apply(%struct.rtw_dev* %0, %struct.wiphy* %1, %struct.regulatory_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.regulatory_request*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store %struct.wiphy* %1, %struct.wiphy** %6, align 8
  store %struct.regulatory_request* %2, %struct.regulatory_request** %7, align 8
  %8 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %9 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NL80211_REGDOM_SET_BY_USER, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

14:                                               ; preds = %3
  %15 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %16 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @rtw_regd_find_reg_by_name(i32 %17)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %20 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %22 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %23 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @rtw_regd_apply_world_flags(%struct.wiphy* %21, i64 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @rtw_regd_find_reg_by_name(i32) #1

declare dso_local i32 @rtw_regd_apply_world_flags(%struct.wiphy*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
