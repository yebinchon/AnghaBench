; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_csiphy_dphy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csiphy.c_csiphy_dphy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csiphy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@REGISTER0_THS_TERM_SHIFT = common dso_local global i32 0, align 4
@REGISTER0_THS_SETTLE_SHIFT = common dso_local global i32 0, align 4
@REGISTER0 = common dso_local global i32 0, align 4
@REGISTER1_TCLK_TERM_SHIFT = common dso_local global i32 0, align 4
@REGISTER1_CTRLCLK_DIV_FACTOR_SHIFT = common dso_local global i32 0, align 4
@REGISTER1_TCLK_SETTLE_SHIFT = common dso_local global i32 0, align 4
@REGISTER1_DPHY_HS_SYNC_PATTERN_SHIFT = common dso_local global i32 0, align 4
@REGISTER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_csiphy*)* @csiphy_dphy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_dphy_config(%struct.iss_csiphy* %0) #0 {
  %2 = alloca %struct.iss_csiphy*, align 8
  %3 = alloca i32, align 4
  store %struct.iss_csiphy* %0, %struct.iss_csiphy** %2, align 8
  %4 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %5 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REGISTER0_THS_TERM_SHIFT, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %11 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @REGISTER0_THS_SETTLE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %19 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %22 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REGISTER0, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @iss_reg_write(i32 %20, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %28 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @REGISTER1_TCLK_TERM_SHIFT, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %34 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @REGISTER1_CTRLCLK_DIV_FACTOR_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %42 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @REGISTER1_TCLK_SETTLE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @REGISTER1_DPHY_HS_SYNC_PATTERN_SHIFT, align 4
  %50 = shl i32 184, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %54 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iss_csiphy*, %struct.iss_csiphy** %2, align 8
  %57 = getelementptr inbounds %struct.iss_csiphy, %struct.iss_csiphy* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @REGISTER1, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @iss_reg_write(i32 %55, i32 %58, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @iss_reg_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
