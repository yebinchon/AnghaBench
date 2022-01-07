; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_overlay_fb_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_overlay_fb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_overlay = type { i32, %struct.fb_info*, %struct.TYPE_4__* }
%struct.fb_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.sh_mobile_lcdc_priv* }
%struct.sh_mobile_lcdc_priv = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"registered %s/overlay %u as %dx%d %dbpp.\0A\00", align 1
@overlay_sysfs_attrs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_lcdc_overlay*)* @sh_mobile_lcdc_overlay_fb_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_overlay_fb_register(%struct.sh_mobile_lcdc_overlay* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_lcdc_overlay*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_priv*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_overlay* %0, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %8 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %9 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %11, align 8
  store %struct.sh_mobile_lcdc_priv* %12, %struct.sh_mobile_lcdc_priv** %4, align 8
  %13 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %13, i32 0, i32 1
  %15 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  store %struct.fb_info* %15, %struct.fb_info** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = icmp eq %struct.fb_info* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %21 = call i32 @register_framebuffer(%struct.fb_info* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %73

26:                                               ; preds = %19
  %27 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %28 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sh_mobile_lcdc_priv*, %struct.sh_mobile_lcdc_priv** %4, align 8
  %31 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, %struct.sh_mobile_lcdc_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_name(i32 %32)
  %34 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %35 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %40, i32 %44, i32 %48)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %69, %26
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** @overlay_sysfs_attrs, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @overlay_sysfs_attrs, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @device_create_file(i32 %58, i32* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %73

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %50

72:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %66, %24, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
