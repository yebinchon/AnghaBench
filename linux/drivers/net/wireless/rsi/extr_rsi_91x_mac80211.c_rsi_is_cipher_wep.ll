; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_is_cipher_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_is_cipher_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_common = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsi_is_cipher_wep(%struct.rsi_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsi_common*, align 8
  store %struct.rsi_common* %0, %struct.rsi_common** %3, align 8
  %4 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %5 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %12 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %10, %1
  %18 = load %struct.rsi_common*, %struct.rsi_common** %3, align 8
  %19 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %17, %10
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
