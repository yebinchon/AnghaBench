; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_tx_update_tssi_strong_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_tx_update_tssi_strong_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i64, i64 }

@RF_2T4R = common dso_local global i64 0, align 8
@TxBBGainTableLength = common dso_local global i32 0, align 4
@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@dm_tx_bb_gain = common dso_local global i32* null, align 8
@rOFDM0_XCTxIQImbalance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @_rtl92e_dm_tx_update_tssi_strong_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_tx_update_tssi_strong_signal(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @RF_2T4R, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %84

11:                                               ; preds = %2
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TxBBGainTableLength, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %11
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TxBBGainTableLength, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %18
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %36 = load i32, i32* @bMaskDWord, align 4
  %37 = load i32*, i32** @dm_tx_bb_gain, align 8
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %34, i32 %35, i32 %36, i32 %42)
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load i32, i32* @rOFDM0_XCTxIQImbalance, align 4
  %54 = load i32, i32* @bMaskDWord, align 4
  %55 = load i32*, i32** @dm_tx_bb_gain, align 8
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %52, i32 %53, i32 %54, i32 %60)
  br label %83

62:                                               ; preds = %18, %11
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %65 = load i32, i32* @bMaskDWord, align 4
  %66 = load i32*, i32** @dm_tx_bb_gain, align 8
  %67 = load i32, i32* @TxBBGainTableLength, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %63, i32 %64, i32 %65, i32 %71)
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = load i32, i32* @rOFDM0_XCTxIQImbalance, align 4
  %75 = load i32, i32* @bMaskDWord, align 4
  %76 = load i32*, i32** @dm_tx_bb_gain, align 8
  %77 = load i32, i32* @TxBBGainTableLength, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %73, i32 %74, i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %62, %25
  br label %122

84:                                               ; preds = %2
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TxBBGainTableLength, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %84
  %92 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %93 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %97 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %102 = load i32, i32* @bMaskDWord, align 4
  %103 = load i32*, i32** @dm_tx_bb_gain, align 8
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %100, i32 %101, i32 %102, i32 %108)
  br label %121

110:                                              ; preds = %84
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %113 = load i32, i32* @bMaskDWord, align 4
  %114 = load i32*, i32** @dm_tx_bb_gain, align 8
  %115 = load i32, i32* @TxBBGainTableLength, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %111, i32 %112, i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %110, %91
  br label %122

122:                                              ; preds = %121, %83
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_set_bb_reg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
