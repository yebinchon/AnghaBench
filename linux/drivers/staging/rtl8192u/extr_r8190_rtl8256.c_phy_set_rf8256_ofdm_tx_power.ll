; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8190_rtl8256.c_phy_set_rf8256_ofdm_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8190_rtl8256.c_phy_set_rf8256_ofdm_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32*, i32, i64 }

@__const.phy_set_rf8256_ofdm_tx_power.RegOffset = private unnamed_addr constant [6 x i32] [i32 3584, i32 3588, i32 3600, i32 3604, i32 3608, i32 3612], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_set_rf8256_ofdm_tx_power(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %16)
  store %struct.r8192_priv* %17, %struct.r8192_priv** %5, align 8
  store i32 0, i32* %10, align 4
  %18 = bitcast [6 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([6 x i32]* @__const.phy_set_rf8256_ofdm_tx_power.RegOffset to i8*), i64 24, i1 false)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 24
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 16
  %28 = or i32 %25, %27
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %28, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 24
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %39, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %133, %2
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 6
  br i1 %47, label %48, label %136

48:                                               ; preds = %45
  %49 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %50 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %7, align 4
  br label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = add nsw i32 %55, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 127
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 32512
  %69 = ashr i32 %68, 8
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 8323072
  %72 = ashr i32 %71, 16
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 2130706432
  %75 = ashr i32 %74, 24
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 36
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  store i32 36, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %80, 36
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 36, i32* %13, align 4
  br label %83

83:                                               ; preds = %82, %79
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %84, 36
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 36, i32* %14, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %15, align 4
  %89 = icmp sgt i32 %88, 36
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 36, i32* %15, align 4
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i32, i32* %15, align 4
  %96 = shl i32 %95, 24
  %97 = load i32, i32* %14, align 4
  %98 = shl i32 %97, 16
  %99 = or i32 %96, %98
  %100 = load i32, i32* %13, align 4
  %101 = shl i32 %100, 8
  %102 = or i32 %99, %101
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %107 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %94, %91
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 50529027, i32* %6, align 4
  br label %125

114:                                              ; preds = %108
  %115 = load i32, i32* %15, align 4
  %116 = shl i32 %115, 24
  %117 = load i32, i32* %14, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %116, %118
  %120 = load i32, i32* %13, align 4
  %121 = shl i32 %120, 8
  %122 = or i32 %119, %121
  %123 = load i32, i32* %12, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %114, %113
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @rtl8192_setBBreg(%struct.net_device* %126, i32 %130, i32 2139062143, i32 %131)
  br label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %45

136:                                              ; preds = %45
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
