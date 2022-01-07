; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c__omapfb_set_color_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c__omapfb_set_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_color_key = type { i32, i32, i32 }
%struct.omap_overlay_manager = type { i64, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)* }
%struct.omap_overlay_manager_info = type { i32, i32, i32, i32 }

@OMAPFB_COLOR_KEY_DISABLED = common dso_local global i32 0, align 4
@omapfb_color_keys = common dso_local global %struct.omapfb_color_key* null, align 8
@OMAP_DSS_COLOR_KEY_GFX_DST = common dso_local global i32 0, align 4
@OMAP_DSS_COLOR_KEY_VID_SRC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, %struct.omapfb_color_key*)* @_omapfb_set_color_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omapfb_set_color_key(%struct.omap_overlay_manager* %0, %struct.omapfb_color_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_overlay_manager*, align 8
  %5 = alloca %struct.omapfb_color_key*, align 8
  %6 = alloca %struct.omap_overlay_manager_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %4, align 8
  store %struct.omapfb_color_key* %1, %struct.omapfb_color_key** %5, align 8
  %9 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %10 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %9, i32 0, i32 3
  %11 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %10, align 8
  %12 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %13 = call i32 %11(%struct.omap_overlay_manager* %12, %struct.omap_overlay_manager_info* %6)
  %14 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %5, align 8
  %15 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OMAPFB_COLOR_KEY_DISABLED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %6, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** @omapfb_color_keys, align 8
  %22 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %23 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %21, i64 %24
  %26 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %5, align 8
  %27 = bitcast %struct.omapfb_color_key* %25 to i8*
  %28 = bitcast %struct.omapfb_color_key* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  %29 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %30 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %29, i32 0, i32 1
  %31 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %30, align 8
  %32 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %33 = call i32 %31(%struct.omap_overlay_manager* %32, %struct.omap_overlay_manager_info* %6)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %92

38:                                               ; preds = %19
  %39 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %40 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %39, i32 0, i32 2
  %41 = load i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*)** %40, align 8
  %42 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %43 = call i32 %41(%struct.omap_overlay_manager* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %92

45:                                               ; preds = %2
  %46 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %5, align 8
  %47 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %53 [
    i32 129, label %49
    i32 128, label %51
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @OMAP_DSS_COLOR_KEY_GFX_DST, align 4
  store i32 %50, i32* %7, align 4
  br label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @OMAP_DSS_COLOR_KEY_VID_SRC, align 4
  store i32 %52, i32* %7, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %92

56:                                               ; preds = %51, %49
  %57 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %5, align 8
  %58 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %6, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %5, align 8
  %62 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %6, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %6, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.omap_overlay_manager_info, %struct.omap_overlay_manager_info* %6, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** @omapfb_color_keys, align 8
  %69 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %70 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.omapfb_color_key, %struct.omapfb_color_key* %68, i64 %71
  %73 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %5, align 8
  %74 = bitcast %struct.omapfb_color_key* %72 to i8*
  %75 = bitcast %struct.omapfb_color_key* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 12, i1 false)
  %76 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %77 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %76, i32 0, i32 1
  %78 = load i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_overlay_manager_info*)** %77, align 8
  %79 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %80 = call i32 %78(%struct.omap_overlay_manager* %79, %struct.omap_overlay_manager_info* %6)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %56
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %92

85:                                               ; preds = %56
  %86 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %87 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %86, i32 0, i32 2
  %88 = load i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*)** %87, align 8
  %89 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %90 = call i32 %88(%struct.omap_overlay_manager* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %85, %83, %53, %38, %36
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
