; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_set_update_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_set_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omap_dss_device = type { i32 }
%struct.omapfb_info = type { %struct.omapfb2_device* }
%struct.omapfb2_device = type { i32 }
%struct.omapfb_display_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAPFB_AUTO_UPDATE = common dso_local global i32 0, align 4
@OMAPFB_MANUAL_UPDATE = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapfb_set_update_mode(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omapfb_info*, align 8
  %8 = alloca %struct.omapfb2_device*, align 8
  %9 = alloca %struct.omapfb_display_data*, align 8
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %11)
  store %struct.omap_dss_device* %12, %struct.omap_dss_device** %6, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %14 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %13)
  store %struct.omapfb_info* %14, %struct.omapfb_info** %7, align 8
  %15 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %16 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %15, i32 0, i32 0
  %17 = load %struct.omapfb2_device*, %struct.omapfb2_device** %16, align 8
  store %struct.omapfb2_device* %17, %struct.omapfb2_device** %8, align 8
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %19 = icmp ne %struct.omap_dss_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @OMAPFB_AUTO_UPDATE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @OMAPFB_MANUAL_UPDATE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %83

34:                                               ; preds = %27, %23
  %35 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %36 = call i32 @omapfb_lock(%struct.omapfb2_device* %35)
  %37 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %39 = call %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device* %37, %struct.omap_dss_device* %38)
  store %struct.omapfb_display_data* %39, %struct.omapfb_display_data** %9, align 8
  %40 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %9, align 8
  %41 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %47 = call i32 @omapfb_unlock(%struct.omapfb2_device* %46)
  store i32 0, i32* %3, align 4
  br label %83

48:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %50 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @OMAPFB_AUTO_UPDATE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %61 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %62 = call i32 @omapfb_start_auto_update(%struct.omapfb2_device* %60, %struct.omap_dss_device* %61)
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %65 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %66 = call i32 @omapfb_stop_auto_update(%struct.omapfb2_device* %64, %struct.omap_dss_device* %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %9, align 8
  %70 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %79

71:                                               ; preds = %48
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @OMAPFB_MANUAL_UPDATE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %67
  %80 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %81 = call i32 @omapfb_unlock(%struct.omapfb2_device* %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %45, %31, %20
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @omapfb_lock(%struct.omapfb2_device*) #1

declare dso_local %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @omapfb_unlock(%struct.omapfb2_device*) #1

declare dso_local i32 @omapfb_start_auto_update(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @omapfb_stop_auto_update(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
