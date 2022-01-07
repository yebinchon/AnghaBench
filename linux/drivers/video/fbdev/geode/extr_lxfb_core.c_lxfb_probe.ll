; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_core.c_lxfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_core.c_lxfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.lxfb_par = type { i64, i64, i64, i32 }
%struct.fb_info = type { i32, i64, %struct.TYPE_2__, i32, %struct.lxfb_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_videomode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"failed to map frame buffer or controller registers\0A\00", align 1
@nopanel = common dso_local global i64 0, align 8
@OUTPUT_PANEL = common dso_local global i32 0, align 4
@nocrt = common dso_local global i64 0, align 8
@OUTPUT_CRT = common dso_local global i32 0, align 4
@mode_option = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not find valid video mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@noclear = common dso_local global i32 0, align 4
@vt_switch = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s frame buffer device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lxfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lxfb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.lxfb_par*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_videomode*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call %struct.fb_info* @lxfb_init_fbinfo(i32* %12)
  store %struct.fb_info* %13, %struct.fb_info** %7, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %15 = icmp eq %struct.fb_info* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %168

19:                                               ; preds = %2
  %20 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 4
  %22 = load %struct.lxfb_par*, %struct.lxfb_par** %21, align 8
  store %struct.lxfb_par* %22, %struct.lxfb_par** %6, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @lxfb_map_video_memory(%struct.fb_info* %23, %struct.pci_dev* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %113

32:                                               ; preds = %19
  %33 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %34 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %33, i32 0, i32 3
  store i32 0, i32* %34, align 8
  %35 = load i64, i64* @nopanel, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @OUTPUT_PANEL, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  %42 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %43 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* @nocrt, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @OUTPUT_CRT, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  %53 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %54 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = call i32 @get_modedb(%struct.fb_videomode** %9, i32* %10)
  %58 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 3
  %60 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %61 = load i32, i32* @mode_option, align 4
  %62 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @fb_find_mode(i32* %59, %struct.fb_info* %60, i32 %61, %struct.fb_videomode* %62, i32 %63, i32* null, i32 16)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %76

70:                                               ; preds = %67, %51
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %113

76:                                               ; preds = %67
  %77 = load i32, i32* @noclear, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memset_io(i64 %82, i32 0, i32 %86)
  br label %88

88:                                               ; preds = %79, %76
  %89 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 3
  %91 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %92 = call i32 @lxfb_check_var(i32* %90, %struct.fb_info* %91)
  %93 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %94 = call i32 @lxfb_set_par(%struct.fb_info* %93)
  %95 = load i32, i32* @vt_switch, align 4
  %96 = call i32 @pm_set_vt_switch(i32 %95)
  %97 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %98 = call i64 @register_framebuffer(%struct.fb_info* %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %8, align 4
  br label %113

103:                                              ; preds = %88
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %106 = call i32 @pci_set_drvdata(%struct.pci_dev* %104, %struct.fb_info* %105)
  %107 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %108 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @fb_info(%struct.fb_info* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  store i32 0, i32* %3, align 4
  br label %168

113:                                              ; preds = %100, %70, %28
  %114 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @iounmap(i64 %121)
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = call i32 @pci_release_region(%struct.pci_dev* %123, i32 0)
  br label %125

125:                                              ; preds = %118, %113
  %126 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %127 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %132 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @iounmap(i64 %133)
  %135 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %136 = call i32 @pci_release_region(%struct.pci_dev* %135, i32 1)
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %139 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %144 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @iounmap(i64 %145)
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = call i32 @pci_release_region(%struct.pci_dev* %147, i32 2)
  br label %149

149:                                              ; preds = %142, %137
  %150 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %151 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %156 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @iounmap(i64 %157)
  %159 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %160 = call i32 @pci_release_region(%struct.pci_dev* %159, i32 3)
  br label %161

161:                                              ; preds = %154, %149
  %162 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %163 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %162, i32 0, i32 0
  %164 = call i32 @fb_dealloc_cmap(i32* %163)
  %165 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %166 = call i32 @framebuffer_release(%struct.fb_info* %165)
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %161, %103, %16
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.fb_info* @lxfb_init_fbinfo(i32*) #1

declare dso_local i32 @lxfb_map_video_memory(%struct.fb_info*, %struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @get_modedb(%struct.fb_videomode**, i32*) #1

declare dso_local i32 @fb_find_mode(i32*, %struct.fb_info*, i32, %struct.fb_videomode*, i32, i32*, i32) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @lxfb_check_var(i32*, %struct.fb_info*) #1

declare dso_local i32 @lxfb_set_par(%struct.fb_info*) #1

declare dso_local i32 @pm_set_vt_switch(i32) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fb_info*) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
