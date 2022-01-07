; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gxfb_core.c_gxfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gxfb_core.c_gxfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.gxfb_par = type { i32, i64, i64, i64 }
%struct.fb_info = type { i32, i64, %struct.TYPE_2__, i32, %struct.gxfb_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_videomode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"failed to map frame buffer or controller registers\0A\00", align 1
@MSR_GX_GLD_MSR_CONFIG = common dso_local global i32 0, align 4
@MSR_GX_GLD_MSR_CONFIG_FP = common dso_local global i64 0, align 8
@mode_option = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not find valid video mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@vt_switch = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s frame buffer device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @gxfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxfb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.gxfb_par*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_videomode*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call %struct.fb_info* @gxfb_init_fbinfo(i32* %13)
  store %struct.fb_info* %14, %struct.fb_info** %7, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %16 = icmp ne %struct.fb_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %155

20:                                               ; preds = %2
  %21 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 4
  %23 = load %struct.gxfb_par*, %struct.gxfb_par** %22, align 8
  store %struct.gxfb_par* %23, %struct.gxfb_par** %6, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i32 @gxfb_map_video_memory(%struct.fb_info* %24, %struct.pci_dev* %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %100

32:                                               ; preds = %20
  %33 = load i32, i32* @MSR_GX_GLD_MSR_CONFIG, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @rdmsrl(i32 %33, i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @MSR_GX_GLD_MSR_CONFIG_FP, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @MSR_GX_GLD_MSR_CONFIG_FP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %43 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %47

44:                                               ; preds = %32
  %45 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %46 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i32 @get_modedb(%struct.fb_videomode** %10, i32* %11)
  %49 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 3
  %51 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %52 = load i32, i32* @mode_option, align 4
  %53 = load %struct.fb_videomode*, %struct.fb_videomode** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @fb_find_mode(i32* %50, %struct.fb_info* %51, i32 %52, %struct.fb_videomode* %53, i32 %54, i32* null, i32 16)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %67

61:                                               ; preds = %58, %47
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %100

67:                                               ; preds = %58
  %68 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memset_io(i64 %70, i32 0, i32 %74)
  %76 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 3
  %78 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %79 = call i32 @gxfb_check_var(i32* %77, %struct.fb_info* %78)
  %80 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %81 = call i32 @gxfb_set_par(%struct.fb_info* %80)
  %82 = load i32, i32* @vt_switch, align 4
  %83 = call i32 @pm_set_vt_switch(i32 %82)
  %84 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %85 = call i64 @register_framebuffer(%struct.fb_info* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %67
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %100

90:                                               ; preds = %67
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %93 = call i32 @pci_set_drvdata(%struct.pci_dev* %91, %struct.fb_info* %92)
  %94 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %95 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @fb_info(%struct.fb_info* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  store i32 0, i32* %3, align 4
  br label %155

100:                                              ; preds = %87, %61, %28
  %101 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @iounmap(i64 %108)
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = call i32 @pci_release_region(%struct.pci_dev* %110, i32 0)
  br label %112

112:                                              ; preds = %105, %100
  %113 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %114 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %119 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @iounmap(i64 %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = call i32 @pci_release_region(%struct.pci_dev* %122, i32 3)
  br label %124

124:                                              ; preds = %117, %112
  %125 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %126 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %131 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @iounmap(i64 %132)
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = call i32 @pci_release_region(%struct.pci_dev* %134, i32 2)
  br label %136

136:                                              ; preds = %129, %124
  %137 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %138 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %143 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @iounmap(i64 %144)
  %146 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %147 = call i32 @pci_release_region(%struct.pci_dev* %146, i32 1)
  br label %148

148:                                              ; preds = %141, %136
  %149 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %150 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %149, i32 0, i32 0
  %151 = call i32 @fb_dealloc_cmap(i32* %150)
  %152 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %153 = call i32 @framebuffer_release(%struct.fb_info* %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %148, %90, %17
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.fb_info* @gxfb_init_fbinfo(i32*) #1

declare dso_local i32 @gxfb_map_video_memory(%struct.fb_info*, %struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @get_modedb(%struct.fb_videomode**, i32*) #1

declare dso_local i32 @fb_find_mode(i32*, %struct.fb_info*, i32, %struct.fb_videomode*, i32, i32*, i32) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @gxfb_check_var(i32*, %struct.fb_info*) #1

declare dso_local i32 @gxfb_set_par(%struct.fb_info*) #1

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
