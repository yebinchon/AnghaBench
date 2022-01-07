; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gxfb_core.c_gxfb_map_video_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gxfb_core.c_gxfb_map_video_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i32, %struct.gxfb_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gxfb_par = type { i8*, i8*, i8* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"gxfb (video processor)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"gxfb (display controller)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gxfb (graphics processor)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gxfb (framebuffer)\00", align 1
@vram = common dso_local global i32 0, align 4
@DC_GLIU0_MEM_OFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%d KiB of video memory at 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.pci_dev*)* @gxfb_map_video_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxfb_map_video_memory(%struct.fb_info* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.gxfb_par*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.gxfb_par*, %struct.gxfb_par** %9, align 8
  store %struct.gxfb_par* %10, %struct.gxfb_par** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %137

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i32 @pci_request_region(%struct.pci_dev* %18, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %137

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = call i8* @pci_ioremap_bar(%struct.pci_dev* %25, i32 3)
  %27 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %28 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %30 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %137

36:                                               ; preds = %24
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = call i32 @pci_request_region(%struct.pci_dev* %37, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %137

43:                                               ; preds = %36
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = call i8* @pci_ioremap_bar(%struct.pci_dev* %44, i32 2)
  %46 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %47 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %49 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %137

55:                                               ; preds = %43
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = call i32 @pci_request_region(%struct.pci_dev* %56, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %137

62:                                               ; preds = %55
  %63 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %64 = call i8* @pci_ioremap_bar(%struct.pci_dev* %63, i32 1)
  %65 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %66 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %68 = getelementptr inbounds %struct.gxfb_par, %struct.gxfb_par* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %137

74:                                               ; preds = %62
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = call i32 @pci_request_region(%struct.pci_dev* %75, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %137

81:                                               ; preds = %74
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = call i32 @pci_resource_start(%struct.pci_dev* %82, i32 0)
  %84 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @vram, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @vram, align 4
  br label %93

91:                                               ; preds = %81
  %92 = call i32 (...) @gx_frame_buffer_size()
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ioremap_wc(i32 %101, i32 %105)
  %107 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %93
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %137

116:                                              ; preds = %93
  %117 = load %struct.gxfb_par*, %struct.gxfb_par** %6, align 8
  %118 = load i32, i32* @DC_GLIU0_MEM_OFFSET, align 4
  %119 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, -16777216
  %124 = call i32 @write_dc(%struct.gxfb_par* %117, i32 %118, i32 %123)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 0
  %127 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %130, 1024
  %132 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dev_info(i32* %126, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %131, i32 %135)
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %116, %113, %79, %71, %60, %52, %41, %33, %22, %15
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @gx_frame_buffer_size(...) #1

declare dso_local i32 @ioremap_wc(i32, i32) #1

declare dso_local i32 @write_dc(%struct.gxfb_par*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
