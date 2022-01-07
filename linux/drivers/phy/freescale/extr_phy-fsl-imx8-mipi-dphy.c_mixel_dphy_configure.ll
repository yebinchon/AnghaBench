; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_dphy_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%union.phy_configure_opts = type { i32 }
%struct.mixel_dphy_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.mixel_dphy_cfg = type { i32 }

@DPHY_LOCK_BYP = common dso_local global i32 0, align 4
@DPHY_TST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*, %union.phy_configure_opts*)* @mixel_dphy_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixel_dphy_configure(%struct.phy* %0, %union.phy_configure_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy*, align 8
  %5 = alloca %union.phy_configure_opts*, align 8
  %6 = alloca %struct.mixel_dphy_priv*, align 8
  %7 = alloca %struct.mixel_dphy_cfg, align 4
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %4, align 8
  store %union.phy_configure_opts* %1, %union.phy_configure_opts** %5, align 8
  %9 = load %struct.phy*, %struct.phy** %4, align 8
  %10 = call %struct.mixel_dphy_priv* @phy_get_drvdata(%struct.phy* %9)
  store %struct.mixel_dphy_priv* %10, %struct.mixel_dphy_priv** %6, align 8
  %11 = bitcast %struct.mixel_dphy_cfg* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.phy*, %struct.phy** %4, align 8
  %13 = load %union.phy_configure_opts*, %union.phy_configure_opts** %5, align 8
  %14 = bitcast %union.phy_configure_opts* %13 to i32*
  %15 = call i32 @mixel_dphy_config_from_opts(%struct.phy* %12, i32* %14, %struct.mixel_dphy_cfg* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %21, i32 0, i32 1
  %23 = call i32 @memcpy(i32* %22, %struct.mixel_dphy_cfg* %7, i32 4)
  %24 = load %struct.phy*, %struct.phy** %4, align 8
  %25 = load i32, i32* @DPHY_LOCK_BYP, align 4
  %26 = call i32 @phy_write(%struct.phy* %24, i32 0, i32 %25)
  %27 = load %struct.phy*, %struct.phy** %4, align 8
  %28 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %6, align 8
  %29 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @phy_write(%struct.phy* %27, i32 1, i32 %32)
  %34 = load %struct.phy*, %struct.phy** %4, align 8
  %35 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %6, align 8
  %36 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @phy_write(%struct.phy* %34, i32 0, i32 %39)
  %41 = load %struct.phy*, %struct.phy** %4, align 8
  %42 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %6, align 8
  %43 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @phy_write(%struct.phy* %41, i32 2, i32 %46)
  %48 = load %struct.phy*, %struct.phy** %4, align 8
  %49 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %6, align 8
  %50 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @phy_write(%struct.phy* %48, i32 2, i32 %53)
  %55 = load %struct.phy*, %struct.phy** %4, align 8
  %56 = load i32, i32* @DPHY_TST, align 4
  %57 = call i32 @phy_write(%struct.phy* %55, i32 37, i32 %56)
  %58 = load %struct.phy*, %struct.phy** %4, align 8
  %59 = call i32 @mixel_phy_set_hs_timings(%struct.phy* %58)
  %60 = load %struct.phy*, %struct.phy** %4, align 8
  %61 = call i32 @mixel_dphy_set_pll_params(%struct.phy* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %20
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.mixel_dphy_priv* @phy_get_drvdata(%struct.phy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mixel_dphy_config_from_opts(%struct.phy*, i32*, %struct.mixel_dphy_cfg*) #1

declare dso_local i32 @memcpy(i32*, %struct.mixel_dphy_cfg*, i32) #1

declare dso_local i32 @phy_write(%struct.phy*, i32, i32) #1

declare dso_local i32 @mixel_phy_set_hs_timings(%struct.phy*) #1

declare dso_local i32 @mixel_dphy_set_pll_params(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
