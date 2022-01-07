; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_acquire_macid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_acquire_macid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RTW_MAX_MAC_ID_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtw_dev*)* @rtw_acquire_macid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtw_acquire_macid(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i64, i64* @RTW_MAX_MAC_ID_NUM, align 8
  %8 = call i64 @find_first_zero_bit(i32 %6, i64 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @RTW_MAX_MAC_ID_NUM, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @set_bit(i64 %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i64, i64* %3, align 8
  ret i64 %19
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
