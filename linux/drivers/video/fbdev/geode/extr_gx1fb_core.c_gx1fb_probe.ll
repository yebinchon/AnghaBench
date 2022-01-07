; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gx1fb_core.c_gx1fb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gx1fb_core.c_gx1fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.geodefb_par = type { i64, i64, i32*, i32* }
%struct.fb_info = type { i32, i64, %struct.TYPE_2__, i32, %struct.geodefb_par* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@gx1_dc_ops = common dso_local global i32 0, align 4
@cs5530_vid_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"failed to map frame buffer or controller registers\0A\00", align 1
@mode_option = common dso_local global i32 0, align 4
@gx1_modedb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not find valid video mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s frame buffer device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @gx1fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx1fb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.geodefb_par*, align 8
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call %struct.fb_info* @gx1fb_init_fbinfo(i32* %10)
  store %struct.fb_info* %11, %struct.fb_info** %7, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %13 = icmp ne %struct.fb_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %128

17:                                               ; preds = %2
  %18 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 4
  %20 = load %struct.geodefb_par*, %struct.geodefb_par** %19, align 8
  store %struct.geodefb_par* %20, %struct.geodefb_par** %6, align 8
  %21 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %22 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %21, i32 0, i32 3
  store i32* @gx1_dc_ops, i32** %22, align 8
  %23 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %24 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %23, i32 0, i32 2
  store i32* @cs5530_vid_ops, i32** %24, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @gx1fb_map_video_memory(%struct.fb_info* %25, %struct.pci_dev* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %84

33:                                               ; preds = %17
  %34 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 3
  %36 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %37 = load i32, i32* @mode_option, align 4
  %38 = load i32, i32* @gx1_modedb, align 4
  %39 = load i32, i32* @gx1_modedb, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @fb_find_mode(i32* %35, %struct.fb_info* %36, i32 %37, i32 %38, i32 %40, i32* null, i32 16)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %53

47:                                               ; preds = %44, %33
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %84

53:                                               ; preds = %44
  %54 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset_io(i64 %56, i32 0, i32 %60)
  %62 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 3
  %64 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %65 = call i32 @gx1fb_check_var(i32* %63, %struct.fb_info* %64)
  %66 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %67 = call i32 @gx1fb_set_par(%struct.fb_info* %66)
  %68 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %69 = call i64 @register_framebuffer(%struct.fb_info* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %53
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %84

74:                                               ; preds = %53
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %77 = call i32 @pci_set_drvdata(%struct.pci_dev* %75, %struct.fb_info* %76)
  %78 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %79 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fb_info(%struct.fb_info* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  store i32 0, i32* %3, align 4
  br label %128

84:                                               ; preds = %71, %47, %29
  %85 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @iounmap(i64 %92)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = call i32 @pci_release_region(%struct.pci_dev* %94, i32 0)
  br label %96

96:                                               ; preds = %89, %84
  %97 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %98 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %103 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @iounmap(i64 %104)
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = call i32 @pci_release_region(%struct.pci_dev* %106, i32 1)
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %110 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %115 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @iounmap(i64 %116)
  %118 = call i64 (...) @gx1_gx_base()
  %119 = add nsw i64 %118, 33536
  %120 = call i32 @release_mem_region(i64 %119, i32 256)
  br label %121

121:                                              ; preds = %113, %108
  %122 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %123 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %122, i32 0, i32 0
  %124 = call i32 @fb_dealloc_cmap(i32* %123)
  %125 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %126 = call i32 @framebuffer_release(%struct.fb_info* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %74, %14
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.fb_info* @gx1fb_init_fbinfo(i32*) #1

declare dso_local i32 @gx1fb_map_video_memory(%struct.fb_info*, %struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @fb_find_mode(i32*, %struct.fb_info*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @gx1fb_check_var(i32*, %struct.fb_info*) #1

declare dso_local i32 @gx1fb_set_par(%struct.fb_info*) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fb_info*) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i64 @gx1_gx_base(...) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
