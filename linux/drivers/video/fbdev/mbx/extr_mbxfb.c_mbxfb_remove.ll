; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_mbxfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mbx/extr_mbxfb.c_mbxfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fb_info = type { %struct.mbxfb_info* }
%struct.mbxfb_info = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32 (%struct.fb_info.0*)* }
%struct.TYPE_2__ = type { i32 }
%struct.fb_info.0 = type opaque

@SYSRST_RST = common dso_local global i32 0, align 4
@SYSRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mbxfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbxfb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.mbxfb_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load i32, i32* @SYSRST_RST, align 4
  %8 = load i32, i32* @SYSRST, align 4
  %9 = call i32 @write_reg_dly(i32 %7, i32 %8)
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = call i32 @mbxfb_debugfs_remove(%struct.fb_info* %10)
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = icmp ne %struct.fb_info* %12, null
  br i1 %13, label %14, label %70

14:                                               ; preds = %1
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = load %struct.mbxfb_info*, %struct.mbxfb_info** %16, align 8
  store %struct.mbxfb_info* %17, %struct.mbxfb_info** %4, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = call i32 @unregister_framebuffer(%struct.fb_info* %18)
  %20 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %21 = icmp ne %struct.mbxfb_info* %20, null
  br i1 %21, label %22, label %67

22:                                               ; preds = %14
  %23 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %24 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %23, i32 0, i32 2
  %25 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %24, align 8
  %26 = icmp ne i32 (%struct.fb_info.0*)* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %29 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %28, i32 0, i32 2
  %30 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %29, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = bitcast %struct.fb_info* %31 to %struct.fb_info.0*
  %33 = call i32 %30(%struct.fb_info.0* %32)
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %36 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %41 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %46 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i32 @res_size(%struct.TYPE_2__* %47)
  %49 = call i32 @release_mem_region(i32 %44, i32 %48)
  br label %50

50:                                               ; preds = %39, %34
  %51 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %52 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = icmp ne %struct.TYPE_2__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %57 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mbxfb_info*, %struct.mbxfb_info** %4, align 8
  %62 = getelementptr inbounds %struct.mbxfb_info, %struct.mbxfb_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @res_size(%struct.TYPE_2__* %63)
  %65 = call i32 @release_mem_region(i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %55, %50
  br label %67

67:                                               ; preds = %66, %14
  %68 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %69 = call i32 @framebuffer_release(%struct.fb_info* %68)
  br label %70

70:                                               ; preds = %67, %1
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @write_reg_dly(i32, i32) #1

declare dso_local i32 @mbxfb_debugfs_remove(%struct.fb_info*) #1

declare dso_local i32 @unregister_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @res_size(%struct.TYPE_2__*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
