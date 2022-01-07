; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hitfb.c_hitfb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hitfb.c_hitfb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i16, i32, i8*, i32, i8* }
%struct.TYPE_11__ = type { i32, i16, i16, i16, i16, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.fb_info = type { i32, i32, %struct.TYPE_12__, i8*, i32, i32, %struct.TYPE_11__, i32* }

@.str = private unnamed_addr constant [6 x i8] c"hitfb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@hitfb_fix = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@HD64461_LCDCLOR = common dso_local global i32 0, align 4
@HD64461_LDVNDR = common dso_local global i32 0, align 4
@HD64461_LDR3 = common dso_local global i32 0, align 4
@hitfb_var = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hitfb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s frame buffer device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hitfb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hitfb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = call i64 @fb_get_options(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %132

14:                                               ; preds = %1
  %15 = call i8* @HD64461_IO_OFFSET(i32 4096)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hitfb_fix, i32 0, i32 6), align 8
  store i32 4096, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hitfb_fix, i32 0, i32 0), align 8
  %16 = call i8* @HD64461_IO_OFFSET(i32 33554432)
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hitfb_fix, i32 0, i32 4), align 8
  store i32 524288, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hitfb_fix, i32 0, i32 1), align 4
  %17 = load i32, i32* @HD64461_LCDCLOR, align 4
  %18 = call zeroext i16 @fb_readw(i32 %17)
  store i16 %18, i16* %4, align 2
  %19 = load i32, i32* @HD64461_LDVNDR, align 4
  %20 = call zeroext i16 @fb_readw(i32 %19)
  store i16 %20, i16* %6, align 2
  %21 = load i32, i32* @HD64461_LDR3, align 4
  %22 = call zeroext i16 @fb_readw(i32 %21)
  store i16 %22, i16* %5, align 2
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 15
  switch i32 %25, label %26 [
    i32 4, label %27
    i32 8, label %29
  ]

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %14, %26
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 0), align 4
  %28 = load i16, i16* %4, align 2
  store i16 %28, i16* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 1), align 4
  br label %34

29:                                               ; preds = %14
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 0), align 4
  %30 = load i16, i16* %4, align 2
  %31 = zext i16 %30 to i32
  %32 = sdiv i32 %31, 2
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 1), align 4
  br label %34

34:                                               ; preds = %29, %27
  %35 = load i16, i16* %4, align 2
  store i16 %35, i16* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hitfb_fix, i32 0, i32 2), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 0), align 4
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hitfb_fix, i32 0, i32 5), align 8
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 2), align 2
  %48 = load i16, i16* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 1), align 4
  store i16 %48, i16* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 3), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hitfb_fix, i32 0, i32 1), align 4
  %50 = load i16, i16* %4, align 2
  %51 = zext i16 %50 to i32
  %52 = sdiv i32 %49, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 4), align 2
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 0), align 4
  switch i32 %54, label %57 [
    i32 8, label %55
    i32 16, label %56
  ]

55:                                               ; preds = %42
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 8, i32 0), align 4
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 8, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 7, i32 0), align 4
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 7, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 6, i32 1), align 4
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 6, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 5, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 5, i32 0), align 4
  br label %57

56:                                               ; preds = %42
  store i32 11, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 8, i32 0), align 4
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 8, i32 1), align 4
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 7, i32 0), align 4
  store i32 6, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 7, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 6, i32 1), align 4
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 6, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 5, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @hitfb_var, i32 0, i32 5, i32 0), align 4
  br label %57

57:                                               ; preds = %42, %56, %55
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call %struct.fb_info* @framebuffer_alloc(i32 64, i32* %59)
  store %struct.fb_info* %60, %struct.fb_info** %7, align 8
  %61 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %62 = icmp ne %struct.fb_info* %61, null
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %132

70:                                               ; preds = %57
  %71 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 7
  store i32* @hitfb_ops, i32** %72, align 8
  %73 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 6
  %75 = bitcast %struct.TYPE_11__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 4 bitcast (%struct.TYPE_11__* @hitfb_var to i8*), i64 44, i1 false)
  %76 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 2
  %78 = bitcast %struct.TYPE_12__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 bitcast (%struct.TYPE_12__* @hitfb_fix to i8*), i64 40, i1 false)
  %79 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @FBINFO_DEFAULT, align 4
  %85 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hitfb_fix, i32 0, i32 4), align 8
  %94 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 1
  %98 = call i32 @fb_alloc_cmap(i32* %97, i32 256, i32 0)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %70
  br label %128

105:                                              ; preds = %70
  %106 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %107 = call i32 @register_framebuffer(%struct.fb_info* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %124

114:                                              ; preds = %105
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %117 = call i32 @platform_set_drvdata(%struct.platform_device* %115, %struct.fb_info* %116)
  %118 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %119 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @fb_info(%struct.fb_info* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  store i32 0, i32* %2, align 4
  br label %132

124:                                              ; preds = %113
  %125 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 1
  %127 = call i32 @fb_dealloc_cmap(i32* %126)
  br label %128

128:                                              ; preds = %124, %104
  %129 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %130 = call i32 @framebuffer_release(%struct.fb_info* %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %128, %114, %67, %11
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @fb_get_options(i8*, i32*) #1

declare dso_local i8* @HD64461_IO_OFFSET(i32) #1

declare dso_local zeroext i16 @fb_readw(i32) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fb_info*) #1

declare dso_local i32 @fb_info(%struct.fb_info*, i8*, i32) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
