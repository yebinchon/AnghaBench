; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_wifi_regd.c_rtw_regd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_wifi_regd.c_rtw_regd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.regulatory_request = type opaque
%struct.regulatory_request.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_regd_init(%struct.adapter* %0, void (%struct.wiphy*, %struct.regulatory_request*)* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca void (%struct.wiphy*, %struct.regulatory_request*)*, align 8
  %5 = alloca %struct.wiphy*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store void (%struct.wiphy*, %struct.regulatory_request*)* %1, void (%struct.wiphy*, %struct.regulatory_request*)** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.wiphy*, %struct.wiphy** %9, align 8
  store %struct.wiphy* %10, %struct.wiphy** %5, align 8
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = load void (%struct.wiphy*, %struct.regulatory_request*)*, void (%struct.wiphy*, %struct.regulatory_request*)** %4, align 8
  %13 = bitcast void (%struct.wiphy*, %struct.regulatory_request*)* %12 to void (%struct.wiphy*, %struct.regulatory_request.0*)*
  %14 = call i32 @_rtw_regd_init_wiphy(i32* null, %struct.wiphy* %11, void (%struct.wiphy*, %struct.regulatory_request.0*)* %13)
  ret i32 0
}

declare dso_local i32 @_rtw_regd_init_wiphy(i32*, %struct.wiphy*, void (%struct.wiphy*, %struct.regulatory_request.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
