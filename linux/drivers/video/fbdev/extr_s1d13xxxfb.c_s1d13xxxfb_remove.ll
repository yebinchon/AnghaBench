; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_s1d13xxxfb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s1d13xxxfb.c_s1d13xxxfb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.fb_info = type { i64, i32, %struct.s1d13xxxfb_par* }
%struct.s1d13xxxfb_par = type { i64 }

@S1DREG_COM_DISP_MODE = common dso_local global i32 0, align 4
@S1DREG_PS_CNF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s1d13xxxfb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s1d13xxxfb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.s1d13xxxfb_par*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  store %struct.s1d13xxxfb_par* null, %struct.s1d13xxxfb_par** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = icmp ne %struct.fb_info* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %11, align 8
  store %struct.s1d13xxxfb_par* %12, %struct.s1d13xxxfb_par** %4, align 8
  %13 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %14 = icmp ne %struct.s1d13xxxfb_par* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %17 = getelementptr inbounds %struct.s1d13xxxfb_par, %struct.s1d13xxxfb_par* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %22 = load i32, i32* @S1DREG_COM_DISP_MODE, align 4
  %23 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %21, i32 %22, i32 0)
  %24 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %25 = load i32, i32* @S1DREG_PS_CNF, align 4
  %26 = call i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par* %24, i32 %25, i32 17)
  %27 = load %struct.s1d13xxxfb_par*, %struct.s1d13xxxfb_par** %4, align 8
  %28 = getelementptr inbounds %struct.s1d13xxxfb_par, %struct.s1d13xxxfb_par* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iounmap(i64 %29)
  br label %31

31:                                               ; preds = %20, %15, %9
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = call i32 @fb_dealloc_cmap(i32* %33)
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @iounmap(i64 %42)
  br label %44

44:                                               ; preds = %39, %31
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = call i32 @framebuffer_release(%struct.fb_info* %45)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %59, %65
  %67 = add nsw i64 %66, 1
  %68 = call i32 @release_mem_region(i64 %53, i64 %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %80, %86
  %88 = add nsw i64 %87, 1
  %89 = call i32 @release_mem_region(i64 %74, i64 %88)
  ret i32 0
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @s1d13xxxfb_writereg(%struct.s1d13xxxfb_par*, i32, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
