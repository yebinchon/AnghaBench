; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_skeletonfb.c_xxxfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_skeletonfb.c_xxxfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.fb_info = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i32, i32*, i32, %struct.xxx_par* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.xxx_par = type { i32 }

@framebuffer_virtual_memory = common dso_local global i32 0, align 4
@xxxfb_ops = common dso_local global i32 0, align 4
@xxxfb_fix = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@pseudo_palette = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@PIXMAP_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FB_PIXMAP_SYSTEM = common dso_local global i32 0, align 4
@mode_option = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"640x480@60\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xxxfb_var = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s frame buffer device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @xxxfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xxxfb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.xxx_par*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = call %struct.fb_info* @framebuffer_alloc(i32 4, %struct.device* %13)
  store %struct.fb_info* %14, %struct.fb_info** %6, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %16 = icmp ne %struct.fb_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %2
  %19 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 8
  %21 = load %struct.xxx_par*, %struct.xxx_par** %20, align 8
  store %struct.xxx_par* %21, %struct.xxx_par** %7, align 8
  %22 = load i32, i32* @framebuffer_virtual_memory, align 4
  %23 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 6
  store i32* @xxxfb_ops, i32** %26, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_4__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 bitcast (%struct.TYPE_4__* @xxxfb_fix to i8*), i64 4, i1 false)
  %30 = load i32, i32* @pseudo_palette, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @FBINFO_DEFAULT, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @PIXMAP_SIZE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kmalloc(i32 %36, i32 %37)
  %39 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store i32 %38, i32* %41, align 4
  %42 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* @PIXMAP_SIZE, align 4
  %50 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @FB_PIXMAP_SYSTEM, align 4
  %54 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 4, i32* %59, align 4
  %60 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 4, i32* %62, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 32, i32* %65, align 4
  %66 = load i8*, i8** @mode_option, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %48
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** @mode_option, align 8
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 2
  %72 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %73 = load i8*, i8** @mode_option, align 8
  %74 = call i32 @fb_find_mode(i32* %71, %struct.fb_info* %72, i8* %73, i32* null, i32 0, i32* null, i32 8)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %69
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %119

83:                                               ; preds = %77
  %84 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 1
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @fb_alloc_cmap(i32* %85, i32 %86, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %119

92:                                               ; preds = %83
  %93 = load i32, i32* @xxxfb_var, align 4
  %94 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 2
  %98 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %99 = call i32 @xxxfb_check_var(i32* %97, %struct.fb_info* %98)
  %100 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %101 = call i64 @register_framebuffer(%struct.fb_info* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 1
  %106 = call i32 @fb_dealloc_cmap(i32* %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %119

109:                                              ; preds = %92
  %110 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %111 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @fb_info(%struct.fb_info* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %118 = call i32 @pci_set_drvdata(%struct.pci_dev* %116, %struct.fb_info* %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %109, %103, %89, %80
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @fb_find_mode(i32*, %struct.fb_info*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @xxxfb_check_var(i32*, %struct.fb_info*) #1

declare dso_local i64 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
