; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cobalt_lcdfb.c_cobalt_lcdfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cobalt_lcdfb.c_cobalt_lcdfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.fb_info = type { i32, i32*, i32*, i32, %struct.TYPE_2__, i32*, i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@cobalt_lcd_fbops = common dso_local global i32 0, align 4
@cobalt_lcdfb_fix = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cobalt server LCD frame buffer device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cobalt_lcdfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_lcdfb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.fb_info* @framebuffer_alloc(i32 0, i32* %8)
  store %struct.fb_info* %9, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = icmp ne %struct.fb_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %92

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = icmp ne %struct.resource* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = call i32 @framebuffer_release(%struct.fb_info* %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %92

26:                                               ; preds = %15
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = call i32 @resource_size(%struct.resource* %27)
  %29 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @devm_ioremap(i32* %32, i32 %35, i32 %38)
  %40 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %26
  %47 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %48 = call i32 @framebuffer_release(%struct.fb_info* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %92

51:                                               ; preds = %26
  %52 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 5
  store i32* @cobalt_lcd_fbops, i32** %53, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 4
  %56 = bitcast %struct.TYPE_2__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 bitcast (%struct.TYPE_2__* @cobalt_lcdfb_fix to i8*), i64 8, i1 false)
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* @FBINFO_DEFAULT, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %77 = call i32 @register_framebuffer(%struct.fb_info* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %51
  %81 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %82 = call i32 @framebuffer_release(%struct.fb_info* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %92

84:                                               ; preds = %51
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.fb_info* %86)
  %88 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %89 = call i32 @lcd_clear(%struct.fb_info* %88)
  %90 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %91 = call i32 @fb_info(%struct.fb_info* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %84, %80, %46, %21, %12
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fb_info*) #1

declare dso_local i32 @lcd_clear(%struct.fb_info*) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
