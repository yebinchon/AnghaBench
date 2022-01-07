; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display.c_omapdss_register_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display.c_omapdss_register_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, i32*, i32*, %struct.TYPE_2__*, %struct.omap_dss_driver* }
%struct.TYPE_2__ = type { i64 }
%struct.omap_dss_driver = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"display\00", align 1
@disp_num_counter = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"display%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@omapdss_default_get_resolution = common dso_local global i32* null, align 8
@omapdss_default_get_recommended_bpp = common dso_local global i32* null, align 8
@omapdss_default_get_timings = common dso_local global i32* null, align 8
@panel_list_mutex = common dso_local global i32 0, align 4
@panel_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapdss_register_display(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.omap_dss_driver*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %6 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %5, i32 0, i32 4
  %7 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %6, align 8
  store %struct.omap_dss_driver* %7, %struct.omap_dss_driver** %3, align 8
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %9 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @of_alias_get_id(i64 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @disp_num_counter, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @disp_num_counter, align 4
  store i32 %24, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %14
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @disp_num_counter, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @disp_num_counter, align 4
  store i32 %28, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %32 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @snprintf(i32* %33, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %37 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %30
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %49 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %48, i32 0, i32 2
  %50 = call i32 @of_property_read_string(i64 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %49)
  br label %51

51:                                               ; preds = %42, %30
  %52 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %53 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %58 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %61 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %64 = icmp ne %struct.omap_dss_driver* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %67 = getelementptr inbounds %struct.omap_dss_driver, %struct.omap_dss_driver* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32*, i32** @omapdss_default_get_resolution, align 8
  %72 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %73 = getelementptr inbounds %struct.omap_dss_driver, %struct.omap_dss_driver* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %70, %65, %62
  %75 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %76 = icmp ne %struct.omap_dss_driver* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %79 = getelementptr inbounds %struct.omap_dss_driver, %struct.omap_dss_driver* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32*, i32** @omapdss_default_get_recommended_bpp, align 8
  %84 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %85 = getelementptr inbounds %struct.omap_dss_driver, %struct.omap_dss_driver* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  br label %86

86:                                               ; preds = %82, %77, %74
  %87 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %88 = icmp ne %struct.omap_dss_driver* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %91 = getelementptr inbounds %struct.omap_dss_driver, %struct.omap_dss_driver* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32*, i32** @omapdss_default_get_timings, align 8
  %96 = load %struct.omap_dss_driver*, %struct.omap_dss_driver** %3, align 8
  %97 = getelementptr inbounds %struct.omap_dss_driver, %struct.omap_dss_driver* %96, i32 0, i32 0
  store i32* %95, i32** %97, align 8
  br label %98

98:                                               ; preds = %94, %89, %86
  %99 = call i32 @mutex_lock(i32* @panel_list_mutex)
  %100 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %101 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %100, i32 0, i32 0
  %102 = call i32 @list_add_tail(i32* %101, i32* @panel_list)
  %103 = call i32 @mutex_unlock(i32* @panel_list_mutex)
  ret i32 0
}

declare dso_local i32 @of_alias_get_id(i64, i8*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @of_property_read_string(i64, i8*, i32**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
