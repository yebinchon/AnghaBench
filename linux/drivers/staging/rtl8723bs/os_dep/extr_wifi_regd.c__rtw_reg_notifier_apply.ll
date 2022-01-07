; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_wifi_regd.c__rtw_reg_notifier_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_wifi_regd.c__rtw_reg_notifier_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32 }
%struct.rtw_regulatory = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.regulatory_request*, %struct.rtw_regulatory*)* @_rtw_reg_notifier_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtw_reg_notifier_apply(%struct.wiphy* %0, %struct.regulatory_request* %1, %struct.rtw_regulatory* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.rtw_regulatory*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  store %struct.rtw_regulatory* %2, %struct.rtw_regulatory** %6, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %8 = call i32 @_rtw_reg_apply_flags(%struct.wiphy* %7)
  ret i32 0
}

declare dso_local i32 @_rtw_reg_apply_flags(%struct.wiphy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
