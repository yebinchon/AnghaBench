; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager.c_dss_mgr_check_lcd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager.c_dss_mgr_check_lcd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.dss_lcd_mgr_config = type { i32, i32, i32, %struct.dispc_clock_info }
%struct.dispc_clock_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, %struct.dss_lcd_mgr_config*)* @dss_mgr_check_lcd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_mgr_check_lcd_config(%struct.omap_overlay_manager* %0, %struct.dss_lcd_mgr_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_overlay_manager*, align 8
  %5 = alloca %struct.dss_lcd_mgr_config*, align 8
  %6 = alloca %struct.dispc_clock_info, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %4, align 8
  store %struct.dss_lcd_mgr_config* %1, %struct.dss_lcd_mgr_config** %5, align 8
  %10 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %5, align 8
  %11 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %10, i32 0, i32 3
  %12 = bitcast %struct.dispc_clock_info* %6 to i8*
  %13 = bitcast %struct.dispc_clock_info* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %5, align 8
  %15 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %5, align 8
  %18 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.dss_lcd_mgr_config*, %struct.dss_lcd_mgr_config** %5, align 8
  %21 = getelementptr inbounds %struct.dss_lcd_mgr_config, %struct.dss_lcd_mgr_config* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 255
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 12
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 16
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 18
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 24
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %69

59:                                               ; preds = %53, %50, %47, %44
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %62, %59
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %65, %56, %41, %30
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
