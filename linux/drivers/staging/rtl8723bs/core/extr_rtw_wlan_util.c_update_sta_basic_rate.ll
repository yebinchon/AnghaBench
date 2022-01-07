; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_sta_basic_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_sta_basic_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32 }

@rtw_basic_rate_cck = common dso_local global i32 0, align 4
@rtw_basic_rate_ofdm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_sta_basic_rate(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @IsSupportedTxCCK(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @rtw_basic_rate_cck, align 4
  %13 = call i32 @memcpy(i32 %11, i32 %12, i32 4)
  %14 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 0
  store i32 4, i32* %15, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @rtw_basic_rate_ofdm, align 4
  %21 = call i32 @memcpy(i32 %19, i32 %20, i32 3)
  %22 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  store i32 3, i32* %23, align 4
  br label %24

24:                                               ; preds = %16, %8
  ret void
}

declare dso_local i64 @IsSupportedTxCCK(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
