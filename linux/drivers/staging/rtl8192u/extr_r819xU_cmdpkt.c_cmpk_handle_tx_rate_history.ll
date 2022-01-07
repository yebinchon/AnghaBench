; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_cmdpkt.c_cmpk_handle_tx_rate_history.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_cmdpkt.c_cmpk_handle_tx_rate_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_11__*, i32, i32)* }
%struct.net_device = type { i32 }
%struct.TYPE_10__ = type { i64**, i64*, i64* }
%struct.r8192_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32**, i32*, i32* }

@HW_VAR_RF_STATE = common dso_local global i32 0, align 4
@eRfOff = common dso_local global i64 0, align 8
@pAdapter = common dso_local global %struct.TYPE_11__* null, align 8
@rtState = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32*)* @cmpk_handle_tx_rate_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpk_handle_tx_rate_history(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.r8192_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 24, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %10, align 8
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sdiv i32 %18, 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 65535
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 16
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %21
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load i32*, i32** %4, align 8
  %47 = bitcast i32* %46 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = icmp eq %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %140

51:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %137, %51
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %140

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %65
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  br label %78

78:                                               ; preds = %58, %55
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 8
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %88
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  br label %101

101:                                              ; preds = %81, %78
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %133, %101
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %136

105:                                              ; preds = %102
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64**, i64*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64*, i64** %108, i64 %110
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.r8192_priv*, %struct.r8192_priv** %10, align 8
  %118 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %116
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  br label %133

133:                                              ; preds = %105
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %102

136:                                              ; preds = %102
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %52

140:                                              ; preds = %50, %52
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
