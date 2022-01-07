; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dpi_data = type { i32, i32, i64, %struct.omap_dss_device }

@FEAT_DPI_USES_VDDS_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"no VDSS_DSI regulator\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to enable display: no output/manager\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @dpi_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.dpi_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %8 = call %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device* %7)
  store %struct.dpi_data* %8, %struct.dpi_data** %4, align 8
  %9 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %10 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %9, i32 0, i32 3
  store %struct.omap_dss_device* %10, %struct.omap_dss_device** %5, align 8
  %11 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %12 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @FEAT_DPI_USES_VDDS_DSI, align 4
  %15 = call i64 @dss_has_feature(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %19 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = call i32 @DSSERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %128

26:                                               ; preds = %17, %1
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %28 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp eq %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @DSSERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %127

35:                                               ; preds = %26
  %36 = load i32, i32* @FEAT_DPI_USES_VDDS_DSI, align 4
  %37 = call i64 @dss_has_feature(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %41 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regulator_enable(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %126

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %35
  %49 = call i32 (...) @dispc_runtime_get()
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %116

53:                                               ; preds = %48
  %54 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %55 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %58 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dss_dpi_select_source(i32 %56, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %114

66:                                               ; preds = %53
  %67 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %68 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %73 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @dss_pll_enable(i64 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %113

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %82 = call i32 @dpi_set_mode(%struct.dpi_data* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %102

86:                                               ; preds = %80
  %87 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %88 = call i32 @dpi_config_lcd_manager(%struct.dpi_data* %87)
  %89 = call i32 @mdelay(i32 2)
  %90 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %91 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = call i32 @dss_mgr_enable(%struct.TYPE_2__* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %101

97:                                               ; preds = %86
  %98 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %99 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  store i32 0, i32* %2, align 4
  br label %133

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %85
  %103 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %104 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %109 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @dss_pll_disable(i64 %110)
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %78
  br label %114

114:                                              ; preds = %113, %65
  %115 = call i32 (...) @dispc_runtime_put()
  br label %116

116:                                              ; preds = %114, %52
  %117 = load i32, i32* @FEAT_DPI_USES_VDDS_DSI, align 4
  %118 = call i64 @dss_has_feature(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %122 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @regulator_disable(i32 %123)
  br label %125

125:                                              ; preds = %120, %116
  br label %126

126:                                              ; preds = %125, %46
  br label %127

127:                                              ; preds = %126, %31
  br label %128

128:                                              ; preds = %127, %22
  %129 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %130 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %128, %97
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @dss_dpi_select_source(i32, i32) #1

declare dso_local i32 @dss_pll_enable(i64) #1

declare dso_local i32 @dpi_set_mode(%struct.dpi_data*) #1

declare dso_local i32 @dpi_config_lcd_manager(%struct.dpi_data*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dss_mgr_enable(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dss_pll_disable(i64) #1

declare dso_local i32 @dispc_runtime_put(...) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
