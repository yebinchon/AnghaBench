; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_path_a_iqk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_path_a_iqk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@rTx_IQK_Tone_A = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rRx_IQK_Tone_A = common dso_local global i32 0, align 4
@rTx_IQK_PI_A = common dso_local global i32 0, align 4
@rRx_IQK_PI_A = common dso_local global i32 0, align 4
@rIQK_AGC_Rsp = common dso_local global i32 0, align 4
@rIQK_AGC_Pts = common dso_local global i32 0, align 4
@IQK_DELAY_TIME_88E = common dso_local global i32 0, align 4
@rRx_Power_After_IQK_A_2 = common dso_local global i32 0, align 4
@rTx_Power_Before_IQK_A = common dso_local global i32 0, align 4
@rTx_Power_After_IQK_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @phy_path_a_iqk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_path_a_iqk(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load i32, i32* @rTx_IQK_Tone_A, align 4
  %11 = load i32, i32* @bMaskDWord, align 4
  %12 = call i32 @phy_set_bb_reg(%struct.adapter* %9, i32 %10, i32 %11, i32 268471324)
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = load i32, i32* @rRx_IQK_Tone_A, align 4
  %15 = load i32, i32* @bMaskDWord, align 4
  %16 = call i32 @phy_set_bb_reg(%struct.adapter* %13, i32 %14, i32 %15, i32 805342236)
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* @rTx_IQK_PI_A, align 4
  %19 = load i32, i32* @bMaskDWord, align 4
  %20 = call i32 @phy_set_bb_reg(%struct.adapter* %17, i32 %18, i32 %19, i32 -2112617686)
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load i32, i32* @rRx_IQK_PI_A, align 4
  %23 = load i32, i32* @bMaskDWord, align 4
  %24 = call i32 @phy_set_bb_reg(%struct.adapter* %21, i32 %22, i32 %23, i32 672530432)
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = load i32, i32* @rIQK_AGC_Rsp, align 4
  %27 = load i32, i32* @bMaskDWord, align 4
  %28 = call i32 @phy_set_bb_reg(%struct.adapter* %25, i32 %26, i32 %27, i32 4598033)
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = load i32, i32* @rIQK_AGC_Pts, align 4
  %31 = load i32, i32* @bMaskDWord, align 4
  %32 = call i32 @phy_set_bb_reg(%struct.adapter* %29, i32 %30, i32 %31, i32 -117440512)
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = load i32, i32* @rIQK_AGC_Pts, align 4
  %35 = load i32, i32* @bMaskDWord, align 4
  %36 = call i32 @phy_set_bb_reg(%struct.adapter* %33, i32 %34, i32 %35, i32 -134217728)
  %37 = load i32, i32* @IQK_DELAY_TIME_88E, align 4
  %38 = call i32 @mdelay(i32 %37)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = load i32, i32* @rRx_Power_After_IQK_A_2, align 4
  %41 = load i32, i32* @bMaskDWord, align 4
  %42 = call i32 @phy_query_bb_reg(%struct.adapter* %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = load i32, i32* @rTx_Power_Before_IQK_A, align 4
  %45 = load i32, i32* @bMaskDWord, align 4
  %46 = call i32 @phy_query_bb_reg(%struct.adapter* %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = load i32, i32* @rTx_Power_After_IQK_A, align 4
  %49 = load i32, i32* @bMaskDWord, align 4
  %50 = call i32 @phy_query_bb_reg(%struct.adapter* %47, i32 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @BIT(i32 28)
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %2
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 67043328
  %58 = ashr i32 %57, 16
  %59 = icmp ne i32 %58, 322
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 67043328
  %63 = ashr i32 %62, 16
  %64 = icmp ne i32 %63, 66
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %60, %55, %2
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @phy_query_bb_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
