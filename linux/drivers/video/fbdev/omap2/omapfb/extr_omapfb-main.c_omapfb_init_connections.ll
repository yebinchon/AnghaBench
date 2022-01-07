; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_init_connections.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_init_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32, i32, i32, %struct.omap_overlay**, %struct.TYPE_3__* }
%struct.omap_overlay = type { i32 (%struct.omap_overlay*, %struct.omap_overlay_manager*)*, i32, i32 (%struct.omap_overlay*)*, i64 }
%struct.omap_overlay_manager = type { i32 }
%struct.TYPE_3__ = type { %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*)* }

@.str = private unnamed_addr constant [35 x i8] c"failed to connect default display\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"no ovl manager for the default display\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to connect overlay %s to manager %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb2_device*, %struct.omap_dss_device*)* @omapfb_init_connections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_init_connections(%struct.omapfb2_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb2_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_overlay_manager*, align 8
  %9 = alloca %struct.omap_dss_device*, align 8
  %10 = alloca %struct.omap_overlay*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %12 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %14, align 8
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %17 = call i32 %15(%struct.omap_dss_device* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %22 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %119

26:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %54, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %30 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %35 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %40, align 8
  store %struct.omap_dss_device* %41, %struct.omap_dss_device** %9, align 8
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %44 = icmp eq %struct.omap_dss_device* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %54

46:                                               ; preds = %33
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %48 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %50, align 8
  %52 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %53 = call i32 %51(%struct.omap_dss_device* %52)
  br label %54

54:                                               ; preds = %46, %45
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %59 = call %struct.omap_overlay_manager* @omapdss_find_mgr_from_display(%struct.omap_dss_device* %58)
  store %struct.omap_overlay_manager* %59, %struct.omap_overlay_manager** %8, align 8
  %60 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %61 = icmp ne %struct.omap_overlay_manager* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %64 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %119

69:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %115, %69
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %73 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %70
  %77 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %78 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %77, i32 0, i32 3
  %79 = load %struct.omap_overlay**, %struct.omap_overlay*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %79, i64 %81
  %83 = load %struct.omap_overlay*, %struct.omap_overlay** %82, align 8
  store %struct.omap_overlay* %83, %struct.omap_overlay** %10, align 8
  %84 = load %struct.omap_overlay*, %struct.omap_overlay** %10, align 8
  %85 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load %struct.omap_overlay*, %struct.omap_overlay** %10, align 8
  %90 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %89, i32 0, i32 2
  %91 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %90, align 8
  %92 = load %struct.omap_overlay*, %struct.omap_overlay** %10, align 8
  %93 = call i32 %91(%struct.omap_overlay* %92)
  br label %94

94:                                               ; preds = %88, %76
  %95 = load %struct.omap_overlay*, %struct.omap_overlay** %10, align 8
  %96 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %95, i32 0, i32 0
  %97 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_manager*)** %96, align 8
  %98 = load %struct.omap_overlay*, %struct.omap_overlay** %10, align 8
  %99 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %100 = call i32 %97(%struct.omap_overlay* %98, %struct.omap_overlay_manager* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %94
  %104 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %105 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.omap_overlay*, %struct.omap_overlay** %10, align 8
  %108 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  %111 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_warn(i32 %106, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %103, %94
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %70

118:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %62, %20
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.omap_overlay_manager* @omapdss_find_mgr_from_display(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
