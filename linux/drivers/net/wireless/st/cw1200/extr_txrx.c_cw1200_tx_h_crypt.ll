; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.cw1200_txinfo = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }

@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.cw1200_txinfo*)* @cw1200_tx_h_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_tx_h_crypt(%struct.cw1200_common* %0, %struct.cw1200_txinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.cw1200_txinfo*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.cw1200_txinfo* %1, %struct.cw1200_txinfo** %5, align 8
  %6 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %7 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %15 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee80211_has_protected(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %65

22:                                               ; preds = %13
  %23 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %24 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %32 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 8
  %37 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %38 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %41 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @skb_put(i32 %39, i32 %47)
  %49 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %50 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %22
  %60 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %5, align 8
  %61 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @skb_put(i32 %62, i32 8)
  br label %64

64:                                               ; preds = %59, %22
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i32 @skb_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
