; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_get_target_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_get_target_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32* }

@MT_TX_ALC_CFG_0 = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_0_CH_INIT_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32, i32*, i32*, i32*)* @mt76x0_phy_get_target_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_phy_get_target_power(%struct.mt76x02_dev* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76x02_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %16 = load i32, i32* @MT_TX_ALC_CFG_0, align 4
  %17 = call i32 @mt76_rr(%struct.mt76x02_dev* %15, i32 %16)
  %18 = load i32, i32* @MT_TX_ALC_CFG_0_CH_INIT_0, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %112 [
    i32 0, label %21
    i32 1, label %49
    i32 4, label %85
  ]

21:                                               ; preds = %5
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 96
  %26 = ashr i32 %25, 5
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %140

32:                                               ; preds = %21
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %35 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %33, %42
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @mt76x0_phy_get_rf_pa_mode(%struct.mt76x02_dev* %45, i32 0, i32 %46)
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %139

49:                                               ; preds = %5
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 240
  %54 = ashr i32 %53, 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  switch i32 %55, label %64 [
    i32 11, label %56
    i32 15, label %57
    i32 10, label %58
    i32 14, label %59
    i32 9, label %60
    i32 13, label %61
    i32 8, label %62
    i32 12, label %63
  ]

56:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %67

57:                                               ; preds = %49
  store i32 1, i32* %14, align 4
  br label %67

58:                                               ; preds = %49
  store i32 2, i32* %14, align 4
  br label %67

59:                                               ; preds = %49
  store i32 3, i32* %14, align 4
  br label %67

60:                                               ; preds = %49
  store i32 4, i32* %14, align 4
  br label %67

61:                                               ; preds = %49
  store i32 5, i32* %14, align 4
  br label %67

62:                                               ; preds = %49
  store i32 6, i32* %14, align 4
  br label %67

63:                                               ; preds = %49
  store i32 7, i32* %14, align 4
  br label %67

64:                                               ; preds = %49
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %140

67:                                               ; preds = %63, %62, %61, %60, %59, %58, %57, %56
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %70 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %68, %77
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 4
  %83 = call i32 @mt76x0_phy_get_rf_pa_mode(%struct.mt76x02_dev* %80, i32 0, i32 %82)
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  br label %139

85:                                               ; preds = %5
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 15
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sgt i32 %90, 9
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %140

95:                                               ; preds = %85
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %98 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %96, %105
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @mt76x0_phy_get_rf_pa_mode(%struct.mt76x02_dev* %108, i32 1, i32 %109)
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  br label %139

112:                                              ; preds = %5
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 127
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp sgt i32 %117, 9
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %140

122:                                              ; preds = %112
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %125 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %123, %132
  %134 = load i32*, i32** %10, align 8
  store i32 %133, i32* %134, align 4
  %135 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @mt76x0_phy_get_rf_pa_mode(%struct.mt76x02_dev* %135, i32 1, i32 %136)
  %138 = load i32*, i32** %11, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %122, %95, %67, %32
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %119, %92, %64, %29
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x0_phy_get_rf_pa_mode(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
