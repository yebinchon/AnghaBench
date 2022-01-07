; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_set_mac_and_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_set_mac_and_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_mac = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_mac*)* @set_mac_and_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mac_and_bssid(%struct.zd_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_mac*, align 8
  %4 = alloca i32, align 4
  store %struct.zd_mac* %0, %struct.zd_mac** %3, align 8
  %5 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %6 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %12 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %11, i32 0, i32 2
  %13 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %14 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @zd_write_mac_addr(i32* %12, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %10
  %24 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %25 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %31 = call i32 @set_rx_filter(%struct.zd_mac* %30)
  store i32 %31, i32* %2, align 4
  br label %41

32:                                               ; preds = %23
  %33 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %34 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %33, i32 0, i32 2
  %35 = load %struct.zd_mac*, %struct.zd_mac** %3, align 8
  %36 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @zd_write_bssid(i32* %34, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %32, %29, %21, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @zd_write_mac_addr(i32*, i32) #1

declare dso_local i32 @set_rx_filter(%struct.zd_mac*) #1

declare dso_local i32 @zd_write_bssid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
