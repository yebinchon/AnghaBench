; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_memory_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_memory_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_memory_read = type { i32, i32, i32, i32, i32, i32 }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*, i8*, i32, i32, i32, i32, i32)* }

@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vmalloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_memory_read*)* @omapfb_memory_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_memory_read(%struct.fb_info* %0, %struct.omapfb_memory_read* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.omapfb_memory_read*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.omapfb_memory_read* %1, %struct.omapfb_memory_read** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %9)
  store %struct.omap_dss_device* %10, %struct.omap_dss_device** %6, align 8
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %12 = icmp ne %struct.omap_dss_device* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.omap_dss_device*, i8*, i32, i32, i32, i32, i32)*, i32 (%struct.omap_dss_device*, i8*, i32, i32, i32, i32, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.omap_dss_device*, i8*, i32, i32, i32, i32, i32)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %2
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %117

23:                                               ; preds = %13
  %24 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %25 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %28 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @access_ok(i32 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %117

35:                                               ; preds = %23
  %36 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %37 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 4096
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %42 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 4096
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %117

48:                                               ; preds = %40
  %49 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %50 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %53 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = mul nsw i32 %55, 3
  %57 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %58 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %117

64:                                               ; preds = %48
  %65 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %66 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @vmalloc(i32 %67)
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %117

75:                                               ; preds = %64
  %76 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %77 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.omap_dss_device*, i8*, i32, i32, i32, i32, i32)*, i32 (%struct.omap_dss_device*, i8*, i32, i32, i32, i32, i32)** %79, align 8
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %84 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %87 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %90 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %93 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %96 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 %80(%struct.omap_dss_device* %81, i8* %82, i32 %85, i32 %88, i32 %91, i32 %94, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %75
  %102 = load %struct.omapfb_memory_read*, %struct.omapfb_memory_read** %5, align 8
  %103 = getelementptr inbounds %struct.omapfb_memory_read, %struct.omapfb_memory_read* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @copy_to_user(i32 %104, i8* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @EFAULT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %109, %101
  br label %113

113:                                              ; preds = %112, %75
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @vfree(i8* %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %71, %61, %45, %32, %20
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local i32 @access_ok(i32, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i64 @copy_to_user(i32, i8*, i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
