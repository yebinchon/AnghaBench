; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dsi_get_dphy_pll_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dsi_get_dphy_pll_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dphy = type { i32 }
%struct.cdns_dphy_cfg = type { i32, i32, i32 }
%struct.phy_configure_opts_mipi_dphy = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_dphy*, %struct.cdns_dphy_cfg*, %struct.phy_configure_opts_mipi_dphy*, i32*)* @cdns_dsi_get_dphy_pll_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_dsi_get_dphy_pll_cfg(%struct.cdns_dphy* %0, %struct.cdns_dphy_cfg* %1, %struct.phy_configure_opts_mipi_dphy* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdns_dphy*, align 8
  %7 = alloca %struct.cdns_dphy_cfg*, align 8
  %8 = alloca %struct.phy_configure_opts_mipi_dphy*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cdns_dphy* %0, %struct.cdns_dphy** %6, align 8
  store %struct.cdns_dphy_cfg* %1, %struct.cdns_dphy_cfg** %7, align 8
  store %struct.phy_configure_opts_mipi_dphy* %2, %struct.phy_configure_opts_mipi_dphy** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.cdns_dphy*, %struct.cdns_dphy** %6, align 8
  %13 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @clk_get_rate(i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %17 = call i32 @memset(%struct.cdns_dphy_cfg* %16, i32 0, i32 12)
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %18, 9600000
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  %22 = icmp uge i64 %21, 150000000
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %107

26:                                               ; preds = %20
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %27, 19200000
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %31 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %49

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = icmp ult i64 %33, 38400000
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %37 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %36, i32 0, i32 0
  store i32 2, i32* %37, align 4
  br label %48

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = icmp ult i64 %39, 76800000
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %43 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %42, i32 0, i32 0
  store i32 4, i32* %43, align 4
  br label %47

44:                                               ; preds = %38
  %45 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %46 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %45, i32 0, i32 0
  store i32 8, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %8, align 8
  %52 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ugt i64 %54, 2500000000
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %57, 160000000
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %50
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %107

62:                                               ; preds = %56
  %63 = load i64, i64* %11, align 8
  %64 = icmp uge i64 %63, 1250000000
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %67 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %89

68:                                               ; preds = %62
  %69 = load i64, i64* %11, align 8
  %70 = icmp uge i64 %69, 630000000
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %73 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %72, i32 0, i32 1
  store i32 2, i32* %73, align 4
  br label %88

74:                                               ; preds = %68
  %75 = load i64, i64* %11, align 8
  %76 = icmp uge i64 %75, 320000000
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %79 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %78, i32 0, i32 1
  store i32 4, i32* %79, align 4
  br label %87

80:                                               ; preds = %74
  %81 = load i64, i64* %11, align 8
  %82 = icmp uge i64 %81, 160000000
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %84, i32 0, i32 1
  store i32 8, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %77
  br label %88

88:                                               ; preds = %87, %71
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %11, align 8
  %92 = mul i64 %91, 2
  %93 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %94 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %92, %96
  %98 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %99 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %97, %101
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @DIV_ROUND_UP_ULL(i64 %102, i64 %103)
  %105 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %7, align 8
  %106 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %90, %59, %23
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @memset(%struct.cdns_dphy_cfg*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
