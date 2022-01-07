; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_patha_fill_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_patha_fill_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@rOFDM0_XATxIQImbalance = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rOFDM0_ECCAThreshold = common dso_local global i32 0, align 4
@rOFDM0_XCTxAFE = common dso_local global i32 0, align 4
@rOFDM0_XARxIQImbalance = common dso_local global i32 0, align 4
@rOFDM0_RxIQExtAnta = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, [8 x i32]*, i32, i32)* @patha_fill_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patha_fill_iqk(%struct.adapter* %0, i32 %1, [8 x i32]* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store [8 x i32]* %2, [8 x i32]** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %135

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %134

23:                                               ; preds = %20
  %24 = load %struct.adapter*, %struct.adapter** %6, align 8
  %25 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %26 = load i32, i32* @bMaskDWord, align 4
  %27 = call i32 @phy_query_bb_reg(%struct.adapter* %24, i32 %25, i32 %26)
  %28 = ashr i32 %27, 22
  %29 = and i32 %28, 1023
  store i32 %29, i32* %11, align 4
  %30 = load [8 x i32]*, [8 x i32]** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 %32
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %33, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, 512
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, -1024
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %23
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %43, %44
  %46 = ashr i32 %45, 8
  store i32 %46, i32* %13, align 4
  %47 = load %struct.adapter*, %struct.adapter** %6, align 8
  %48 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @phy_set_bb_reg(%struct.adapter* %47, i32 %48, i32 1023, i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %6, align 8
  %52 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %53 = call i32 @BIT(i32 31)
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %54, %55
  %57 = ashr i32 %56, 7
  %58 = and i32 %57, 1
  %59 = call i32 @phy_set_bb_reg(%struct.adapter* %51, i32 %52, i32 %53, i32 %58)
  %60 = load [8 x i32]*, [8 x i32]** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %60, i64 %62
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %63, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = and i32 %66, 512
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %42
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, -1024
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %69, %42
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 %73, %74
  %76 = ashr i32 %75, 8
  store i32 %76, i32* %16, align 4
  %77 = load %struct.adapter*, %struct.adapter** %6, align 8
  %78 = load i32, i32* @rOFDM0_XCTxAFE, align 4
  %79 = load i32, i32* %16, align 4
  %80 = and i32 %79, 960
  %81 = ashr i32 %80, 6
  %82 = call i32 @phy_set_bb_reg(%struct.adapter* %77, i32 %78, i32 -268435456, i32 %81)
  %83 = load %struct.adapter*, %struct.adapter** %6, align 8
  %84 = load i32, i32* @rOFDM0_XATxIQImbalance, align 4
  %85 = load i32, i32* %16, align 4
  %86 = and i32 %85, 63
  %87 = call i32 @phy_set_bb_reg(%struct.adapter* %83, i32 %84, i32 4128768, i32 %86)
  %88 = load %struct.adapter*, %struct.adapter** %6, align 8
  %89 = load i32, i32* @rOFDM0_ECCAThreshold, align 4
  %90 = call i32 @BIT(i32 29)
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %91, %92
  %94 = ashr i32 %93, 7
  %95 = and i32 %94, 1
  %96 = call i32 @phy_set_bb_reg(%struct.adapter* %88, i32 %89, i32 %90, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %72
  br label %135

100:                                              ; preds = %72
  %101 = load [8 x i32]*, [8 x i32]** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %101, i64 %103
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %104, i64 0, i64 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %14, align 4
  %107 = load %struct.adapter*, %struct.adapter** %6, align 8
  %108 = load i32, i32* @rOFDM0_XARxIQImbalance, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @phy_set_bb_reg(%struct.adapter* %107, i32 %108, i32 1023, i32 %109)
  %111 = load [8 x i32]*, [8 x i32]** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %111, i64 %113
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %114, i64 0, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 63
  store i32 %117, i32* %14, align 4
  %118 = load %struct.adapter*, %struct.adapter** %6, align 8
  %119 = load i32, i32* @rOFDM0_XARxIQImbalance, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @phy_set_bb_reg(%struct.adapter* %118, i32 %119, i32 64512, i32 %120)
  %122 = load [8 x i32]*, [8 x i32]** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %122, i64 %124
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %125, i64 0, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 6
  %129 = and i32 %128, 15
  store i32 %129, i32* %14, align 4
  %130 = load %struct.adapter*, %struct.adapter** %6, align 8
  %131 = load i32, i32* @rOFDM0_RxIQExtAnta, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @phy_set_bb_reg(%struct.adapter* %130, i32 %131, i32 -268435456, i32 %132)
  br label %134

134:                                              ; preds = %100, %20
  br label %135

135:                                              ; preds = %19, %99, %134
  ret void
}

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
