; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_write_ofdm_pwr_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_write_ofdm_pwr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@rTxAGC_A_Rate18_06 = common dso_local global i32 0, align 4
@rTxAGC_A_Rate54_24 = common dso_local global i32 0, align 4
@rTxAGC_A_Mcs03_Mcs00 = common dso_local global i32 0, align 4
@rTxAGC_A_Mcs07_Mcs04 = common dso_local global i32 0, align 4
@rTxAGC_A_Mcs11_Mcs08 = common dso_local global i32 0, align 4
@rTxAGC_A_Mcs15_Mcs12 = common dso_local global i32 0, align 4
@rTxAGC_B_Rate18_06 = common dso_local global i32 0, align 4
@rTxAGC_B_Rate54_24 = common dso_local global i32 0, align 4
@rTxAGC_B_Mcs03_Mcs00 = common dso_local global i32 0, align 4
@rTxAGC_B_Mcs07_Mcs04 = common dso_local global i32 0, align 4
@rTxAGC_B_Mcs11_Mcs08 = common dso_local global i32 0, align 4
@rTxAGC_B_Mcs15_Mcs12 = common dso_local global i32 0, align 4
@RF6052_MAX_TX_PWR = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32*)* @write_ofdm_pwr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ofdm_pwr_reg(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* @rTxAGC_A_Rate18_06, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @rTxAGC_A_Rate54_24, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @rTxAGC_A_Mcs03_Mcs00, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @rTxAGC_A_Mcs07_Mcs04, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @rTxAGC_A_Mcs11_Mcs08, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @rTxAGC_A_Mcs15_Mcs12, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %27 = load i32, i32* @rTxAGC_B_Rate18_06, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @rTxAGC_B_Rate54_24, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @rTxAGC_B_Mcs03_Mcs00, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @rTxAGC_B_Mcs07_Mcs04, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @rTxAGC_B_Mcs11_Mcs08, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @rTxAGC_B_Mcs15_Mcs12, align 4
  store i32 %37, i32* %36, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %110, %3
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %113

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %74, %41
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 8
  %54 = shl i32 127, %53
  %55 = and i32 %51, %54
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 8
  %58 = ashr i32 %55, %57
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %50
  %69 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %47

77:                                               ; preds = %47
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 24
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 16
  %84 = or i32 %80, %83
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %84, %87
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = or i32 %88, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %77
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %13, align 4
  br label %104

99:                                               ; preds = %77
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.adapter*, %struct.adapter** %4, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @bMaskDWord, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @phy_set_bb_reg(%struct.adapter* %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %38

113:                                              ; preds = %38
  ret void
}

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
