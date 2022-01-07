; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_calc_frame_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_calc_frame_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GUSBCFG = common dso_local global i32 0, align 4
@HPRT0 = common dso_local global i32 0, align 4
@GUSBCFG_PHYSEL = common dso_local global i32 0, align 4
@GUSBCFG_ULPI_UTMI_SEL = common dso_local global i32 0, align 4
@GUSBCFG_PHYIF16 = common dso_local global i32 0, align 4
@GHWCFG2_FS_PHY_TYPE_SHARED_ULPI = common dso_local global i64 0, align 8
@GUSBCFG_PHY_LP_CLK_SEL = common dso_local global i32 0, align 4
@GHWCFG2_FS_PHY_TYPE_SHARED_UTMI = common dso_local global i64 0, align 8
@GHWCFG2_FS_PHY_TYPE_DEDICATED = common dso_local global i64 0, align 8
@HPRT0_SPD_MASK = common dso_local global i32 0, align 4
@HPRT0_SPD_SHIFT = common dso_local global i64 0, align 8
@HPRT0_SPD_HIGH_SPEED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_calc_frame_interval(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store i32 60, i32* %6, align 4
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %8 = load i32, i32* @GUSBCFG, align 4
  %9 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %11 = load i32, i32* @HPRT0, align 4
  %12 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GUSBCFG_PHYSEL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GUSBCFG_ULPI_UTMI_SEL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GUSBCFG_PHYIF16, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 60, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %22, %17, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GUSBCFG_PHYSEL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GHWCFG2_FS_PHY_TYPE_SHARED_ULPI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 48, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %33, %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @GUSBCFG_PHY_LP_CLK_SEL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @GUSBCFG_PHYSEL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @GUSBCFG_ULPI_UTMI_SEL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @GUSBCFG_PHYIF16, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 30, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %56, %51, %46, %41
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @GUSBCFG_PHY_LP_CLK_SEL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @GUSBCFG_PHYSEL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @GUSBCFG_ULPI_UTMI_SEL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @GUSBCFG_PHYIF16, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 60, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %77, %72, %67, %62
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @GUSBCFG_PHY_LP_CLK_SEL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @GUSBCFG_PHYSEL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @GUSBCFG_ULPI_UTMI_SEL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @GUSBCFG_PHYIF16, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 48, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %98, %93, %88, %83
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @GUSBCFG_PHYSEL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @GUSBCFG_PHYIF16, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %116 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @GHWCFG2_FS_PHY_TYPE_SHARED_UTMI, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 48, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %114, %109, %104
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @GUSBCFG_PHYSEL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %129 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @GHWCFG2_FS_PHY_TYPE_DEDICATED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 48, i32* %6, align 4
  br label %135

135:                                              ; preds = %134, %127, %122
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @HPRT0_SPD_MASK, align 4
  %138 = and i32 %136, %137
  %139 = load i64, i64* @HPRT0_SPD_SHIFT, align 8
  %140 = trunc i64 %139 to i32
  %141 = ashr i32 %138, %140
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* @HPRT0_SPD_HIGH_SPEED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %135
  %146 = load i32, i32* %6, align 4
  %147 = mul nsw i32 125, %146
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %2, align 4
  br label %153

149:                                              ; preds = %135
  %150 = load i32, i32* %6, align 4
  %151 = mul nsw i32 1000, %150
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
