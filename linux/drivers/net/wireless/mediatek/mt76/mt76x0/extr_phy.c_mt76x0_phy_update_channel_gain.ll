; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_update_channel_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_update_channel_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64*, i64* }

@MT_RX_STAT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x0_phy_update_channel_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_phy_update_channel_gain(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 1
  %8 = call i32 @mt76_get_min_avg_rssi(i32* %7)
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 -75, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %23 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %27 = call i32 @mt76x02_get_rssi_gain_thresh(%struct.mt76x02_dev* %26)
  %28 = icmp sgt i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %35 = call i32 @mt76x02_get_low_rssi_gain_thresh(%struct.mt76x02_dev* %34)
  %36 = icmp sgt i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = add nsw i32 %29, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %21
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 2
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 2
  %52 = xor i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %44, %21
  %55 = phi i1 [ true, %21 ], [ %53, %44 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %59 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %65 = call i64 @mt76x02_phy_adjust_vga_gain(%struct.mt76x02_dev* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %69 = call i32 @mt76x0_phy_set_gain_val(%struct.mt76x02_dev* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %102

71:                                               ; preds = %54
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 10
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %77 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 10, i32 0
  store i32 %82, i32* %4, align 4
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %84 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %88, %90
  %92 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %93 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 %91, i64* %96, align 8
  %97 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %98 = call i32 @mt76x0_phy_set_gain_val(%struct.mt76x02_dev* %97)
  %99 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %100 = load i32, i32* @MT_RX_STAT_1, align 4
  %101 = call i32 @mt76_rr(%struct.mt76x02_dev* %99, i32 %100)
  br label %102

102:                                              ; preds = %71, %70
  ret void
}

declare dso_local i32 @mt76_get_min_avg_rssi(i32*) #1

declare dso_local i32 @mt76x02_get_rssi_gain_thresh(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_get_low_rssi_gain_thresh(%struct.mt76x02_dev*) #1

declare dso_local i64 @mt76x02_phy_adjust_vga_gain(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x0_phy_set_gain_val(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
