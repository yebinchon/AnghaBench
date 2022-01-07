; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sun4i_usb_phy = type { i64, i64, i32, i32, i32 }
%struct.sun4i_usb_phy_data = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }

@sun8i_a83t_phy = common dso_local global i64 0, align 8
@sun50i_h6_phy = common dso_local global i64 0, align 8
@PHY_CTL_VBUSVLDEXT = common dso_local global i32 0, align 4
@PHY_CTL_SIDDQ = common dso_local global i32 0, align 4
@REG_PMU_UNK1 = common dso_local global i64 0, align 8
@PHY_RES45_CAL_EN = common dso_local global i32 0, align 4
@PHY_TX_AMPLITUDE_TUNE = common dso_local global i32 0, align 4
@PHY_DISCON_TH_SEL = common dso_local global i32 0, align 4
@ISCR_DPDM_PULLUP_EN = common dso_local global i32 0, align 4
@ISCR_ID_PULLUP_EN = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sun4i_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_usb_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.sun4i_usb_phy*, align 8
  %5 = alloca %struct.sun4i_usb_phy_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = call %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy* %8)
  store %struct.sun4i_usb_phy* %9, %struct.sun4i_usb_phy** %4, align 8
  %10 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %11 = call %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy* %10)
  store %struct.sun4i_usb_phy_data* %11, %struct.sun4i_usb_phy_data** %5, align 8
  %12 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %13 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %174

20:                                               ; preds = %1
  %21 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %22 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %29 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %174

33:                                               ; preds = %20
  %34 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %35 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reset_control_deassert(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %42 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  %45 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %46 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @clk_disable_unprepare(i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %174

50:                                               ; preds = %33
  %51 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %52 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @sun8i_a83t_phy, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %60 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @sun50i_h6_phy, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %58, %50
  %67 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %68 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %66
  %72 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %73 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %76 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %74, %79
  %81 = call i32 @readl(i64 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @PHY_CTL_VBUSVLDEXT, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @PHY_CTL_SIDDQ, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %91 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %94 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %92, %97
  %99 = call i32 @writel(i32 %89, i64 %98)
  br label %100

100:                                              ; preds = %71, %66
  br label %149

101:                                              ; preds = %58
  %102 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %103 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %108 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %107, i32 0, i32 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %106
  %114 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %115 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @REG_PMU_UNK1, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readl(i64 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, -3
  %122 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %123 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @REG_PMU_UNK1, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  br label %128

128:                                              ; preds = %113, %106, %101
  %129 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %130 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %135 = load i32, i32* @PHY_RES45_CAL_EN, align 4
  %136 = call i32 @sun4i_usb_phy_write(%struct.sun4i_usb_phy* %134, i32 %135, i32 1, i32 1)
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %139 = load i32, i32* @PHY_TX_AMPLITUDE_TUNE, align 4
  %140 = call i32 @sun4i_usb_phy_write(%struct.sun4i_usb_phy* %138, i32 %139, i32 20, i32 5)
  %141 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %142 = load i32, i32* @PHY_DISCON_TH_SEL, align 4
  %143 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %144 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %143, i32 0, i32 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @sun4i_usb_phy_write(%struct.sun4i_usb_phy* %141, i32 %142, i32 %147, i32 2)
  br label %149

149:                                              ; preds = %137, %100
  %150 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %151 = call i32 @sun4i_usb_phy_passby(%struct.sun4i_usb_phy* %150, i32 1)
  %152 = load %struct.sun4i_usb_phy*, %struct.sun4i_usb_phy** %4, align 8
  %153 = getelementptr inbounds %struct.sun4i_usb_phy, %struct.sun4i_usb_phy* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %149
  %157 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %158 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.phy*, %struct.phy** %3, align 8
  %160 = load i32, i32* @ISCR_DPDM_PULLUP_EN, align 4
  %161 = call i32 @sun4i_usb_phy0_update_iscr(%struct.phy* %159, i32 0, i32 %160)
  %162 = load %struct.phy*, %struct.phy** %3, align 8
  %163 = load i32, i32* @ISCR_ID_PULLUP_EN, align 4
  %164 = call i32 @sun4i_usb_phy0_update_iscr(%struct.phy* %162, i32 0, i32 %163)
  %165 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %166 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %165, i32 0, i32 1
  store i32 -1, i32* %166, align 4
  %167 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %168 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %167, i32 0, i32 2
  store i32 -1, i32* %168, align 8
  %169 = load i32, i32* @system_wq, align 4
  %170 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %5, align 8
  %171 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %170, i32 0, i32 3
  %172 = call i32 @queue_delayed_work(i32 %169, i32* %171, i32 0)
  br label %173

173:                                              ; preds = %156, %149
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %173, %40, %27, %18
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.sun4i_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.sun4i_usb_phy_data* @to_sun4i_usb_phy_data(%struct.sun4i_usb_phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sun4i_usb_phy_write(%struct.sun4i_usb_phy*, i32, i32, i32) #1

declare dso_local i32 @sun4i_usb_phy_passby(%struct.sun4i_usb_phy*, i32) #1

declare dso_local i32 @sun4i_usb_phy0_update_iscr(%struct.phy*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
