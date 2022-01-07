; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_set_swp_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_qbman-portal.c_qbman_set_swp_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SWP_CFG_DQRR_MF_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_EST_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_WN_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_RPM_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_DCM_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_EPM_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_SD_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_SP_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_SE_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_DP_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_DE_SHIFT = common dso_local global i32 0, align 4
@SWP_CFG_EP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @qbman_set_swp_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qbman_set_swp_cfg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @SWP_CFG_DQRR_MF_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @SWP_CFG_EST_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @SWP_CFG_WN_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @SWP_CFG_RPM_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @SWP_CFG_DCM_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* @SWP_CFG_EPM_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* @SWP_CFG_SD_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* @SWP_CFG_SP_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* @SWP_CFG_SE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* @SWP_CFG_DP_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* @SWP_CFG_DE_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %63, %66
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* @SWP_CFG_EP_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
