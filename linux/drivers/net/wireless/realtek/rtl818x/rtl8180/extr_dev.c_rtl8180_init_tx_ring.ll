; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, %struct.rtl8180_tx_desc* }
%struct.rtl8180_tx_desc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Cannot allocate TX ring (prio = %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @rtl8180_init_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8180_init_tx_ring(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl8180_priv*, align 8
  %9 = alloca %struct.rtl8180_tx_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %13, align 8
  store %struct.rtl8180_priv* %14, %struct.rtl8180_priv** %8, align 8
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %16 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call %struct.rtl8180_tx_desc* @pci_zalloc_consistent(i32 %17, i32 %21, i64* %10)
  store %struct.rtl8180_tx_desc* %22, %struct.rtl8180_tx_desc** %9, align 8
  %23 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %24 = icmp ne %struct.rtl8180_tx_desc* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %27 = ptrtoint %struct.rtl8180_tx_desc* %26 to i64
  %28 = and i64 %27, 255
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25, %3
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @wiphy_err(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %101

38:                                               ; preds = %25
  %39 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %40 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %41 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store %struct.rtl8180_tx_desc* %39, %struct.rtl8180_tx_desc** %46, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %49 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i64 %47, i64* %54, align 8
  %55 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %56 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %64 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 8
  %70 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  %71 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @skb_queue_head_init(i32* %76)
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %97, %38
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = load i32, i32* %7, align 4
  %87 = urem i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = add i64 %83, %89
  %91 = call i32 @cpu_to_le32(i64 %90)
  %92 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %92, i64 %94
  %96 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 4
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %78

100:                                              ; preds = %78
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %30
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.rtl8180_tx_desc* @pci_zalloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
