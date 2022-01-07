; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_core.c_lxfb_map_video_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_lxfb_core.c_lxfb_map_video_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i32*, %struct.lxfb_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lxfb_par = type { i32*, i32*, i32* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"lxfb-framebuffer\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"lxfb-gp\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"lxfb-vg\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"lxfb-vp\00", align 1
@vram = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DC_UNLOCK = common dso_local global i32 0, align 4
@DC_UNLOCK_UNLOCK = common dso_local global i32 0, align 4
@DC_GLIU0_MEM_OFFSET = common dso_local global i32 0, align 4
@DC_UNLOCK_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%d KB of video memory at 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.pci_dev*)* @lxfb_map_video_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lxfb_map_video_memory(%struct.fb_info* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.lxfb_par*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.lxfb_par*, %struct.lxfb_par** %9, align 8
  store %struct.lxfb_par* %10, %struct.lxfb_par** %6, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %146

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i32 @pci_request_region(%struct.pci_dev* %18, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %146

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = call i32 @pci_request_region(%struct.pci_dev* %25, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %146

31:                                               ; preds = %24
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = call i32 @pci_request_region(%struct.pci_dev* %32, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %146

38:                                               ; preds = %31
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = call i32 @pci_request_region(%struct.pci_dev* %39, i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %146

45:                                               ; preds = %38
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = call i32 @pci_resource_start(%struct.pci_dev* %46, i32 0)
  %48 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @vram, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @vram, align 4
  br label %57

55:                                               ; preds = %45
  %56 = call i32 (...) @lx_framebuffer_size()
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @ioremap(i32 %65, i32 %69)
  %71 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %146

81:                                               ; preds = %57
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = call i8* @pci_ioremap_bar(%struct.pci_dev* %82, i32 1)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %86 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  %87 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %88 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %146

93:                                               ; preds = %81
  %94 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %95 = call i8* @pci_ioremap_bar(%struct.pci_dev* %94, i32 2)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %98 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %100 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %146

105:                                              ; preds = %93
  %106 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %107 = call i8* @pci_ioremap_bar(%struct.pci_dev* %106, i32 3)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %110 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %109, i32 0, i32 0
  store i32* %108, i32** %110, align 8
  %111 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %112 = getelementptr inbounds %struct.lxfb_par, %struct.lxfb_par* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %3, align 4
  br label %146

117:                                              ; preds = %105
  %118 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %119 = load i32, i32* @DC_UNLOCK, align 4
  %120 = load i32, i32* @DC_UNLOCK_UNLOCK, align 4
  %121 = call i32 @write_dc(%struct.lxfb_par* %118, i32 %119, i32 %120)
  %122 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %123 = load i32, i32* @DC_GLIU0_MEM_OFFSET, align 4
  %124 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, -16777216
  %129 = call i32 @write_dc(%struct.lxfb_par* %122, i32 %123, i32 %128)
  %130 = load %struct.lxfb_par*, %struct.lxfb_par** %6, align 8
  %131 = load i32, i32* @DC_UNLOCK, align 4
  %132 = load i32, i32* @DC_UNLOCK_LOCK, align 4
  %133 = call i32 @write_dc(%struct.lxfb_par* %130, i32 %131, i32 %132)
  %134 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %139, 1024
  %141 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dev_info(i32* %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %140, i32 %144)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %117, %115, %103, %91, %79, %43, %36, %29, %22, %15
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @lx_framebuffer_size(...) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @write_dc(%struct.lxfb_par*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
