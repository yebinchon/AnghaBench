; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_asiliantfb_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_asiliantfb.c_asiliantfb_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.fb_info = type { i32*, i32*, i32* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"asiliantfb\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @asiliantfb_pci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asiliantfb_pci_init(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i64 @pci_resource_start(%struct.pci_dev* %23, i32 0)
  store i64 %24, i64* %6, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = call i64 @pci_resource_len(%struct.pci_dev* %25, i32 0)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %104

32:                                               ; preds = %22
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @request_mem_region(i64 %33, i64 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %104

40:                                               ; preds = %32
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call %struct.fb_info* @framebuffer_alloc(i32 64, i32* %42)
  store %struct.fb_info* %43, %struct.fb_info** %8, align 8
  %44 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %45 = icmp ne %struct.fb_info* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @release_mem_region(i64 %47, i64 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %40
  %53 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  %58 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32* @ioremap(i64 %60, i32 8388608)
  %62 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %65 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %52
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @release_mem_region(i64 %69, i64 %70)
  %72 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %73 = call i32 @framebuffer_release(%struct.fb_info* %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %104

76:                                               ; preds = %52
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i32 @pci_write_config_dword(%struct.pci_dev* %77, i32 4, i32 41943171)
  %79 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4196228
  %83 = call i32 @writeb(i32 3, i32* %82)
  %84 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @init_asiliant(%struct.fb_info* %84, i64 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %76
  %90 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @iounmap(i32* %92)
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @release_mem_region(i64 %94, i64 %95)
  %97 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %98 = call i32 @framebuffer_release(%struct.fb_info* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %104

100:                                              ; preds = %76
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %103 = call i32 @pci_set_drvdata(%struct.pci_dev* %101, %struct.fb_info* %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %89, %68, %46, %37, %29, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_mem_region(i64, i64, i8*) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @init_asiliant(%struct.fb_info*, i64) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
