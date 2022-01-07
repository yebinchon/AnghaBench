; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gx1fb_core.c_gx1fb_map_video_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gx1fb_core.c_gx1fb_map_video_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i8*, %struct.geodefb_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.geodefb_par = type { i8*, i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"gx1fb (video)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"gx1fb (display controller)\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%d Kibyte of video memory at 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.pci_dev*)* @gx1fb_map_video_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx1fb_map_video_memory(%struct.fb_info* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.geodefb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.geodefb_par*, %struct.geodefb_par** %11, align 8
  store %struct.geodefb_par* %12, %struct.geodefb_par** %6, align 8
  %13 = call i32 (...) @gx1_gx_base()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %113

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @pci_enable_device(%struct.pci_dev* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %113

26:                                               ; preds = %19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call i32 @pci_request_region(%struct.pci_dev* %27, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %113

33:                                               ; preds = %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = call i32 @pci_ioremap_bar(%struct.pci_dev* %34, i32 0)
  %36 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %37 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %39 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %113

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 33536
  %48 = call i32 @request_mem_region(i32 %47, i32 256, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %113

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 33536
  %56 = call i8* @ioremap(i32 %55, i32 256)
  %57 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %58 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.geodefb_par*, %struct.geodefb_par** %6, align 8
  %60 = getelementptr inbounds %struct.geodefb_par, %struct.geodefb_par* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %113

66:                                               ; preds = %53
  %67 = call i32 (...) @gx1_frame_buffer_size()
  store i32 %67, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %113

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 8388608
  %75 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @ioremap(i32 %85, i32 %89)
  %91 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %72
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %113

100:                                              ; preds = %72
  %101 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %106, 1024
  %108 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @dev_info(i32* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %100, %97, %69, %63, %50, %42, %31, %24, %16
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @gx1_gx_base(...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @gx1_frame_buffer_size(...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
