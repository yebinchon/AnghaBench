; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_info = type { %struct.omapfb2_device* }
%struct.omapfb2_device = type { i32 }
%struct.omap_dss_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.omapfb_display_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_ACTIVE = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE = common dso_local global i32 0, align 4
@OMAPFB_AUTO_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @omapfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.omapfb_info*, align 8
  %7 = alloca %struct.omapfb2_device*, align 8
  %8 = alloca %struct.omap_dss_device*, align 8
  %9 = alloca %struct.omapfb_display_data*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %11)
  store %struct.omapfb_info* %12, %struct.omapfb_info** %6, align 8
  %13 = load %struct.omapfb_info*, %struct.omapfb_info** %6, align 8
  %14 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %13, i32 0, i32 0
  %15 = load %struct.omapfb2_device*, %struct.omapfb2_device** %14, align 8
  store %struct.omapfb2_device* %15, %struct.omapfb2_device** %7, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %16)
  store %struct.omap_dss_device* %17, %struct.omap_dss_device** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %19 = icmp ne %struct.omap_dss_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %25 = call i32 @omapfb_lock(%struct.omapfb2_device* %24)
  %26 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %28 = call %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device* %26, %struct.omap_dss_device* %27)
  store %struct.omapfb_display_data* %28, %struct.omapfb_display_data** %9, align 8
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %91 [
    i32 129, label %30
    i32 131, label %67
    i32 128, label %67
    i32 132, label %67
    i32 130, label %67
  ]

30:                                               ; preds = %23
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %32 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @OMAP_DSS_DISPLAY_ACTIVE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %95

37:                                               ; preds = %30
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %41, align 8
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %44 = call i32 %42(%struct.omap_dss_device* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %46 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %37
  %52 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %9, align 8
  %53 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OMAPFB_AUTO_UPDATE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %9, align 8
  %59 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %64 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %65 = call i32 @omapfb_start_auto_update(%struct.omapfb2_device* %63, %struct.omap_dss_device* %64)
  br label %66

66:                                               ; preds = %62, %57, %51, %37
  br label %94

67:                                               ; preds = %23, %23, %23, %23
  %68 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %69 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @OMAP_DSS_DISPLAY_ACTIVE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %95

74:                                               ; preds = %67
  %75 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %9, align 8
  %76 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %82 = call i32 @omapfb_stop_auto_update(%struct.omapfb2_device* %80, %struct.omap_dss_device* %81)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %85 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %87, align 8
  %89 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %90 = call i32 %88(%struct.omap_dss_device* %89)
  br label %94

91:                                               ; preds = %23
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %91, %83, %66
  br label %95

95:                                               ; preds = %94, %73, %36
  %96 = load %struct.omapfb2_device*, %struct.omapfb2_device** %7, align 8
  %97 = call i32 @omapfb_unlock(%struct.omapfb2_device* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %20
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local i32 @omapfb_lock(%struct.omapfb2_device*) #1

declare dso_local %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @omapfb_start_auto_update(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @omapfb_stop_auto_update(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @omapfb_unlock(%struct.omapfb2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
