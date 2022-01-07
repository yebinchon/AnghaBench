; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c__rtl_reg_notifier_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_regd.c__rtl_reg_notifier_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32 }
%struct.rtl_regulatory = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.regulatory_request*, %struct.rtl_regulatory*)* @_rtl_reg_notifier_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_reg_notifier_apply(%struct.wiphy* %0, %struct.regulatory_request* %1, %struct.rtl_regulatory* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.rtl_regulatory*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  store %struct.rtl_regulatory* %2, %struct.rtl_regulatory** %6, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %8 = call i32 @_rtl_reg_apply_radar_flags(%struct.wiphy* %7)
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %10 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 129, label %12
    i32 131, label %12
    i32 128, label %12
    i32 130, label %13
  ]

12:                                               ; preds = %3, %3, %3
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %15 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %16 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rtl_regulatory*, %struct.rtl_regulatory** %6, align 8
  %19 = call i32 @_rtl_reg_apply_world_flags(%struct.wiphy* %14, i32 %17, %struct.rtl_regulatory* %18)
  br label %20

20:                                               ; preds = %3, %13, %12
  ret i32 0
}

declare dso_local i32 @_rtl_reg_apply_radar_flags(%struct.wiphy*) #1

declare dso_local i32 @_rtl_reg_apply_world_flags(%struct.wiphy*, i32, %struct.rtl_regulatory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
