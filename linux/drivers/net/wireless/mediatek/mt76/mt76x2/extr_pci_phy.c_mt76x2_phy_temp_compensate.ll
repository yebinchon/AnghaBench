; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_phy.c_mt76x2_phy_temp_compensate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_phy.c_mt76x2_phy_temp_compensate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x2_temp_comp = type { i32, i32, i32, i32, i64 }

@MT_TEMP_SENSOR = common dso_local global i32 0, align 4
@MT_TEMP_SENSOR_VAL = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_1 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_1_TEMP_COMP = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_2 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_2_TEMP_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x2_phy_temp_compensate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2_phy_temp_compensate(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.mt76x2_temp_comp, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %7 = call i64 @mt76x2_get_temp_comp(%struct.mt76x02_dev* %6, %struct.mt76x2_temp_comp* %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %12 = load i32, i32* @MT_TEMP_SENSOR, align 4
  %13 = load i32, i32* @MT_TEMP_SENSOR_VAL, align 4
  %14 = call i32 @mt76_get_field(%struct.mt76x02_dev* %11, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %3, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %21, 1789
  %23 = sdiv i32 %22, 1000
  %24 = add nsw i32 %23, 25
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 25
  br i1 %30, label %31, label %37

31:                                               ; preds = %10
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 25
  %34 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %33, %35
  store i32 %36, i32* %5, align 4
  br label %43

37:                                               ; preds = %10
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 25, %38
  %40 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %3, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %39, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %3, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @min(i32 %44, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = getelementptr inbounds %struct.mt76x2_temp_comp, %struct.mt76x2_temp_comp* %3, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @max(i32 %48, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %53 = load i32, i32* @MT_TX_ALC_CFG_1, align 4
  %54 = load i32, i32* @MT_TX_ALC_CFG_1_TEMP_COMP, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 2
  %57 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %52, i32 %53, i32 %54, i32 %56)
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %59 = load i32, i32* @MT_TX_ALC_CFG_2, align 4
  %60 = load i32, i32* @MT_TX_ALC_CFG_2_TEMP_COMP, align 4
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 2
  %63 = call i32 @mt76_rmw_field(%struct.mt76x02_dev* %58, i32 %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %43, %9
  ret void
}

declare dso_local i64 @mt76x2_get_temp_comp(%struct.mt76x02_dev*, %struct.mt76x2_temp_comp*) #1

declare dso_local i32 @mt76_get_field(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt76x02_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
