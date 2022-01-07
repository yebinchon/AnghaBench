; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_rtl88eu_phy_rf6052_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_rtl88eu_phy_rf6052_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32* }

@RF_PATH_A = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@bRFRegOffsetMask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl88eu_phy_rf6052_set_bandwidth(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hal_data_8188e*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  store %struct.hal_data_8188e* %8, %struct.hal_data_8188e** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %58 [
    i32 129, label %10
    i32 128, label %35
  ]

10:                                               ; preds = %2
  %11 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %12 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -3073
  %17 = call i32 @BIT(i32 10)
  %18 = or i32 %16, %17
  %19 = call i32 @BIT(i32 11)
  %20 = or i32 %18, %19
  %21 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %22 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = load i32, i32* @RF_PATH_A, align 4
  %27 = load i32, i32* @RF_CHNLBW, align 4
  %28 = load i32, i32* @bRFRegOffsetMask, align 4
  %29 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %30 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @phy_set_rf_reg(%struct.adapter* %25, i32 %26, i32 %27, i32 %28, i32 %33)
  br label %59

35:                                               ; preds = %2
  %36 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %37 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -3073
  %42 = call i32 @BIT(i32 10)
  %43 = or i32 %41, %42
  %44 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %45 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = load i32, i32* @RF_PATH_A, align 4
  %50 = load i32, i32* @RF_CHNLBW, align 4
  %51 = load i32, i32* @bRFRegOffsetMask, align 4
  %52 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %5, align 8
  %53 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @phy_set_rf_reg(%struct.adapter* %48, i32 %49, i32 %50, i32 %51, i32 %56)
  br label %59

58:                                               ; preds = %2
  br label %59

59:                                               ; preds = %58, %35, %10
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_set_rf_reg(%struct.adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
