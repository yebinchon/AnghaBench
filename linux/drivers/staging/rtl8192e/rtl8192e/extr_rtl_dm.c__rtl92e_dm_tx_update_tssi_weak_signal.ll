; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_tx_update_tssi_weak_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_dm.c__rtl92e_dm_tx_update_tssi_weak_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i32, i32 }

@RF_2T4R = common dso_local global i64 0, align 8
@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@dm_tx_bb_gain = common dso_local global i32* null, align 8
@rOFDM0_XCTxIQImbalance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @_rtl92e_dm_tx_update_tssi_weak_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_dm_tx_update_tssi_weak_signal(%struct.net_device* %0, i64 %1) #0 {
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
  br i1 %10, label %11, label %88

11:                                               ; preds = %2
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %11
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %16
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 4
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %37 = load i32, i32* @bMaskDWord, align 4
  %38 = load i32*, i32** @dm_tx_bb_gain, align 8
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %35, i32 %36, i32 %37, i32 %44)
  br label %46

46:                                               ; preds = %30, %21
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %52 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 4
  br i1 %54, label %55, label %71

55:                                               ; preds = %46
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load i32, i32* @rOFDM0_XCTxIQImbalance, align 4
  %62 = load i32, i32* @bMaskDWord, align 4
  %63 = load i32*, i32** @dm_tx_bb_gain, align 8
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %60, i32 %61, i32 %62, i32 %69)
  br label %71

71:                                               ; preds = %55, %46
  br label %87

72:                                               ; preds = %16, %11
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %75 = load i32, i32* @bMaskDWord, align 4
  %76 = load i32*, i32** @dm_tx_bb_gain, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %73, i32 %74, i32 %75, i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = load i32, i32* @rOFDM0_XCTxIQImbalance, align 4
  %82 = load i32, i32* @bMaskDWord, align 4
  %83 = load i32*, i32** @dm_tx_bb_gain, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %80, i32 %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %72, %71
  br label %128

88:                                               ; preds = %2
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %88
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %99 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 4
  br i1 %101, label %102, label %118

102:                                              ; preds = %93
  %103 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %104 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %109 = load i32, i32* @bMaskDWord, align 4
  %110 = load i32*, i32** @dm_tx_bb_gain, align 8
  %111 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %112 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %107, i32 %108, i32 %109, i32 %116)
  br label %118

118:                                              ; preds = %102, %93
  br label %127

119:                                              ; preds = %88
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %122 = load i32, i32* @bMaskDWord, align 4
  %123 = load i32*, i32** @dm_tx_bb_gain, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @rtl92e_set_bb_reg(%struct.net_device* %120, i32 %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %119, %118
  br label %128

128:                                              ; preds = %127, %87
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
